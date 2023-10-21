import 'dart:async';
import 'dart:ui';

import 'package:after_layout/after_layout.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/common/global_styles.dart';
import 'package:di4l_pos/screens/edit_order_screen/cubit/edit_order_cubit.dart';
import 'package:di4l_pos/screens/edit_order_screen/widget/item_product.dart';
import 'package:di4l_pos/screens/main_screen/mobile/widgets/my_appbar.dart';
import 'package:di4l_pos/widgets/error_image_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../common/dimensions.dart';
import '../../common/global_formatter.dart';
import '../../common/global_images.dart';
import '../../common/storage/app_prefs.dart';
import '../../enums/status_type.dart';
import '../../get_it.dart';
import '../../models/cart_table_order/cart_model.dart';
import '../../models/products/response/product_response.dart';
import '../../models/products/response/variation.dart';
import '../../models/sell/request/add_sell_request.dart';
import '../../models/sell/response/sell_response.dart';
import '../../models/table/response/table_response.dart';
import '../../route_generator.dart';
import '../../widgets/custom_textfield.dart';
import '../../widgets/data/404_widget.dart';
import '../../widgets/data/app_loading_widget.dart';
import '../../widgets/data/no_data_widget.dart';
import '../kitchen_screen/widget/kitchen_detail_table_product.dart';
import '../order_screen/cubit/order_cubit.dart';
import '../order_screen/sub_screens/add_order_screen/Cubit/add_order_cubit.dart';
import '../order_screen/sub_screens/add_order_screen/subs/add_order_detail_screen.dart';
import '../products_screen/cubit/products_cubit.dart';
import '../table_order_screen/cubit/table_order_cubit.dart';
import '../table_order_screen/mobile/table_order_mobile_screen.dart';
import '../table_order_screen/widgets/custom_button_order.dart';

class EditOderPage extends StatefulWidget {
  EditOderPage({Key? key, this.sellData, this.productsSelected, this.product})
      : super(key: key);
  final SellData? sellData;
  final Product? product;
  bool isDataUpdated = false;
  static MultiBlocProvider provider(
      {SellData? sellData, Product? product, List<Product>? productsSelected}) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<EditOrderCubit>(
          create: (BuildContext context) => EditOrderCubit(),
        ),
        BlocProvider<AddOrderCubit>(
          create: (BuildContext context) => AddOrderCubit(),
        ),
        BlocProvider<SalesOrderCubit>(
          create: (BuildContext context) => SalesOrderCubit(),
        ),
      ],
      child: EditOderPage(
        sellData: sellData,
        productsSelected: productsSelected,
        product: product,
      ),
    );
  }

  List<Product>? productsSelected;

  @override
  State<EditOderPage> createState() => _EditOderPageState();
}
final List<TextEditingController?> _txtsContrller = [];
final List<FocusNode?> _foucusContrller = [];
GlobalKey _globalKey = GlobalKey();

class _EditOderPageState extends State<EditOderPage> {
  static ValueNotifier<String> selectedTable = ValueNotifier('');
  static ValueNotifier<String> selectTable = ValueNotifier('');
  static List<List<ValueNotifier<int>>> tempAddOns = [];
  final tableOrder = Get.put(TableOrderController());
  final _appPrefs = getIt<AppPref>();
  Color primaryColor = GlobalColors.primaryColor;

  // @override
  // FutureOr<void> afterFirstLayout(BuildContext context) async {
  //   if (!widget.isDataUpdated) {
  //     context.read<EditOrderCubit>().getTables();
  //     selectedTable.value = tableOrder.selectedTable.value;

  //     List<int> productsIdList =
  //         widget.sellData!.sellLines!.map((e) => e.productId!).toList();
  //     print(productsIdList);
  //     context.read<EditOrderCubit>().getCart();
  //     context.read<EditOrderCubit>().getProducts(ids: productsIdList);
  //     context.read<EditOrderCubit>().setProductSSelectAll(productsIdList);
  //     widget.isDataUpdated = true;
  //   }
  // }

