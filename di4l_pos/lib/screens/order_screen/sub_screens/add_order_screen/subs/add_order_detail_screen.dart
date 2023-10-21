import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:di4l_pos/common/dimensions.dart';
import 'package:di4l_pos/common/global_styles.dart';
import 'package:di4l_pos/models/products/response/variation.dart';
import 'package:di4l_pos/screens/order_screen/sub_screens/add_order_screen/Cubit/add_order_cubit.dart';
import 'package:di4l_pos/widgets/search_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../../../../common/global_colors.dart';
import '../../../../../common/global_formatter.dart';
import '../../../../../models/contacts/response/contacts_response.dart';
import '../../../../../models/products/response/product_response.dart';
import '../../../../../models/sell/request/add_sell_request.dart';
import '../../../../../widgets/custom_appbar.dart';
import '../../../../../widgets/custom_button/custom_button.dart';
import '../../../../../widgets/custom_textfield.dart';
import '../../../../../widgets/error_image_widget.dart';
import '../../../../business_screen/cubit/business_cubit.dart';
import '../../../../contacts_screen/customers_screen/cubit/customers_cubit.dart';

class AddOrderDetailScreen extends StatefulWidget {
  AddOrderDetailScreen({Key? key, this.productsSelected}) : super(key: key);
  static MultiBlocProvider provider(List<Product>? productsSelected) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AddOrderCubit>(
          create: (BuildContext context) => AddOrderCubit(),
        ),
        BlocProvider<CustomersCubit>(
          create: (BuildContext context) => CustomersCubit(),
        ),
        BlocProvider<BusinessCubit>(
          create: (BuildContext context) => BusinessCubit(),
        ),
      ],
      child: AddOrderDetailScreen(productsSelected: productsSelected),
    );
  }

  List<Product>? productsSelected;
  @override
  State<AddOrderDetailScreen> createState() => _AddOrderDetailScreenState();
}

final List<TextEditingController?> _txtsContrller = [];
final List<FocusNode?> _foucusContrller = [];
ContactModel? contactModel;
GlobalKey _globalKey = GlobalKey();

