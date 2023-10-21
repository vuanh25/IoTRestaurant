// ignore_for_file: use_build_context_synchronously, invalid_use_of_protected_member, unrelated_type_equality_checks

import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:di4l_pos/common/dimensions.dart';
import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/common/global_styles.dart';
import 'package:di4l_pos/common/storage/app_prefs.dart';
import 'package:di4l_pos/get_it.dart';
import 'package:di4l_pos/models/contacts/response/contacts_response.dart';
import 'package:di4l_pos/route_generator.dart';
import 'package:di4l_pos/screens/business_screen/cubit/business_cubit.dart';
import 'package:di4l_pos/screens/cart_table_order_screen/cubit/add_table_order_cubit.dart';
import 'package:di4l_pos/screens/cart_table_order_screen/cubit/cart_table_order_cubit.dart';
import 'package:di4l_pos/screens/contacts_screen/customers_screen/cubit/customers_cubit.dart';
import 'package:di4l_pos/screens/products_screen/cubit/products_cubit.dart';
import 'package:di4l_pos/screens/table_order_screen/mobile/table_order_mobile_screen.dart';
import 'package:di4l_pos/screens/table_order_screen/widgets/custom_button_order.dart';
import 'package:di4l_pos/widgets/error_image_widget.dart';
import 'package:di4l_pos/widgets/search_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';
import 'package:intl/intl.dart';

import '../../order_screen/cubit/order_cubit.dart';

class PaymentScreen extends StatefulWidget {
  static MultiBlocProvider provider() {
    return MultiBlocProvider(
      providers: [
        BlocProvider<CartCubit>(
          create: (BuildContext context) => CartCubit(),
        ),
        BlocProvider<SalesOrderCubit>(
          create: (BuildContext context) => SalesOrderCubit(),
        ),
        BlocProvider<AddTableOrderCubit>(
          create: (BuildContext context) => AddTableOrderCubit(),
        ),
        BlocProvider<BusinessCubit>(
          create: (BuildContext context) => BusinessCubit(),
        ),
        BlocProvider<ProductsCubit>(
          create: (BuildContext context) => ProductsCubit(),
        ),
        BlocProvider<CustomersCubit>(
          create: (BuildContext context) => CustomersCubit(),
        ),
      ],
      child: const PaymentScreen(),
    );
  }

  const PaymentScreen({Key? key}) : super(key: key);

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> with AfterLayoutMixin {
  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
    context.read<CartCubit>().getCart();
    context.read<BusinessCubit>().getBusinesss();
    context.read<ProductsCubit>().getProducts();
    context.read<CustomersCubit>().getContacts();
    WidgetsBinding.instance.endOfFrame.then((value) async {
      context.read<CustomersCubit>().getContacts();
      textSearch.addListener(() {
        context
            .read<CustomersCubit>()
            .searchCustomer(searchText: textSearch.text);
      });
    });
  }

  Color primaryColor = GlobalColors.primaryColor;
  final tableOrder = Get.put(TableOrderController());
  final _appPrefs = getIt<AppPref>();
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey();
  final TextEditingController paidCtrl = TextEditingController();
  ContactModel? contactModel;
  var textSearch = TextEditingController();
  bool isSearch = false;