  @override
  void initState() {
    WidgetsBinding.instance.endOfFrame.then((value) async
    {
       context.read<EditOrderCubit>().getTables();
      selectedTable.value = tableOrder.selectedTable.value;
        List<int> productsIdList =
          widget.sellData!.sellLines!.map((e) => e.productId!).toList();
      print(productsIdList);
      context.read<EditOrderCubit>().getCart();
      context.read<EditOrderCubit>().getProducts(ids: productsIdList);
      context.read<EditOrderCubit>().setProductSSelectAll(productsIdList);
      context.read<EditOrderCubit>().setShipping(double.parse(widget.sellData!.shippingCharges!));
      context.read<EditOrderCubit>().setDiscount(double.parse(widget.sellData!.discountAmount!));
    });
    super.initState();
  }
  int stringDoubleToInt(String? str) {
    return (double.parse(str!)).toInt();
  }

  void increase(int indexModifierSet, int indexModifier) {
    tempAddOns[indexModifierSet][indexModifier].value += 1;
  }

  void decrease(int indexModifierSet, int indexModifier) {
    if (tempAddOns[indexModifierSet][indexModifier].value > 0) {
      tempAddOns[indexModifierSet][indexModifier].value -= 1;
    }
  }

  int totalPriceOneItem(
      {required int quantity,
      required int price,
      List<ModifierSet>? modifierSets}) {
    if (modifierSets != null) {
      int total = 0;
      for (int i = 0; i < modifierSets.length; i++) {
        if (modifierSets[i].modifierCart!.isNotEmpty) {
          for (int j = 0; j < modifierSets[i].modifierCart!.length; j++) {
            total += modifierSets[i].modifierCart![j].price! *
                tempAddOns[i][j].value;
          }
        }
      }
      return total + quantity * price;
    }
    return quantity * price;
  }

  String formatCurrency({required int price}) {
    // return NumberFormat('#,###').format(price);
    return NumberFormat.simpleCurrency(locale: 'vi-VN', decimalDigits: 0)
        .format(price);
  }

  Widget _productItem(
      {required BuildContext context,
      required int index,
      required ProductResponse product,
    }) {
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
                    imageUrl: product.data!.first.imageUrl ?? '',
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
                    SizedBox(child: Text(product.data!.first.name!)),
                    const SizedBox(
                      height: Dimensions.PADDING_SIZE_SMALL,
                    ),
                    SizedBox(
                        child: Text(product.data!.first.productVariations!
                                .first!.variations!.first!.name ??
                            "")),
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
                                        onTap: ()=> context.read<EditOrderCubit>().setProductSelected(product, true, product.data!.first.productVariations!.first!.variations!.first!.id!),
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
                                                    .read<EditOrderCubit>()
                                                    .setProductSelected(
                                                        product, true, -1);
                                              }