class _AddOrderDetailScreenState extends State<AddOrderDetailScreen> {
  var textSearch = TextEditingController();
  bool isSearch = false;
  @override
  void initState() {
    WidgetsBinding.instance.endOfFrame.then((value) async {
      context.read<BusinessCubit>().getBusinesss().then((value) {
        if (value != null) {
          context.read<AddOrderCubit>().setBusinessID(value.id);
        }
      });

      context
          .read<AddOrderCubit>()
          .setProductSSelectAll(widget.productsSelected!);
      context.read<CustomersCubit>().getContacts();
      textSearch.addListener(() {
        context
            .read<CustomersCubit>()
            .searchCustomer(searchText: textSearch.text);
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: Padding(
        padding: const EdgeInsets.all(Dimensions.PADDING_SIZE_DEFAULT),
        child: SizedBox(
          height: Get.height * 0.08,
          width: Get.width,
          child: CustomButton(
            type: ButtonType.BUTTON_TEXT,
            color: GlobalColors.primaryColor,
            style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: Dimensions.FONT_SIZE_LARGE),
            borderColor: GlobalColors.primaryColor,
            onPressed: () async {
              _globalKey.currentContext!.read<AddOrderCubit>().addOrder();
            },
            label: 'save'.tr,
          ),
        ),
      ),
      key: _globalKey,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: CustomAppBar(
          backgroundColor: Colors.white,
          textColor: GlobalColors.getTextTitle(context),
          title: 'orders'.tr,
          actions: const [],
        ),
      ),
      body: SingleChildScrollView(
        physics: const ScrollPhysics(),
        child: BlocBuilder<AddOrderCubit, AddOrderState>(
          builder: (context, state) {
            return Column(
              children: [
                const SizedBox(
                  height: Dimensions.PADDING_SIZE_EXTRA_SMALL,
                ),
                _shippingMethod(state.data!.shippingMethod, (p0) {
                  _globalKey.currentContext!
                      .read<AddOrderCubit>()
                      .setShippingMethod(p0!);
                }),
                const SizedBox(
                  height: Dimensions.PADDING_SIZE_EXTRA_SMALL,
                ),
                Container(
                  color: GlobalColors.whiteColor,
                  child: Padding(
                    padding: const EdgeInsets.all(
                        Dimensions.PADDING_SIZE_EXTRA_EXTRA_SMALL),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        InkWell(
                          onTap: () =>
                              navigator!.pop(state.data!.productsSelected),
                          child: Row(
                            children: [
                              const Icon(
                                Icons.add,
                                color: Colors.blueAccent,
                              ),
                              const SizedBox(
                                width: Dimensions.PADDING_SIZE_SMALL,
                              ),
                              Text(
                                'add_product'.tr,
                                style: GlobalStyles.normalStyle
                                    .copyWith(color: Colors.blueAccent),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: Dimensions.PADDING_SIZE_EXTRA_SMALL,
                        )
                      ],
                    ),
                  ),
                ),
                Column(
                  children: [
                    const Divider(
                      height: 2,
                    ),
                    Container(
                      color: GlobalColors.whiteColor,
                      child: Padding(
                          padding: const EdgeInsets.fromLTRB(
                              Dimensions.FONT_SIZE_DEFAULT,
                              0,
                              Dimensions.FONT_SIZE_DEFAULT,
                              0),
                          child: ListView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              _txtsContrller.add(TextEditingController());
                              _foucusContrller.add(FocusNode());
                              if (state.data!.productsSelected.isNotEmpty) {
                                _txtsContrller.elementAt(index)!.text = state
                                    .data!.productsSelected
                                    .elementAt(index)
                                    .variantsSelect
                                    .first
                                    .count
                                    .toString();
                              }

                              return _productItem(
                                  state.data!.products.elementAt(index),
                                  context,
                                  index);
                            },
                            itemCount: state.data!.products.length,
                          )),
                    ),
                    const SizedBox(
                      height: Dimensions.PADDING_SIZE_EXTRA_SMALL,
                    ),
                    Container(
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(
                              Dimensions.PADDING_SIZE_DEFAULT,
                              Dimensions.PADDING_SIZE_SMALL,
                              Dimensions.PADDING_SIZE_DEFAULT,
                              Dimensions.PADDING_SIZE_DEFAULT),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'customer'.tr,
                                style: GlobalStyles.boldStyle,
                              ),
                              SearchWidget(
                                onSubmitted: (p0) => setState(() {
                                  isSearch = false;
                                }),
                                onTap: () => setState(() {
                                  isSearch = true;
                                }),
                                controller: textSearch,
                                hintText: "Nhập tên khách hàng",
                              ),
                              state.data!.customerSelect != null
                                  ? ListTile(
                                      leading: IconButton(
                                        icon: const Icon(Icons.remove),
                                        onPressed: () {
                                          _globalKey.currentContext!
                                              .read<AddOrderCubit>()
                                              .setCustomerSelect(null);
                                        },
                                      ),
                                      title: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(state
                                              .data!.customerSelect!.name!),
                                          Text(state
                                              .data!.customerSelect!.mobile!)
                                          //Text(contactModel!.landline!)
                                        ],
                                      ),
                                    )
                                  : const SizedBox()
                            ],
                          ),
                        )),
                    const SizedBox(
                      height: Dimensions.PADDING_SIZE_EXTRA_SMALL,
                    ),
                    Stack(
                      children: [
                        Container(
                            color: GlobalColors.whiteColor,
                            child: Padding(
                                padding: const EdgeInsets.fromLTRB(
                                    Dimensions.FONT_SIZE_DEFAULT,
                                    0,
                                    Dimensions.FONT_SIZE_DEFAULT,
                                    0),
                                child: Padding(
                                  padding: const EdgeInsets.all(
                                      Dimensions.PADDING_SIZE_DEFAULT),
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        width: Get.width,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                                'Tổng ${state.data!.countProductSelect} sản phẩm'),
                                            Text(
                                              GlobalFormatter.formatCurrency(
                                                double.parse(state
                                                    .data!.totalAmount
                                                    .toString()),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 8,
                                      ),
                                      SizedBox(
                                        width: Get.width,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            const Text('Phí vận chuyển'),
                                            InkWell(
                                              child: Row(
                                                children: [
                                                  Text(
                                                    "+${GlobalFormatter.formatCurrency(state.data!.shipping)}",
                                                    style: GlobalStyles
                                                        .normalStyle
                                                        .copyWith(
                                                            color: Colors
                                                                .blueAccent),
                                                  ),
                                                  const SizedBox(
                                                    width: 4,
                                                  ),
                                                  const Icon(Icons.edit,
                                                      size: 15,
                                                      color: Colors.blueAccent),
                                                ],
                                              ),
                                              onTap: () {
                                                showModalBottomSheet(
                                                    shape: const RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius.vertical(
                                                                top: Radius
                                                                    .circular(
                                                                        15.0))),
                                                    context: context,
                                                    isScrollControlled: true,
                                                    isDismissible: true,
                                                    builder: (context) =>
                                                        DiaglogInOrder(
                                                          title: "shipping".tr,
                                                        ));
                                              },
                                            )
                                          ],
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 8,
                                      ),
                                      SizedBox(
                                        width: Get.width,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            const Text('Chiết khấu'),
                                            InkWell(
                                              onTap: () {
                                                showModalBottomSheet(
                                                    shape: const RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius.vertical(
                                                                top: Radius
                                                                    .circular(
                                                                        15.0))),
                                                    context: context,
                                                    isScrollControlled: true,
                                                    isDismissible: true,
                                                    builder: (context) =>
                                                        DiaglogInOrder(
                                                          title: "discount".tr,
                                                          sumMoney:
                                                              double.parse(state
                                                                  .data!
                                                                  .totalAmount
                                                                  .toString()),
                                                          dropValue: state.data!
                                                              .discountType,
                                                          onChangeDrop: (p0) {
                                                            _globalKey
                                                                .currentContext!
                                                                .read<
                                                                    AddOrderCubit>()
                                                                .setDiscountType(
                                                                    p0!);
                                                          },
                                                        ));
                                              },
                                              child: Row(
                                                children: [
                                                  Text(
                                                    "-${GlobalFormatter.formatCurrency(state.data!.discount)}",
                                                    style: GlobalStyles
                                                        .normalStyle
                                                        .copyWith(
                                                            color: Colors
                                                                .blueAccent),
                                                  ),
                                                  const SizedBox(
                                                    width: 4,
                                                  ),
                                                  const Icon(Icons.edit,
                                                      size: 15,
                                                      color: Colors.blueAccent),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 8,
                                      ),
                                      SizedBox(
                                        width: Get.width,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            const Text(
                                              'Tổng cộng',
                                            ),
                                            Text(
                                                GlobalFormatter.formatCurrency(
                                                  double.parse((state
                                                              .data!.totalAmount
                                                              .toDouble() +
                                                          state.data!.shipping -
                                                          state.data!.discount)
                                                      .toString()),
                                                ),
                                                style: GlobalStyles.normalStyle
                                                    .copyWith(
                                                        color:
                                                            Colors.amber[900]))
                                          ],
                                        ),
                                      ),
                                      const SizedBox(
                                        height: Dimensions.PADDING_SIZE_DEFAULT,
                                      ),
                                    ],
                                  ),
                                ))),
                        isSearch
                            ? BlocBuilder<CustomersCubit, CustomersState>(
                                builder: (context, state) {
                                  return Container(
                                    color: Colors.white,
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          Dimensions.PADDING_SIZE_DEFAULT,
                                          Dimensions.PADDING_SIZE_SMALL,
                                          Dimensions.PADDING_SIZE_DEFAULT,
                                          Dimensions.PADDING_SIZE_DEFAULT),
                                      child: Column(
                                        children: [
                                          ListView.builder(
                                              physics:
                                                  const NeverScrollableScrollPhysics(),
                                              shrinkWrap: true,
                                              itemCount:
                                                  state.data!.customers.length,
                                              itemBuilder: (context, index) =>
                                                  ListTile(
                                                    onTap: () => setState(() {
                                                      isSearch = false;

                                                      _globalKey.currentContext!
                                                          .read<AddOrderCubit>()
                                                          .setCustomerSelect(
                                                              state.data!
                                                                  .customers
                                                                  .elementAt(
                                                                      index));
                                                    }),
                                                    title: Text(state
                                                        .data!.customers
                                                        .elementAt(index)
                                                        .name
                                                        .toString()),
                                                  )),
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              )
                            : const SizedBox(),
                      ],
                    ),
                    const SizedBox(
                      height: Dimensions.PADDING_SIZE_EXTRA_SMALL,
                    ),
                    Container(
                      color: GlobalColors.whiteColor,
                      child: Padding(
                        padding: const EdgeInsets.all(
                            Dimensions.PADDING_SIZE_DEFAULT),
                        child: CustomTextField(
                          hintText: "Ghi chú đơn hàng",
                          hintLabel: "Ghi chí đơn hàng",
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.all(Dimensions.PADDING_SIZE_DEFAULT),
                      child: InkWell(
                        onTap: () {
                          showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(2000),
                            lastDate: DateTime(2025),
                          ).then((value) => _globalKey.currentContext!
                              .read<AddOrderCubit>()
                              .setTransactionDate(value!));
                        },
                        child: Row(
                          children: [
                            const Icon(
                              Icons.calendar_month_outlined,
                              color: Colors.blue,
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Text(
                              DateFormat('dd/MM/y')
                                  .format(state.data!.transactionDate!),
                              style: const TextStyle(color: Colors.blue),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            const Icon(Icons.arrow_drop_down,
                                color: Colors.blue)
                          ],
                        ),
                      ),
                    )
                  ],
                )
              ],
            );
          },
        ),
      ),
    );
  }

  Widget _shippingMethod(String grValue, Function(String?)? opnChanged) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          // RadioMenuButton(
          //     value: "pos",
          //     groupValue: grValue,
          //     onChanged: opnChanged,
          //     child: const Text("Lấy tại chỗ")),
          // RadioMenuButton(
          //     value: "external_unit",
          //     groupValue: grValue,
          //     onChanged: opnChanged,
          //     child: const Text("Giao hàng")),
        ],
      ),
    );
  }

  Widget _diaglog(String title, Widget sufixIcon) {
    TextEditingController textEditingController = TextEditingController();
    return AnimatedPadding(
      padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      duration: const Duration(milliseconds: 150),
      curve: Curves.easeOut,
      child: Container(
        height: Get.height * 0.2,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: Dimensions.PADDING_SIZE_DEFAULT),
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(15)),
            ),
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      height: 48.0,
                      alignment: Alignment.center,
                      child: Text(
                        title,
                        style: GlobalStyles.titilliumSemiBold(context),
                        textScaleFactor: 1.2,
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      child: IconButton(
                        onPressed: () => Navigator.pop(context),
                        icon: const Icon(Icons.close_outlined),
                      ),
                    )
                  ],
                ),
                Container(
                  color: GlobalColors.bgSearch,
                  height: 0.8,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Expanded(
                      child: CustomTextField(
                        keyboardKey: TextInputType.number,
                        hintLabel: "Nhập số tiền",
                        suffixIcon: sufixIcon,
                        controller: textEditingController,
                        hintText: "00".tr,
                      ),
                    ),
                    const SizedBox(
                      width: Dimensions.PADDING_SIZE_SMALL,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: GlobalColors.primaryColor
                          // This is what you need!
                          ),
                      onPressed: () async {
                        _globalKey.currentContext!
                            .read<AddOrderCubit>()
                            .setDiscount(
                                double.parse(textEditingController.text));
                        navigator!.pop();
                      },
                      child: Text("done".tr),
                      // child: Text(widget.addCategoryType == AddType.NEW
                      //     ? "create".tr
                      //     : "update".tr))
                    ),
                  ],
                ),
                // state.data!.nameCheck
                //     ? Container(
                //         width: Get.width,
                //         padding: const EdgeInsets.only(
                //             top: Dimensions.PADDING_SIZE_SMALL),
                //         child: Text(
                //           'name_is_required'.tr,
                //           style: const TextStyle(color: Colors.red),
                //           textAlign: TextAlign.start,
                //         ),
                //       )
                //     : const SizedBox(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _switchButton() {
    return BlocBuilder<AddOrderCubit, AddOrderState>(
      builder: (context, state) {
        return DropdownButton<String>(
          underline: Container(
            color: GlobalColors.primaryColor,
            height: 2,
          ),
          //hint: Text(value2),
          value: state.data!.discountType,
          items: const [
            DropdownMenuItem(
              value: "fixed",
              child: Text('VNĐ'),
            ),
            DropdownMenuItem(
              value: "percent",
              child: Text('%'),
            )
          ],
          onChanged: (value) {
            context.read<AddOrderCubit>().setDiscountType(value!);
            _globalKey.currentContext!
                .read<AddOrderCubit>()
                .setDiscountType(value);
          },
        );
      },
    );
  }

  Widget _productItem(
      SellProductRequest product, BuildContext context, int index) {
    Product p = widget.productsSelected!
        .firstWhere((element) => element.id == product.productId);
    Variation? variantName = p.productVariations!.first!.variations!
        .firstWhereOrNull((element) => element!.id == product.variantionId);

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Stack(alignment: AlignmentDirectional.center, children: [
                  CachedNetworkImage(
                    width: Get.width * 0.15,
                    height: Get.width * 0.15,
                    fit: BoxFit.cover,
                    imageUrl: p.imageUrl ?? '',
                    errorWidget: (context, url, error) =>
                        const ErrorWidgetImage(),
                  ),
                ]),
              ),
              const SizedBox(
                width: Dimensions.PADDING_SIZE_DEFAULT,
              ),
              SizedBox(
                width: Get.width * 0.69,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(child: Text(p.name!)),
                    const SizedBox(
                      height: Dimensions.PADDING_SIZE_SMALL,
                    ),
                    SizedBox(
                        child: Text(
                            variantName != null ? variantName.name! : "null")),
                    const SizedBox(
                      height: Dimensions.PADDING_SIZE_SMALL,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          //height: Get.width * 0.3,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: 25,
                                //width: Get.width * 0.23,
                                decoration: BoxDecoration(
                                    color: GlobalColors.whiteColor,
                                    borderRadius: BorderRadius.circular(5)),
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: const BorderRadius.all(
                                        Radius.circular(5),
                                      ),
                                      boxShadow: [
                                        BoxShadow(color: Colors.grey[200]!)
                                      ]),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      InkWell(
                                        onTap: () => context
                                            .read<AddOrderCubit>()
                                            .setProductSelected(
                                                p, true, variantName!.id!),
                                        child: const Icon(Icons.remove),
                                      ),
                                      const SizedBox(
                                        width: 3,
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      SizedBox(
                                        width: 30,
                                        child: TextField(
                                            //maxLength: 3,
                                            inputFormatters: [
                                              LengthLimitingTextInputFormatter(
                                                  3),
                                            ],
                                            maxLines: 1,
                                            keyboardType: TextInputType.number,
                                            onSubmitted: (value) {
                                              if (_txtsContrller
                                                  .elementAt(index)!
                                                  .text
                                                  .isEmpty) {
                                                context
                                                    .read<AddOrderCubit>()
                                                    .setProductSelected(
                                                        p, true, -1);
                                              }

                                              if (int.parse(_txtsContrller
                                                      .elementAt(index)!
                                                      .text) <
                                                  1) {
                                                context
                                                    .read<AddOrderCubit>()
                                                    .setProductSelected(
                                                        p, true, 0);
                                              } else {
                                                context
                                                    .read<AddOrderCubit>()
                                                    .setProductSelected(
                                                        p,
                                                        false,
                                                        int.parse(_txtsContrller
                                                            .elementAt(index)!
                                                            .text));
                                              }
                                            },
                                            autocorrect: true,
                                            focusNode: _foucusContrller
                                                .elementAt(index),
                                            controller:
                                                _txtsContrller.elementAt(index),
                                            textAlign: TextAlign.center,
                                            selectionWidthStyle:
                                                BoxWidthStyle.tight,
                                            decoration: const InputDecoration(
                                              border: InputBorder.none,
                                            )),
                                      ),
                                      // Text(state
                                      //         .data!
                                      //         .productsSelected[products
                                      //             .elementAt(index)]
                                      //         .toString() ??
                                      //     '1'),
                                      const SizedBox(
                                        width: 3,
                                      ),
                                      InkWell(
                                        child: const Icon(Icons.add,
                                            color: Colors.green),
                                        onTap: () {
                                          context
                                              .read<AddOrderCubit>()
                                              .setProductSelected(
                                                  p, false, variantName!.id!);
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Text(
                          GlobalFormatter.formatCurrency(
                            double.parse(p.productVariations!.first!.variations!
                                .first!.defaultSellPrice!),
                          ),
                          style: TextStyle(
                              color: Colors.amber[900],
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        const Divider(
          height: 1,
        )
      ],
    );
  }
}

class DiaglogInOrder extends StatefulWidget {
  DiaglogInOrder(
      {Key? key,
      required this.title,
      this.dropValue,
      this.onChangeDrop,
      this.sumMoney})
      : super(key: key);
  String title;
  String? dropValue;
  double? sumMoney;
  Function(String?)? onChangeDrop;

  @override
  State<DiaglogInOrder> createState() => _DiaglogInOrderState();
}

class _DiaglogInOrderState extends State<DiaglogInOrder> {
  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AnimatedPadding(
      padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      duration: const Duration(milliseconds: 150),
      curve: Curves.easeOut,
      child: Container(
        height: Get.height * 0.2,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: Dimensions.PADDING_SIZE_DEFAULT),
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(15)),
            ),
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      height: 48.0,
                      alignment: Alignment.center,
                      child: Text(
                        widget.title,
                        style: GlobalStyles.titilliumSemiBold(context),
                        textScaleFactor: 1.2,
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      child: IconButton(
                        onPressed: () => Navigator.pop(context),
                        icon: const Icon(Icons.close_outlined),
                      ),
                    )
                  ],
                ),
                Container(
                  color: GlobalColors.bgSearch,
                  height: 0.8,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Expanded(
                      child: CustomTextField(
                        maxLength: widget.dropValue != null &&
                                widget.dropValue!.contains("percent")
                            ? 2
                            : null,
                        keyboardKey: TextInputType.number,
                        hintLabel: "Nhập số tiền",
                        suffixIcon: widget.dropValue != null
                            ? DropdownButton<String>(
                                underline: Container(
                                  color: GlobalColors.primaryColor,
                                  height: 2,
                                ),
                                //hint: Text(value2),
                                value: widget.dropValue,
                                items: [
                                  DropdownMenuItem(
                                    value: "fixed",
                                    child: const Text('VNĐ'),
                                    onTap: () => setState(() {
                                      widget.dropValue = "fixed";
                                      //widget.isMoney = true;
                                    }),
                                  ),
                                  DropdownMenuItem(
                                    value: "percent",
                                    child: const Text('%'),
                                    onTap: () => setState(() {
                                      widget.dropValue = "percent";
                                      // widget.isMoney = false;
                                    }),
                                  )
                                ],
                                onChanged: widget.onChangeDrop)
                            : null,
                        controller: textEditingController,
                        hintText: "00".tr,
                      ),
                    ),
                    const SizedBox(
                      width: Dimensions.PADDING_SIZE_SMALL,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: GlobalColors.primaryColor
                          // This is what you need!
                          ),
                      onPressed: () async {
                        widget.dropValue != null
                            ? _globalKey.currentContext!
                                .read<AddOrderCubit>()
                                .setDiscount(widget.dropValue!.contains("fixed")
                                    ? double.parse(textEditingController.text)
                                    : (widget.sumMoney! *
                                        double.parse(
                                            textEditingController.text) /
                                        100))
                            : _globalKey.currentContext!
                                .read<AddOrderCubit>()
                                .setShipping(
                                    double.parse(textEditingController.text));
                        navigator!.pop();
                      },
                      child: Text("done".tr),
                      // child: Text(widget.addCategoryType == AddType.NEW
                      //     ? "create".tr
                      //     : "update".tr))
                    ),
                  ],
                ),
                // state.data!.nameCheck
                //     ? Container(
                //         width: Get.width,
                //         padding: const EdgeInsets.only(
                //             top: Dimensions.PADDING_SIZE_SMALL),
                //         child: Text(
                //           'name_is_required'.tr,
                //           style: const TextStyle(color: Colors.red),
                //           textAlign: TextAlign.start,
                //         ),
                //       )
                //     : const SizedBox(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