  String formatCurrency({required int price}) {
    // return NumberFormat('#,###').format(price);
    return NumberFormat.simpleCurrency(locale: 'vi-VN', decimalDigits: 0)
        .format(price);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        key: _globalKey,
        appBar: AppBar(
          leading: BackButton(
            onPressed: () {
              tableOrder.change.value = 0;
              tableOrder.contactModel.value =
                  ContactModel(id: 0, name: '', mobile: '');
              navigator!.pop();
            },
            color: Colors.black,
          ),
          title: Text('confirm'.tr),
          titleTextStyle: GlobalStyles.robotoBold(context).copyWith(
            fontSize: Dimensions.FONT_SIZE_EXTRA_LARGE,
            color: Colors.black,
          ),
          toolbarHeight: 55,
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 10,
          shadowColor: Colors.white54,
        ),
        body: BlocBuilder<AddTableOrderCubit, AddTableOrderState>(
          builder: (context, stateOrder) {
            return BlocBuilder<ProductsCubit, ProductsState>(
                builder: (context, statePro) {
              return BlocBuilder<CartCubit, CartState>(
                builder: (context, stateCart) {
                  final itemProducts = stateCart.data?.listItemProduct ?? [];
                  return Column(
                    children: [
                      Expanded(
                        child: SingleChildScrollView(
                          physics: const BouncingScrollPhysics(),
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
                            constraints:
                                BoxConstraints(minHeight: Get.height * 0.5),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "products".tr,
                                  style:
                                      GlobalStyles.robotoBold(context).copyWith(
                                    fontSize: Dimensions.FONT_SIZE_LARGE,
                                  ),
                                  textAlign: TextAlign.justify,
                                ),
                                Container(
                                  margin:
                                      const EdgeInsets.symmetric(vertical: 5),
                                  height: 3,
                                  color: Colors.grey.shade200,
                                ),
                                ListView.builder(
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    itemCount: itemProducts.length,
                                    shrinkWrap: true,
                                    itemBuilder: (context, indexCart) {
                                      final itemProduct =
                                          itemProducts[indexCart];
                                      String? variantName = itemProduct
                                          .productVariations!
                                          .first!
                                          .variations!
                                          .first!
                                          .name!;
                                      for (int j = 0;
                                          j <
                                              itemProduct
                                                  .productVariations!.length;
                                          j++) {
                                        for (var variant in itemProduct
                                            .productVariations![j]!
                                            .variations!) {
                                          if (variant!.id! ==
                                              itemProduct.variationId) {
                                            variantName = variant.name;
                                          }
                                        }
                                      }
                                      String addon = '';
                                      for (int i = 0;
                                          i < itemProduct.modifierSets!.length;
                                          i++) {
                                        for (var modifier in itemProduct
                                            .modifierSets![i].modifierCart!) {
                                          if (modifier.quantity! > 0) {
                                            addon = addon == ''
                                                ? '${modifier.name} (${modifier.quantity})'
                                                : '$addon, ${modifier.name} (${modifier.quantity})';
                                          }
                                        }
                                      }
                                      return Container(
                                          constraints: const BoxConstraints(
                                              minHeight: 30),
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 3),
                                          child: Column(
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        vertical: 5.0),
                                                child: Row(
                                                  children: [
                                                    SizedBox(
                                                      width: 35,
                                                      child: Text(
                                                        '${itemProduct.quantity}x',
                                                        textAlign:
                                                            TextAlign.start,
                                                        style: GlobalStyles
                                                                .robotoRegular(
                                                                    context)
                                                            .copyWith(
                                                          fontSize: Dimensions
                                                              .FONT_SIZE_DEFAULT,
                                                        ),
                                                      ),
                                                    ),
                                                    ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                      child: CachedNetworkImage(
                                                        width: Get.width * 0.15,
                                                        height:
                                                            Get.width * 0.13,
                                                        fit: BoxFit.cover,
                                                        imageUrl: itemProduct
                                                                .imageUrl ??
                                                            '',
                                                        errorWidget: (context,
                                                                url, error) =>
                                                            const ErrorWidgetImage(),
                                                      ),
                                                    ),
                                                    const SizedBox(
                                                      width: Dimensions
                                                          .PADDING_SIZE_SMALL,
                                                    ),
                                                    Expanded(
                                                      flex: 5,
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          SizedBox(
                                                              child: Text(
                                                            "${itemProduct.name!} - $variantName",
                                                            style: GlobalStyles
                                                                    .robotoRegular(
                                                                        context)
                                                                .copyWith(
                                                              fontSize: Dimensions
                                                                  .FONT_SIZE_DEFAULT,
                                                            ),
                                                          )),
                                                          if (addon.isNotEmpty)
                                                            const SizedBox(
                                                              height: Dimensions
                                                                  .PADDING_SIZE_EXTRA_SMALL,
                                                            ),
                                                          if (addon.isNotEmpty)
                                                            Text(
                                                              '${'addons_food'.tr}: $addon',
                                                              style: GlobalStyles
                                                                      .robotoRegular(
                                                                          context)
                                                                  .copyWith(
                                                                fontSize: Dimensions
                                                                    .FONT_SIZE_DEFAULT,
                                                                color: Theme.of(
                                                                        context)
                                                                    .hintColor,
                                                              ),
                                                            ),
                                                        ],
                                                      ),
                                                    ),
                                                    Container(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 10),
                                                      constraints:
                                                          const BoxConstraints(
                                                              minWidth: 30),
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .end,
                                                        children: [
                                                          Text(
                                                            formatCurrency(
                                                                price: tableOrder
                                                                        .tempTotal[
                                                                    indexCart]),
                                                            style: GlobalStyles.robotoBold(
                                                                    context)
                                                                .copyWith(
                                                                    fontSize:
                                                                        Dimensions
                                                                            .FONT_SIZE_DEFAULT,
                                                                    color: Colors
                                                                            .amber[
                                                                        900],
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600),
                                                          ),
                                                        ],
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                              if (indexCart !=
                                                  tableOrder.productsInCart
                                                          .length -
                                                      1)
                                                const Divider(
                                                  height: 1,
                                                )
                                            ],
                                          ));
                                    }),
                                Container(
                                  margin:
                                      const EdgeInsets.symmetric(vertical: 5),
                                  height: 3,
                                  color: Colors.grey.shade200,
                                ),
                                if (itemProducts.length < 4)
                                  const SizedBox(height: 20),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width: 50,
                                      child: Text('${'table'.tr} :',
                                          style:
                                              GlobalStyles.robotoBold(context)),
                                    ),
                                    Expanded(
                                      child: Text(
                                        tableOrder.selectedTable.value,
                                        style:
                                            GlobalStyles.robotoRegular(context)
                                                .copyWith(
                                          fontSize:
                                              Dimensions.FONT_SIZE_DEFAULT,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                if (itemProducts.length < 4)
                                  const SizedBox(height: 20),
                                if (tableOrder.noteOrder.value != '')
                                  Row(
                                    children: [
                                      Text.rich(
                                        TextSpan(
                                          children: [
                                            TextSpan(
                                              text: 'note_order'.tr,
                                              style: GlobalStyles.robotoBold(
                                                  context),
                                            ),
                                            TextSpan(
                                              text:
                                                  ': ${tableOrder.noteOrder.value}',
                                              style: GlobalStyles.robotoRegular(
                                                      context)
                                                  .copyWith(
                                                fontSize: Dimensions
                                                    .FONT_SIZE_DEFAULT,
                                              ),
                                            ),
                                          ],
                                        ),
                                        maxLines: 5,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.justify,
                                      ),
                                    ],
                                  ),
                                if (tableOrder.noteOrder.value != '' &&
                                    itemProducts.length < 4)
                                  const SizedBox(height: 20),
                                const SizedBox(height: 10),
                                Container(
                                    color: Colors.white,
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                        Dimensions.PADDING_SIZE_DEFAULT,
                                        Dimensions.PADDING_SIZE_SMALL,
                                        Dimensions.PADDING_SIZE_DEFAULT,
                                        0,
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
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
                                          contactModel != null
                                              ? ListTile(
                                                  leading: IconButton(
                                                    icon: const Icon(
                                                        Icons.remove),
                                                    onPressed: () {
                                                      setState(() {
                                                        contactModel = null;
                                                      });
                                                      tableOrder.contactModel
                                                              .value =
                                                          ContactModel(
                                                              id: 0,
                                                              name: '',
                                                              mobile: '');
                                                    },
                                                  ),
                                                  title: Obx(
                                                    () => Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(tableOrder
                                                            .contactModel
                                                            .value
                                                            .name!),
                                                        Text(tableOrder
                                                            .contactModel
                                                            .value
                                                            .mobile!)
                                                      ],
                                                    ),
                                                  ),
                                                )
                                              : const SizedBox()
                                        ],
                                      ),
                                    )),
                                Stack(
                                  children: [
                                    Column(
                                      children: [
                                        if (itemProducts.length < 4)
                                          const SizedBox(height: 50),
                                        SizedBox(
                                          height: 30,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Expanded(
                                                flex: 3,
                                                child: Text(
                                                  'items_price_food'.tr,
                                                  style:
                                                      GlobalStyles.robotoBold(
                                                              context)
                                                          .copyWith(
                                                    fontSize: Dimensions
                                                        .FONT_SIZE_LARGE,
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                flex: 2,
                                                child: Obx(
                                                  () => Text(
                                                    tableOrder.amountCart.value
                                                        .toString(),
                                                    style: GlobalStyles
                                                        .robotoRegular(context),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 30,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Expanded(
                                                flex: 3,
                                                child: Text(
                                                  'payable_amount'.tr,
                                                  style: GlobalStyles
                                                      .robotoRegular(context),
                                                ),
                                              ),
                                              Expanded(
                                                flex: 2,
                                                child: Obx(
                                                  () => Text(
                                                    formatCurrency(
                                                        price: tableOrder
                                                            .totalAmount.value),
                                                    style: GlobalStyles
                                                        .robotoRegular(context),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 30,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Expanded(
                                                flex: 3,
                                                child: Text(
                                                  'paid_amount'.tr,
                                                  style: GlobalStyles
                                                      .robotoRegular(context),
                                                ),
                                              ),
                                              Expanded(
                                                flex: 2,
                                                child: TextFormField(
                                                  controller: paidCtrl,
                                                  decoration: InputDecoration(
                                                    border: InputBorder.none,
                                                    focusedBorder:
                                                        InputBorder.none,
                                                    enabledBorder:
                                                        InputBorder.none,
                                                    errorBorder:
                                                        InputBorder.none,
                                                    disabledBorder:
                                                        InputBorder.none,
                                                    hintText:
                                                        '${'enter'.tr}...',
                                                    hintStyle: TextStyle(
                                                        color: primaryColor),
                                                  ),
                                                  style: TextStyle(
                                                      color: primaryColor),
                                                  onChanged: (value) {
                                                    if (paidCtrl.text == "") {
                                                      tableOrder.change.value =
                                                          0;
                                                    } else {
                                                      tableOrder.change
                                                          .value = int.parse(
                                                              paidCtrl.text) -
                                                          tableOrder.totalAmount
                                                              .value;
                                                    }
                                                  },
                                                  onFieldSubmitted: (value) {
                                                    if (paidCtrl.text == "") {
                                                      tableOrder.change.value =
                                                          0;
                                                    } else {
                                                      if (int.parse(
                                                              paidCtrl.text) >=
                                                          tableOrder.totalAmount
                                                              .value) {
                                                        tableOrder.change
                                                            .value = int.parse(
                                                                paidCtrl.text) -
                                                            tableOrder
                                                                .totalAmount
                                                                .value;
                                                      } else {
                                                        AwesomeDialog(
                                                            context: context,
                                                            dialogType:
                                                                DialogType
                                                                    .warning,
                                                            animType: AnimType
                                                                .bottomSlide,
                                                            title: 'warning'.tr,
                                                            desc:
                                                                'please_pay'.tr,
                                                            btnOkText: 'ok'.tr,
                                                            btnOkOnPress: () {
                                                              paidCtrl.text =
                                                                  '';
                                                              tableOrder.change
                                                                  .value = 0;
                                                            }).show();
                                                      }
                                                    }
                                                  },
                                                  keyboardType:
                                                      TextInputType.number,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 30,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Expanded(
                                                flex: 3,
                                                child: Text(
                                                  'change_food'.tr,
                                                  style:
                                                      GlobalStyles.robotoBold(
                                                              context)
                                                          .copyWith(
                                                    fontSize: Dimensions
                                                        .FONT_SIZE_LARGE,
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                flex: 2,
                                                child: Obx(
                                                  () => Text(
                                                    formatCurrency(
                                                        price: tableOrder
                                                            .change.value),
                                                    style:
                                                        GlobalStyles.robotoBold(
                                                                context)
                                                            .copyWith(
                                                      fontSize: Dimensions
                                                          .FONT_SIZE_LARGE,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(height: 20),
                                      ],
                                    ),
                                    isSearch
                                        ? BlocBuilder<CustomersCubit,
                                            CustomersState>(
                                            builder: (context, state) {
                                              return Container(
                                                color: Colors.white,
                                                child: ListView.builder(
                                                  physics:
                                                      const NeverScrollableScrollPhysics(),
                                                  shrinkWrap: true,
                                                  itemCount: state
                                                      .data!.customers.length,
                                                  itemBuilder:
                                                      (context, index) =>
                                                          GFListTile(
                                                    padding: const EdgeInsets
                                                            .symmetric(
                                                        horizontal: 10,
                                                        vertical: 8),
                                                    margin: const EdgeInsets
                                                            .symmetric(
                                                        horizontal: Dimensions
                                                            .PADDING_SIZE_DEFAULT,
                                                        vertical: 5),
                                                    color: Colors.white,
                                                    onTap: () {
                                                      setState(() {
                                                        isSearch = false;
                                                        contactModel = state
                                                            .data!.customers
                                                            .elementAt(index);
                                                      });
                                                      tableOrder.contactModel
                                                              .value =
                                                          state.data!.customers
                                                              .elementAt(index);
                                                    },
                                                    title: Text(
                                                      state.data!.customers
                                                          .elementAt(index)
                                                          .name
                                                          .toString(),
                                                      style: const TextStyle(
                                                          fontSize: Dimensions
                                                              .FONT_SIZE_LARGE),
                                                    ),
                                                    shadow: const BoxShadow(
                                                        offset: Offset.zero,
                                                        blurStyle:
                                                            BlurStyle.solid),
                                                  ),
                                                ),
                                              );
                                            },
                                          )
                                        : const SizedBox(),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Obx(
                        () => Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: Dimensions.PADDING_SIZE_DEFAULT,
                              vertical: Dimensions.PADDING_SIZE_DEFAULT),
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                offset: Offset(1.0, 0.0),
                                blurRadius: 6.0,
                              ),
                            ],
                          ),
                          height: itemProducts.length < 4
                              ? Get.height * 0.15
                              : null,
                          child: Row(
                            children: [
                              Expanded(
                                child: CustomButton2(
                                  height: 50,
                                  width: 170,
                                  transparent: tableOrder.change.value == 0 &&
                                          paidCtrl.text.isEmpty
                                      ? false
                                      : true,
                                  buttonText: 'pay_after_eating'.tr,
                                  fontSize: Dimensions.FONT_SIZE_LARGE,
                                  onPressed: () async {
                                    if (tableOrder.contactModel.value.id == 0) {
                                      AwesomeDialog(
                                              context: context,
                                              dialogType: DialogType.warning,
                                              animType: AnimType.bottomSlide,
                                              title: 'warning'.tr,
                                              desc: 'please_select_customer'.tr,
                                              btnOkText: 'ok'.tr,
                                              btnOkOnPress: () {})
                                          .show();
                                    } else {
                                      _globalKey.currentContext!
                                          .read<AddTableOrderCubit>()
                                          .addOrder(
                                            saleNote:
                                                tableOrder.noteOrder.value,
                                            tableId: tableOrder.tableId.value,
                                            contactId: tableOrder
                                                .contactModel.value.id,
                                            itemProducts:
                                                tableOrder.productsInCart.value,
                                          );
                                      await _appPrefs.removeNote();
                                      await _appPrefs.removeCart();
                                      for (int i = 0;
                                          i < tableOrder.productsInCart.length;
                                          i++) {
                                        tableOrder.productsInCart[i].quantity =
                                            0;
                                        for (int j = 0;
                                            j <
                                                tableOrder.productsInCart[i]
                                                    .addOns!.length;
                                            j++) {
                                          tableOrder.productsInCart[i]
                                              .addOns![j].quantity = 0;
                                        }
                                      }
                                      _globalKey.currentContext!
                                          .read<CartCubit>()
                                          .removeAll();
                                      _globalKey.currentContext!
                                          .read<CartCubit>()
                                          .getCart();
                                      navigator!.pushNamed(RouteGenerator
                                          .orderFoodSuccessScreen);
                                    }
                                  },
                                ),
                              ),
                              const SizedBox(width: 20),
                              Expanded(
                                child: CustomButton2(
                                  height: 50,
                                  width: 170,
                                  transparent:
                                      paidCtrl.text.isNotEmpty ? false : true,
                                  buttonText: 'confirm_payment'.tr,
                                  fontSize: Dimensions.FONT_SIZE_LARGE,
                                  onPressed: () async {
                                    if (tableOrder.contactModel.value.id == 0) {
                                      AwesomeDialog(
                                              context: context,
                                              dialogType: DialogType.warning,
                                              animType: AnimType.bottomSlide,
                                              title: 'warning'.tr,
                                              desc: 'please_select_customer'.tr,
                                              btnOkText: 'ok'.tr,
                                              btnOkOnPress: () {})
                                          .show();
                                    } else if (paidCtrl.text.isEmpty ||
                                        int.parse(paidCtrl.text) <
                                            tableOrder.totalAmount.value) {
                                      AwesomeDialog(
                                          context: context,
                                          dialogType: DialogType.warning,
                                          animType: AnimType.bottomSlide,
                                          title: 'warning'.tr,
                                          desc: 'please_pay'.tr,
                                          btnOkText: 'ok'.tr,
                                          btnOkOnPress: () {
                                            paidCtrl.text = '';
                                            tableOrder.change.value = 0;
                                          }).show();
                                    } else if (int.parse(paidCtrl.text) >=
                                        tableOrder.totalAmount.value) {
                                      _globalKey.currentContext!
                                          .read<AddTableOrderCubit>()
                                          .addOrder(
                                            saleNote:
                                                tableOrder.noteOrder.value,
                                            tableId: tableOrder.tableId.value,
                                            contactId: tableOrder
                                                .contactModel.value.id,
                                            itemProducts:
                                                tableOrder.productsInCart.value,
                                          );
                                      await _appPrefs.removeCart();
                                      await _appPrefs.removeNote();
                                      for (int i = 0;
                                          i < tableOrder.productsInCart.length;
                                          i++) {
                                        tableOrder.productsInCart[i].quantity =
                                            0;
                                        for (int j = 0;
                                            j <
                                                tableOrder.productsInCart[i]
                                                    .addOns!.length;
                                            j++) {
                                          tableOrder.productsInCart[i]
                                              .addOns![j].quantity = 0;
                                        }
                                      }
                                      _globalKey.currentContext!
                                          .read<CartCubit>()
                                          .removeAll();
                                      _globalKey.currentContext!
                                          .read<CartCubit>()
                                          .getCart();
                                      navigator!.pushNamed(RouteGenerator
                                          .orderFoodSuccessScreen);
                                    }
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  );
                },
              );
            });
          },
        ),
      ),
    );
  }
}