                                              if (int.parse(_txtsContrller
                                                      .elementAt(index)!
                                                      .text) <
                                                  1) {
                                                context
                                                    .read<EditOrderCubit>()
                                                    .setProductSelected(
                                                        product, true, 0);
                                              } else {
                                                context
                                                    .read<EditOrderCubit>()
                                                    .setProductSelected(
                                                        product,
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
                               
                                      InkWell(
                                        child: const Icon(Icons.add,
                                            color: Colors.green),
                                        onTap: (){
                                          context
                                              .read<EditOrderCubit>()
                                              .setProductSelected(
                                                  product, false, product.data!.first.productVariations!.first!.variations!.first!.id!);
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
                            double.parse(product
                                    .data!
                                    .first
                                    .productVariations!
                                    .first!
                                    .variations!
                                    .first!
                                    .defaultSellPrice ??
                                ''),
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

  String selectedOption = 'Bán hàng theo hoa hồng';
  String selectedOption1 = 'Chọn nhân viên phục vụ';
  double totalPrice = 0.0;

  // @override
  // void initState() {
  //   WidgetsBinding.instance.endOfFrame.then((value) async {
  //     context
  //         .read<EditOrderCubit>()
  //         .setProductSSelectAll(widget.productsSelected!);
  //   });
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    int lengthProduct = widget.sellData!.sellLines!.length;
    String? formatStatus = widget.sellData!.status?.capitalize!;
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      key: _globalKey,
      backgroundColor: GlobalColors.kDarkWhite,
      appBar: MyAppBar(
        title: Text(
          "edit_order_page".tr,
          style: GlobalStyles.robotoBold(context).copyWith(
            color: GlobalColors.primaryWebColor,
            fontSize: 18,
          ),
        ),
        actions: [
          TextButton.icon(
              onPressed: () async{
                //_globalKey.currentContext!.read<EditOrderCubit>().updateOrder(widget.sellData!.id!);
              },
              icon: const Icon(Icons.save_as_outlined),
              label: Text('save_edit_order'.tr))
        ],
        titleCenter: true,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: BlocBuilder<EditOrderCubit, EditOrderState>(
            builder: (context, state) {
          final tables = state.data?.tables ?? [];
          final itemProducts = state.data?.listItemProduct ?? [];
          int total = 0;
          tableOrder.tempTotal.value = [];
          if (itemProducts.isNotEmpty) {
            for (int i = 0; i <= itemProducts.length; i++) {
              if (itemProducts[i].modifierSets!.isNotEmpty) {
                int temp = 0;
                for (int j = 0; j < itemProducts[i].modifierSets!.length; j++) {
                  for (var modifier
                      in itemProducts[i].modifierSets![j].modifierCart!) {
                    temp += modifier.price! * modifier.quantity!;
                  }
                }
                total +=
                    itemProducts[i].price! * itemProducts[i].quantity! + temp;
              } else {
                total += itemProducts[i].price! * itemProducts[i].quantity!;
              }
              tableOrder.tempTotal.add(0);
            }
          }
          tableOrder.totalAmount = total.obs;
          int amountCart() {
            int total = 0;
            for (int i = 0; i < itemProducts.length; i++) {
              total += itemProducts[i].quantity!;
            }
            return total;
          }

          switch (state.data!.status) {
            case StatusType.loading:
              return const AppLoadingWidget(
                widget: null,
                text: 'Loading...',
              );
            case StatusType.loaded:
              return state.data!.product.isEmpty
                  ? const NoDataWidget()
                  : Column(children: [
                      SingleChildScrollView(
                        child: Column(
                          children: [
                            SingleChildScrollView(
                              physics: const ScrollPhysics(),
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 10),
                                child: Column(
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.all(5.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Text(
                                            'date'.tr,
                                            style: GlobalStyles.titleHeader(
                                                context),
                                          ),
                                          const SizedBox(width: 4.0),
                                          Text(
                                            widget.sellData!.transactionDate ??
                                                '',
                                            style:
                                                GlobalStyles.titilliumSemiBold1(
                                                    context),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                          color: GlobalColors.whiteColor,
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.all(10),
                                              child: Column(
                                                children: [
                                                  Row(
                                                    children: [
                                                      Text(
                                                        'invoice_no'.tr,
                                                        style: GlobalStyles
                                                            .titleHeader(
                                                                context),
                                                      ),
                                                      const SizedBox(
                                                        width: 5,
                                                      ),
                                                      Text(
                                                        widget.sellData!
                                                                .invoiceNo ??
                                                            '',
                                                        style: GlobalStyles
                                                            .titilliumSemiBold1(
                                                                context),
                                                      ),
                                                    ],
                                                  ),
                                                  const SizedBox(
                                                    height: 5,
                                                  ),
                                                  Row(
                                                    children: [
                                                      Text(
                                                        'status'.tr,
                                                        style: GlobalStyles
                                                            .titleHeader(
                                                                context),
                                                      ),
                                                      const SizedBox(
                                                        width: 5,
                                                      ),
                                                      formatStatus != null
                                                          ? Text(
                                                              formatStatus,
                                                              style: GlobalStyles
                                                                  .titilliumSemiBold1(
                                                                      context),
                                                            )
                                                          : Text(
                                                              '',
                                                              style: GlobalStyles
                                                                  .titilliumSemiBold1(
                                                                      context),
                                                            )
                                                    ],
                                                  ),
                                                  const SizedBox(
                                                    height: 5,
                                                  ),
                                                  Row(
                                                    children: [
                                                      Text(
                                                        'payment_status'.tr,
                                                        style: GlobalStyles
                                                            .titleHeader(
                                                                context),
                                                      ),
                                                      const SizedBox(
                                                        width: 5,
                                                      ),
                                                      Text(
                                                        widget.sellData!
                                                            .paymentStatus!.tr,
                                                        style: GlobalStyles
                                                            .titilliumSemiBold1(
                                                                context),
                                                      )
                                                    ],
                                                  ),
                                                  const SizedBox(
                                                    height: 5,
                                                  ),
                                                  Row(
                                                    children: [
                                                      Text(
                                                        'Mobile',
                                                        style: GlobalStyles
                                                            .titleHeader(
                                                                context),
                                                      ),
                                                      const SizedBox(
                                                        width: 5,
                                                      ),
                                                      widget.sellData!.contact!
                                                                  .mobile !=
                                                              null
                                                          ? Text(
                                                              '${widget.sellData!.contact!.mobile}',
                                                              style: GlobalStyles
                                                                  .titilliumSemiBold1(
                                                                      context),
                                                            )
                                                          : Text(
                                                              '',
                                                              style: GlobalStyles
                                                                  .titilliumSemiBold1(
                                                                      context),
                                                            ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: Container(
                                        padding:
                                            const EdgeInsets.only(left: 20),
                                        height: size.height * 0.1,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                          color: GlobalColors.whiteColor,
                                        ),
                                        child: Row(
                                          children: [
                                            Container(
                                              padding: const EdgeInsets.all(12),
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100),
                                                  border: Border.all(
                                                    color: GlobalColors
                                                        .kBorderColorTextField,
                                                    width: 0.5,
                                                  )),
                                              child: SvgPicture.asset(
                                                GlobalImages.userIcon,
                                                color: GlobalColors
                                                    .kGreenTextColor,
                                                height: 23,
                                                width: 23,
                                              ),
                                            ),
                                            const SizedBox(width: 7),
                                            Text(
                                              widget.sellData!.contact?.name ??
                                                  '',
                                              style: GlobalStyles.robotoRegular(
                                                      context)
                                                  .copyWith(
                                                color: GlobalColors
                                                    .primaryWebColor,
                                                fontSize: 17,
                                              ),
                                            ),
                                            const SizedBox(width: 7),
                                            SvgPicture.asset(
                                              GlobalImages.copyIcon,
                                              height: 20,
                                              width: 20,
                                              color:
                                                  GlobalColors.kGreyTextColor,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20),
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 20),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                          color: GlobalColors.whiteColor,
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Icon(Icons.person_2_outlined,
                                                color: primaryColor),
                                            DropdownButton<String>(
                                              value: selectedOption1,
                                              onChanged: (String? newValue) {
                                                setState(() {
                                                  selectedOption1 = newValue!;
                                                });
                                              },
                                              items: <String>[
                                                'Chọn nhân viên phục vụ',
                                                'Nhân viên 1',
                                                'Nhân viên 2',
                                                'Nhân viên 3',
                                                'Nhân viên 3',
                                              ].map<DropdownMenuItem<String>>(
                                                  (String value) {
                                                return DropdownMenuItem<String>(
                                                  value: value,
                                                  child: Text(
                                                    value,
                                                    style: GlobalStyles
                                                            .robotoRegular(
                                                                context)
                                                        .copyWith(
                                                      color: GlobalColors
                                                          .primaryWebColor,
                                                      fontSize: 17,
                                                    ),
                                                  ),
                                                );
                                              }).toList(),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    Column(
                                      children: [
                                        Obx(
                                          () => Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 20),
                                            child: Container(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 20),
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                                color: GlobalColors.whiteColor,
                                              ),
                                              child: Row(
                                                children: [
                                                  Expanded(
                                                    child:
                                                        // Obx(
                                                        //   () =>
                                                        Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        tableOrder.selectedTable
                                                                    .value ==
                                                                ''
                                                            ? InkWell(
                                                                onTap: () {
                                                                  setTable(
                                                                      context,
                                                                      tables);
                                                                },
                                                                splashColor: Colors
                                                                    .transparent,
                                                                highlightColor:
                                                                    Colors
                                                                        .transparent,
                                                                child: Text(
                                                                  'select_table'
                                                                      .tr,
                                                                  style: GlobalStyles
                                                                          .robotoRegular(
                                                                              context)
                                                                      .copyWith(
                                                                    fontSize:
                                                                        Dimensions
                                                                            .FONT_SIZE_LARGE,
                                                                    color: Theme.of(
                                                                            context)
                                                                        .primaryColor,
                                                                  ),
                                                                ),
                                                              )
                                                            : Expanded(
                                                                child: InkWell(
                                                                  onTap: () {
                                                                    setTable(
                                                                        context,
                                                                        tables);
                                                                  },
                                                                  splashColor:
                                                                      Colors
                                                                          .transparent,
                                                                  highlightColor:
                                                                      Colors
                                                                          .transparent,
                                                                  child: Text(
                                                                    tableOrder
                                                                        .selectedTable
                                                                        .value,
                                                                    style: GlobalStyles.robotoBold(
                                                                            context)
                                                                        .copyWith(
                                                                      fontSize:
                                                                          Dimensions
                                                                              .FONT_SIZE_LARGE,
                                                                    ),
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                  ),
                                                                ),
                                                              ),
                                                      ],
                                                    ),
                                                  ),
                                                  // ),
                                                  InkWell(
                                                    onTap: () {
                                                      setTable(context, tables);
                                                    },
                                                    splashColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    child: Image.asset(
                                                      GlobalImages.iconEdit,
                                                      color: Theme.of(context)
                                                          .primaryColor,
                                                      width: Dimensions
                                                          .ICON_SIZE_DEFAULT,
                                                    ),
                                                  ),
                                                  if (tableOrder.selectedTable
                                                          .value !=
                                                      '')
                                                    InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        tableOrder.selectedTable
                                                            .value = '';
                                                        selectedTable.value =
                                                            '';
                                                        await _appPrefs
                                                            .removeTable();
                                                      },
                                                      child: const Icon(
                                                          Icons.close_outlined,
                                                          color: Colors.red,
                                                          size: 25),
                                                    )
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                          color: GlobalColors.whiteColor,
                                        ),
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 10.0),
                                              child: Text(
                                                'products'.tr,
                                                style: const TextStyle(
                                                  fontSize: 20,
                                                  fontFamily: 'Roboto',
                                                  fontWeight: FontWeight.bold,
                                                  color:
                                                      GlobalColors.primaryColor,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 10),
                                              child: InkWell(
                                                onTap: () => navigator
                                                    ?.pushReplacementNamed(
                                                        RouteGenerator
                                                            .selectProductForOrderEdit,
                                                        arguments: {
                                                      'SELLDATA':
                                                          widget.sellData
                                                    }),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  children: [
                                                    const Icon(
                                                      Icons.add,
                                                      color: Colors.blueAccent,
                                                    ),
                                                    const SizedBox(
                                                      width: Dimensions
                                                          .PADDING_SIZE_SMALL,
                                                    ),
                                                    Text(
                                                      'add_product'.tr,
                                                      style: GlobalStyles
                                                          .normalStyle
                                                          .copyWith(
                                                              color: Colors
                                                                  .blueAccent),
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
                                                  color:
                                                      GlobalColors.whiteColor,
                                                   child: ListView.builder(
                                                    physics: const NeverScrollableScrollPhysics(),
                                                    shrinkWrap: true,
                                                    itemBuilder: (context,index){
                                                      _txtsContrller.add(TextEditingController());
                                                      _foucusContrller.add(FocusNode());
                                                      if(state.data!.productsSelected.isNotEmpty )
                                                      {
                                                        _txtsContrller.elementAt(index)!.text = state
                                                                                .data!.productsSelected
                                                                                .elementAt(index)
                                                                                .data!
                                                                                .first
                                                                                .variantsSelect
                                                                                .first
                                                                                .count.toString();
                                                                                
                                                      }

                                                      return _productItem(
                                                        context: context, 
                                                        index: index, 
                                                        product: state.data!.product.elementAt(index));
                                                    },
                                                     itemCount: state.data!.product.length,
                                                   )     
                                                  //   },
                                                  // ),
                                              
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SizedBox(
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
                                            style: GlobalStyles.normalStyle
                                                .copyWith(
                                                    color: Colors.blueAccent),
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
                                                        top: Radius.circular(
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
                            ),
                            SizedBox(
                              width: Get.width,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                                'Tổng ${widget.sellData!.sellLines!.length} sản phẩm'),
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
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SizedBox(
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
                                                        top: Radius.circular(
                                                            15.0))),
                                            context: context,
                                            isScrollControlled: true,
                                            isDismissible: true,
                                            builder: (context) =>
                                                DiaglogInOrder(
                                                  title: "discount".tr,
                                                  sumMoney: double.parse(state
                                                      .data!.totalAmount
                                                      .toString()),
                                                  dropValue:
                                                      state.data!.discountType,
                                                  onChangeDrop: (p0) {
                                                    _globalKey.currentContext!
                                                        .read<AddOrderCubit>()
                                                        .setDiscountType(p0!);
                                                  },
                                                ));
                                      },
                                      child: Row(
                                        children: [
                                          Text(
                                            "-${GlobalFormatter.formatCurrency(state.data!.discount)}",
                                            style: GlobalStyles.normalStyle
                                                .copyWith(
                                                    color: Colors.blueAccent),
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
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SizedBox(
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
                                          double.parse((state.data!.totalAmount.toDouble() + state.data!.shipping - state.data!.discount).toString()),
                                          
                                        ),
                                        style: GlobalStyles.normalStyle
                                            .copyWith(color: Colors.amber[900]))
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ]);

            case StatusType.error:
              return const Error404Widget();
            default:
              return const SizedBox.shrink();
          }
        }),
      ),
    );
  }

  setTable(BuildContext context, List<TableModel> tables) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.white,
      builder: (context) {
        selectTable.value = selectedTable.value;
        return Padding(
          padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
          child: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(20),
              ),
              color: Colors.white,
            ),
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () {
                        navigator!.pop();
                        selectedTable.value = '';
                      },
                      child: const Icon(Icons.close),
                    )
                  ],
                ),
                const SizedBox(
                  height: Dimensions.PADDING_SIZE_LARGE,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'select_table'.tr,
                      style: GlobalStyles.robotoBold(context).copyWith(
                        fontSize: Dimensions.FONT_SIZE_EXTRA_LARGE,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: Dimensions.PADDING_SIZE_DEFAULT,
                ),
                Container(
                  height: 40,
                  padding: const EdgeInsets.symmetric(
                    horizontal: Dimensions.PADDING_SIZE_DEFAULT,
                  ),
                  decoration: BoxDecoration(
                    color: Theme.of(context).cardColor,
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      color: Theme.of(context).hintColor.withOpacity(0.2),
                      width: 1,
                    ),
                  ),
                  child: ValueListenableBuilder<String>(
                    valueListenable: selectTable,
                    builder: (context, selected, _) {
                      return DropdownButton<String>(
                        onChanged: (newValue) {
                          selectTable.value = newValue.toString();
                        },
                        menuMaxHeight: Get.height * 0.5,
                        hint: Obx(
                          () => Text(
                            tableOrder.selectedTable.value.isEmpty
                                ? 'please_select_table'.tr
                                : tableOrder.selectedTable.value,
                            style: GlobalStyles.robotoRegular(context).copyWith(
                                fontSize: Dimensions.FONT_SIZE_DEFAULT),
                          ),
                        ),
                        value: selected.isNotEmpty ? selected : null,
                        items: tables
                            .map((table) => DropdownMenuItem<String>(
                                  value: table.name,
                                  child: Text(
                                    table.name!,
                                    style: GlobalStyles.robotoRegular(context)
                                        .copyWith(
                                      fontSize: Dimensions.FONT_SIZE_DEFAULT,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ))
                            .toList(),
                        isExpanded: true,
                        underline: const SizedBox(),
                        onTap: () {},
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: Dimensions.PADDING_SIZE_OVER_LARGE,
                ),
                CustomButton2(
                  buttonText: 'save'.tr,
                  width: 200,
                  height: 50,
                  onPressed: () async {
                    await _appPrefs.saveTable(table: selectTable.value);
                    tableOrder.selectedTable.value = selectTable.value;
                    selectedTable.value = selectTable.value;
                    for (int i = 0; i < tables.length; i++) {
                      if (tables[i].name == tableOrder.selectedTable.value) {
                        tableOrder.tableId.value = tables[i].id!;
                      }
                    }
                    navigator!.pop();
                  },
                )
              ],
            ),
          ),
        );
      },
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20),
        ),
      ),
    );
  }

  setNote(BuildContext context) {
    final tableOrder = Get.put(TableOrderController());
    final appPrefs = getIt<AppPref>();
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.white,
      builder: (BuildContext context) {
        String? temp;
        return SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
                vertical: Dimensions.PADDING_SIZE_EXTRA_LARGE,
                horizontal: Dimensions.PADDING_SIZE_EXTRA_LARGE),
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(20),
                ),
                color: Colors.white,
              ),
              padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                        onTap: () {
                          navigator!.pop();
                        },
                        child: const Icon(Icons.close),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: Dimensions.PADDING_SIZE_LARGE,
                  ),
                  SizedBox(
                    child: TextFormField(
                      initialValue: tableOrder.noteOrder.value != ''
                          ? tableOrder.noteOrder.value
                          : null,
                      decoration: InputDecoration(
                        hintText: 'add_special_note_here'.tr,
                        hintStyle: GlobalStyles.robotoRegular(context)
                            .copyWith(fontSize: Dimensions.FONT_SIZE_DEFAULT),
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                              color: GlobalColors.primaryColor, width: 1),
                        ),
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                              color: GlobalColors.primaryColor, width: 1),
                        ),
                      ),
                      keyboardType: TextInputType.text,
                      maxLines: 6,
                      onChanged: (val) => temp = val,
                      autofocus: true,
                    ),
                  ),
                  const SizedBox(
                    height: Dimensions.PADDING_SIZE_EXTRA_LARGE,
                  ),
                  CustomButton2(
                    buttonText: 'save'.tr,
                    width: 200,
                    height: 50,
                    onPressed: () async {
                      await appPrefs.saveNote(note: temp!);
                      tableOrder.noteOrder.value = temp!;
                      navigator!.pop();
                    },
                  ),
                ],
              ),
            ),
          ),
        );
      },
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20),
        ),
      ),
    );
  }

  int _calculateTotalQuantity(int? productId) {
    if (productId == null) {
      return 0;
    }

    int totalQuantity = 0;
    for (final sellLine in widget.sellData!.sellLines!) {
      if (sellLine.productId == productId) {
        totalQuantity += sellLine.quantity ?? 0;
      }
    }

    return totalQuantity;
  }

  bool _isProductDuplicate(
      int? productId1, int? productId2, List<SellLine> sellLines) {
    if (productId1 == productId2) {
      return true;
    } else {
      for (final sellLine in sellLines) {
        if (sellLine.productId == productId1 ||
            sellLine.productId == productId2) {
          return true;
        }
      }
    }
    return false;
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
                                .read<EditOrderCubit>()
                                .setDiscount(widget.dropValue!.contains("fixed")
                                    ? double.parse(textEditingController.text)
                                    : (widget.sumMoney! *
                                        double.parse(
                                            textEditingController.text) /
                                        100))
                            : _globalKey.currentContext!
                                .read<EditOrderCubit>()
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
           
              ],
            ),
          ),
        ),
      ),
    );
  }
}

