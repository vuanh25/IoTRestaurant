// ignore_for_file: use_build_context_synchronously

import 'dart:async';
import 'package:after_layout/after_layout.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:di4l_pos/common/dimensions.dart';
import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/common/global_images.dart';
import 'package:di4l_pos/common/global_styles.dart';
import 'package:di4l_pos/common/storage/app_prefs.dart';
import 'package:di4l_pos/enums/status_type.dart';
import 'package:di4l_pos/get_it.dart';
import 'package:di4l_pos/models/cart_table_order/cart_model.dart';
import 'package:di4l_pos/models/table/response/table_response.dart';
import 'package:di4l_pos/route_generator.dart';
import 'package:di4l_pos/screens/cart_table_order_screen/cubit/cart_table_order_cubit.dart';
import 'package:di4l_pos/screens/category_screen/cubit/category_cubit.dart';
import 'package:di4l_pos/screens/table_order_screen/cubit/table_order_cubit.dart';
import 'package:di4l_pos/screens/table_order_screen/mobile/table_order_mobile_screen.dart';
import 'package:di4l_pos/screens/table_order_screen/widgets/calculation_view.dart';
import 'package:di4l_pos/screens/table_order_screen/widgets/common.dart';
import 'package:di4l_pos/screens/table_order_screen/widgets/custom_button_order.dart';
import 'package:di4l_pos/widgets/data/404_widget.dart';
import 'package:di4l_pos/widgets/data/app_loading_widget.dart';
import 'package:di4l_pos/widgets/data/no_data_widget.dart';
import 'package:di4l_pos/widgets/error_image_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';
import 'package:intl/intl.dart';

class CartTableOrderScreen extends StatefulWidget {
  static MultiBlocProvider provider() {
    return MultiBlocProvider(
      providers: [
        BlocProvider<CartCubit>(
          create: (BuildContext context) => CartCubit(),
        ),
        BlocProvider<TableCubit>(
          create: (BuildContext context) => TableCubit(),
        ),
        BlocProvider<CategoryCubit>(
          create: (BuildContext context) => CategoryCubit(),
        ),
      ],
      child: const CartTableOrderScreen(),
    );
  }

  const CartTableOrderScreen({Key? key}) : super(key: key);
  @override
  State<CartTableOrderScreen> createState() => _CartTableOrderScreenState();
}

class _CartTableOrderScreenState extends State<CartTableOrderScreen>
    with AfterLayoutMixin {
  /// MARK: - Initials;
  static ValueNotifier<String> selectedTable = ValueNotifier('');
  static ValueNotifier<String> selectTable = ValueNotifier('');
  static List<List<ValueNotifier<int>>> tempAddOns = [];
  final tableOrder = Get.put(TableOrderController());
  final _appPrefs = getIt<AppPref>();
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey();
  Color primaryColor = GlobalColors.primaryColor;

  @override
  FutureOr<void> afterFirstLayout(BuildContext context) async {
    context.read<TableCubit>().getTables();
    context.read<CartCubit>().getCart();
    selectedTable.value = tableOrder.selectedTable.value;
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      appBar: AppBar(
        leading: const BackButton(
          color: Colors.black,
        ),
        title: Text('cart'.tr),
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
      body: BlocBuilder<CartCubit, CartState>(
        builder: (context, stateCart) {
          final hasData =
              (stateCart.data?.listItemProduct)!.isEmpty ? false : true;
          final itemProducts = stateCart.data?.listItemProduct ?? [];
          int total = 0;
          tableOrder.tempTotal.value = [];
          if (itemProducts.isNotEmpty) {
            for (int i = 0; i < itemProducts.length; i++) {
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

          switch (stateCart.data!.status) {
            case StatusType.loading:
              return const AppLoadingWidget(
                widget: null,
                text: 'Loading...',
              );
            case StatusType.loaded:
              return hasData
                  ? Column(
                      children: [
                        Expanded(
                          child: SingleChildScrollView(
                            physics: const BouncingScrollPhysics(),
                            child: Padding(
                              padding: const EdgeInsets.all(15),
                              child: Column(
                                children: [
                                  BlocBuilder<TableCubit, TableState>(
                                    builder: (context, state) {
                                      final tables = state.data?.tables ?? [];
                                      return Obx(
                                        () => Row(
                                          children: [
                                            Expanded(
                                              child:
                                                  // Obx(
                                                  //   () =>
                                                  Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  tableOrder.selectedTable
                                                              .value ==
                                                          ''
                                                      ? InkWell(
                                                          onTap: () {
                                                            setTable(context,
                                                                tables);
                                                          },
                                                          splashColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          child: Text(
                                                            'select_table'.tr,
                                                            style: GlobalStyles
                                                                    .robotoRegular(
                                                                        context)
                                                                .copyWith(
                                                              fontSize: Dimensions
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
                                                              setTable(context,
                                                                  tables);
                                                            },
                                                            splashColor: Colors
                                                                .transparent,
                                                            highlightColor:
                                                                Colors
                                                                    .transparent,
                                                            child: Text(
                                                              tableOrder
                                                                  .selectedTable
                                                                  .value,
                                                              style: GlobalStyles
                                                                      .robotoBold(
                                                                          context)
                                                                  .copyWith(
                                                                fontSize: Dimensions
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
                                              splashColor: Colors.transparent,
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
                                            if (tableOrder
                                                    .selectedTable.value !=
                                                '')
                                              InkWell(
                                                splashColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  tableOrder
                                                      .selectedTable.value = '';
                                                  selectedTable.value = '';
                                                  await _appPrefs.removeTable();
                                                },
                                                child: const Icon(
                                                    Icons.close_outlined,
                                                    color: Colors.red,
                                                    size: 25),
                                              )
                                          ],
                                        ),
                                      );
                                    },
                                  ),
                                  if (itemProducts.length < 4)
                                    const SizedBox(height: 15),
                                  Container(
                                    margin:
                                        const EdgeInsets.symmetric(vertical: 5),
                                    height: 3,
                                    color: Colors.grey.shade200,
                                  ),
                                  ListView.builder(
                                      itemCount: itemProducts.length,
                                      shrinkWrap: true,
                                      physics:
                                          const NeverScrollableScrollPhysics(),
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
                                            i <
                                                itemProduct
                                                    .modifierSets!.length;
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
                                        List<ModifierSet> modifierSets = [];
                                        if (itemProduct
                                            .modifierSets!.isNotEmpty) {
                                          modifierSets =
                                              itemProduct.modifierSets!;
                                          int temp = 0;
                                          for (int i = 0;
                                              i <
                                                  itemProduct
                                                      .modifierSets!.length;
                                              i++) {
                                            for (var modifier in itemProduct
                                                .modifierSets![i]
                                                .modifierCart!) {
                                              if (modifier.quantity! > 0) {
                                                temp += modifier.price! *
                                                    modifier.quantity!;
                                              }
                                            }
                                            tableOrder.tempTotal[indexCart] =
                                                itemProduct.price! *
                                                        itemProduct.quantity! +
                                                    temp;
                                          }
                                        } else {
                                          tableOrder.tempTotal[indexCart] =
                                              itemProduct.price! *
                                                  itemProduct.quantity!;
                                        }
                                        return InkWell(
                                          onTap: () {
                                            tableOrder.tempQuantity.value =
                                                itemProduct.quantity!;
                                            tempAddOns = [];
                                            if (itemProduct
                                                .modifierSets!.isNotEmpty) {
                                              for (int i = 0;
                                                  i <
                                                      itemProduct
                                                          .modifierSets!.length;
                                                  i++) {
                                                final temp =
                                                    <ValueNotifier<int>>[];
                                                for (var modifier in itemProduct
                                                    .modifierSets![i]
                                                    .modifierCart!) {
                                                  temp.add(ValueNotifier<int>(
                                                      modifier.quantity!));
                                                }
                                                tempAddOns.add(temp);
                                              }
                                            }
                                            showModalBottomSheet(
                                                context: context,
                                                isScrollControlled: true,
                                                enableDrag: false,
                                                backgroundColor:
                                                    Colors.transparent,
                                                constraints:
                                                    BoxConstraints.expand(
                                                        height: modifierSets
                                                                .isNotEmpty
                                                            ? Get.height * 0.7
                                                            : Get.height * 0.6),
                                                builder: (context) {
                                                  for (int j = 0;
                                                      j <
                                                          itemProduct
                                                              .productVariations!
                                                              .length;
                                                      j++) {
                                                    for (var variant
                                                        in itemProduct
                                                            .productVariations![
                                                                j]!
                                                            .variations!) {
                                                      if (variant!.id! ==
                                                          itemProduct
                                                              .variationId) {
                                                        tableOrder.tempVariantId
                                                                .value =
                                                            variant.id!;
                                                        tableOrder.tempPrice
                                                                .value =
                                                            stringDoubleToInt(
                                                                variant
                                                                    .defaultSellPrice!);
                                                      }
                                                    }
                                                  }
                                                  tableOrder
                                                          .totalOneItem.value =
                                                      totalPriceOneItem(
                                                          quantity: tableOrder
                                                              .tempQuantity
                                                              .value,
                                                          price: tableOrder
                                                              .tempPrice.value,
                                                          modifierSets:
                                                              modifierSets);
                                                  return Stack(
                                                    children: [
                                                      Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          color: Colors
                                                              .grey.shade100,
                                                          borderRadius:
                                                              const BorderRadius
                                                                      .only(
                                                                  topLeft: Radius
                                                                      .circular(
                                                                          20),
                                                                  topRight: Radius
                                                                      .circular(
                                                                          20)),
                                                        ),
                                                        child: Column(
                                                          children: [
                                                            Expanded(
                                                              child:
                                                                  SingleChildScrollView(
                                                                physics:
                                                                    const BouncingScrollPhysics(),
                                                                child:
                                                                    Container(
                                                                  padding: const EdgeInsets
                                                                          .all(
                                                                      Dimensions
                                                                          .PADDING_SIZE_DEFAULT),
                                                                  child: Column(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .min,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      const SizedBox(
                                                                          height:
                                                                              10),
                                                                      Row(
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.center,
                                                                        children: [
                                                                          ClipRRect(
                                                                            borderRadius:
                                                                                BorderRadius.circular(10),
                                                                            child:
                                                                                Image.network(
                                                                              itemProduct.imageUrl!,
                                                                              width: 150,
                                                                              height: 120,
                                                                              fit: BoxFit.cover,
                                                                            ),
                                                                          ),
                                                                          const SizedBox(
                                                                            width:
                                                                                15,
                                                                          ),
                                                                          Expanded(
                                                                            child:
                                                                                Column(
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              children: [
                                                                                Row(
                                                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                  children: [
                                                                                    Flexible(
                                                                                      child: Text(
                                                                                        "${itemProduct.name}",
                                                                                        style: GlobalStyles.robotoBold(context).copyWith(
                                                                                          fontSize: 25,
                                                                                        ),
                                                                                        maxLines: 2,
                                                                                        overflow: TextOverflow.ellipsis,
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                                const SizedBox(height: 10),
                                                                                Row(
                                                                                  children: [
                                                                                    Obx(
                                                                                      () => Text(
                                                                                        formatCurrency(price: tableOrder.tempPrice.value),
                                                                                        style: const TextStyle(
                                                                                          fontWeight: FontWeight.w500,
                                                                                          fontSize: 20,
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                    if (itemProduct.unit != null && itemProduct.unit!.shortName != "" && itemProduct.unit!.shortName != null)
                                                                                      Text(
                                                                                        ' /${itemProduct.unit!.shortName}',
                                                                                        style: const TextStyle(
                                                                                          fontWeight: FontWeight.w500,
                                                                                          fontSize: 20,
                                                                                        ),
                                                                                      ),
                                                                                  ],
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                      const SizedBox(
                                                                          height:
                                                                              Dimensions.PADDING_SIZE_SMALL),
                                                                      description(
                                                                          itemProduct
                                                                              .description),
                                                                      if (itemProduct
                                                                              .description ==
                                                                          null)
                                                                        const SizedBox(
                                                                            height:
                                                                                Dimensions.PADDING_SIZE_DEFAULT),
                                                                      if (itemProduct
                                                                              .productVariations !=
                                                                          null) ...[
                                                                        Text(
                                                                          'variant'
                                                                              .tr,
                                                                          style:
                                                                              GlobalStyles.robotoBold(context).copyWith(
                                                                            fontSize:
                                                                                20,
                                                                          ),
                                                                        ),
                                                                        const SizedBox(
                                                                            height:
                                                                                Dimensions.PADDING_SIZE_SMALL),
                                                                        ListView
                                                                            .builder(
                                                                          shrinkWrap:
                                                                              true,
                                                                          physics:
                                                                              const NeverScrollableScrollPhysics(),
                                                                          itemCount: itemProduct
                                                                              .productVariations!
                                                                              .length,
                                                                          itemBuilder:
                                                                              (context, indexVariant) {
                                                                            final variant =
                                                                                itemProduct.productVariations![indexVariant];
                                                                            return GridView.builder(
                                                                                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                                                                  crossAxisCount: 3,
                                                                                  crossAxisSpacing: 5.0,
                                                                                  mainAxisSpacing: 5.0,
                                                                                  childAspectRatio: (1 / .25),
                                                                                ),
                                                                                shrinkWrap: true,
                                                                                physics: const NeverScrollableScrollPhysics(),
                                                                                itemCount: variant!.variations!.length,
                                                                                itemBuilder: (context, indexEachVariant) {
                                                                                  final eachVariant = variant.variations![indexEachVariant];
                                                                                  return Obx(
                                                                                    () => Container(
                                                                                        child: tableOrder.tempVariantId.value == eachVariant!.id
                                                                                            ? GFButton(
                                                                                                onPressed: () {},
                                                                                                text: eachVariant.name,
                                                                                                shape: GFButtonShape.pills,
                                                                                                color: GlobalColors.primaryColor,
                                                                                              )
                                                                                            : GFButton(
                                                                                                onPressed: () {
                                                                                                  tableOrder.tempVariantId.value = eachVariant.id!;
                                                                                                  tableOrder.tempPrice.value = stringDoubleToInt(eachVariant.defaultSellPrice!);
                                                                                                  tableOrder.totalOneItem.value = totalPriceOneItem(quantity: tableOrder.tempQuantity.value, price: tableOrder.tempPrice.value, modifierSets: modifierSets);
                                                                                                },
                                                                                                text: eachVariant.name,
                                                                                                shape: GFButtonShape.pills,
                                                                                                type: GFButtonType.outline,
                                                                                                color: Colors.black54,
                                                                                              )),
                                                                                  );
                                                                                });
                                                                          },
                                                                        ),
                                                                        const SizedBox(
                                                                            height:
                                                                                Dimensions.PADDING_SIZE_SMALL),
                                                                      ],
                                                                      if (modifierSets
                                                                          .isNotEmpty)
                                                                        addonsView(
                                                                            context,
                                                                            modifierSets,
                                                                            itemProduct.price!),
                                                                      const SizedBox(
                                                                          height:
                                                                              Dimensions.PADDING_SIZE_LARGE),
                                                                      Row(
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.center,
                                                                        children: [
                                                                          editButton(
                                                                            width:
                                                                                30,
                                                                            height:
                                                                                30,
                                                                            icon:
                                                                                Icons.remove,
                                                                            iconSize:
                                                                                20,
                                                                            onTap:
                                                                                () {
                                                                              if (tableOrder.tempQuantity.value > 0) {
                                                                                tableOrder.tempQuantity.value = tableOrder.tempQuantity.value - 1;
                                                                                tableOrder.totalOneItem.value = totalPriceOneItem(quantity: tableOrder.tempQuantity.value, price: tableOrder.tempPrice.value, modifierSets: modifierSets);
                                                                              }
                                                                            },
                                                                          ),
                                                                          Obx(
                                                                            () =>
                                                                                SizedBox(
                                                                              width: 55,
                                                                              child: Center(
                                                                                child: Text(
                                                                                  '${tableOrder.tempQuantity.value}',
                                                                                  style: GlobalStyles.robotoBold(context).copyWith(
                                                                                    fontSize: Dimensions.FONT_SIZE_EXTRA_LARGE,
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          editButton(
                                                                            width:
                                                                                30,
                                                                            height:
                                                                                30,
                                                                            icon:
                                                                                Icons.add,
                                                                            iconSize:
                                                                                20,
                                                                            onTap:
                                                                                () {
                                                                              tableOrder.tempQuantity.value = tableOrder.tempQuantity.value + 1;
                                                                              tableOrder.totalOneItem.value = totalPriceOneItem(quantity: tableOrder.tempQuantity.value, price: itemProduct.price!, modifierSets: modifierSets);
                                                                            },
                                                                          ),
                                                                        ],
                                                                      ),
                                                                      const SizedBox(
                                                                          height:
                                                                              Dimensions.PADDING_SIZE_EXTRA_LARGE),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            Container(
                                                              padding:
                                                                  const EdgeInsets
                                                                          .all(
                                                                      Dimensions
                                                                          .PADDING_SIZE_DEFAULT),
                                                              width: double
                                                                  .infinity,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Colors
                                                                    .grey
                                                                    .shade100,
                                                                boxShadow: const [
                                                                  BoxShadow(
                                                                    color: Colors
                                                                        .grey,
                                                                    offset:
                                                                        Offset(
                                                                            1.0,
                                                                            0.0),
                                                                    blurRadius:
                                                                        6.0,
                                                                  ),
                                                                ],
                                                              ),
                                                              child:
                                                                  CustomButton2(
                                                                height: 45,
                                                                width: double
                                                                    .infinity,
                                                                buttonText:
                                                                    'update_in_cart'
                                                                        .tr,
                                                                printTotal:
                                                                    true,
                                                                onPressed:
                                                                    () async {
                                                                  for (int i =
                                                                          0;
                                                                      i <
                                                                          tableOrder
                                                                              .productsInCart
                                                                              .length;
                                                                      i++) {
                                                                    if (itemProduct
                                                                            .productId ==
                                                                        tableOrder
                                                                            .productsInCart[i]
                                                                            .productId) {
                                                                      if (tableOrder
                                                                              .tempQuantity
                                                                              .value ==
                                                                          0) {
                                                                        _globalKey
                                                                            .currentContext!
                                                                            .read<CartCubit>()
                                                                            .removeProductAt(index: indexCart);
                                                                        for (int i =
                                                                                0;
                                                                            i < modifierSets.length;
                                                                            i++) {
                                                                          for (var modifier
                                                                              in modifierSets[i].modifierCart!) {
                                                                            modifier.quantity =
                                                                                0;
                                                                          }
                                                                        }
                                                                        tableOrder
                                                                            .amountCart
                                                                            .value = 0;
                                                                        for (int i =
                                                                                0;
                                                                            i < tableOrder.productsInCart.length;
                                                                            i++) {
                                                                          tableOrder
                                                                              .amountCart
                                                                              .value = tableOrder
                                                                                  .amountCart.value +
                                                                              tableOrder.productsInCart[i].quantity!;
                                                                        }
                                                                        _globalKey
                                                                            .currentContext!
                                                                            .read<CartCubit>()
                                                                            .getCart();
                                                                        break;
                                                                      } else {
                                                                        tableOrder
                                                                            .productsInCart[i]
                                                                            .quantity = tableOrder.tempQuantity.value;
                                                                        tableOrder
                                                                            .productsInCart[i]
                                                                            .variationId = tableOrder.tempVariantId.value;
                                                                        tableOrder
                                                                            .productsInCart[i]
                                                                            .price = tableOrder.tempPrice.value;
                                                                        for (int j =
                                                                                0;
                                                                            j < itemProduct.modifierSets!.length;
                                                                            j++) {
                                                                          for (int k = 0;
                                                                              k < itemProduct.modifierSets![j].modifierCart!.length;
                                                                              k++) {
                                                                            tableOrder.productsInCart[i].modifierSets![j].modifierCart![k].quantity =
                                                                                tempAddOns[j][k].value;
                                                                          }
                                                                        }
                                                                        break;
                                                                      }
                                                                    }
                                                                  }
                                                                  tableOrder
                                                                      .amountCart
                                                                      .value = 0;
                                                                  for (int i =
                                                                          0;
                                                                      i <
                                                                          tableOrder
                                                                              .productsInCart
                                                                              .length;
                                                                      i++) {
                                                                    tableOrder
                                                                        .amountCart
                                                                        .value = tableOrder
                                                                            .amountCart
                                                                            .value +
                                                                        tableOrder
                                                                            .productsInCart[i]
                                                                            .quantity!;
                                                                  }
                                                                  _globalKey
                                                                      .currentContext!
                                                                      .read<
                                                                          CartCubit>()
                                                                      .getCart();
                                                                  navigator!
                                                                      .pop();
                                                                },
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Positioned(
                                                        left: Get.width * 0.9,
                                                        top: -5,
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .only(
                                                                  top: 10),
                                                          child: InkWell(
                                                            onTap: () {
                                                              navigator!.pop();
                                                            },
                                                            child: const Icon(
                                                              Icons.close,
                                                              color:
                                                                  Colors.black,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  );
                                                });
                                          },
                                          splashColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          child: Column(
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        vertical: 8.0),
                                                child: Row(
                                                  children: [
                                                    ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                      child: Stack(
                                                          alignment:
                                                              AlignmentDirectional
                                                                  .center,
                                                          children: [
                                                            CachedNetworkImage(
                                                              width: Get.width *
                                                                  0.18,
                                                              height:
                                                                  Get.width *
                                                                      0.15,
                                                              fit: BoxFit.cover,
                                                              imageUrl: itemProduct
                                                                      .imageUrl ??
                                                                  '',
                                                              errorWidget: (context,
                                                                      url,
                                                                      error) =>
                                                                  const ErrorWidgetImage(),
                                                            ),
                                                          ]),
                                                    ),
                                                    const SizedBox(
                                                      width: Dimensions
                                                          .PADDING_SIZE_DEFAULT,
                                                    ),
                                                    SizedBox(
                                                      width: Get.width * 0.69,
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
                                                                    context),
                                                          )),
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
                                                                    .FONT_SIZE_SMALL,
                                                                color: Theme.of(
                                                                        context)
                                                                    .hintColor,
                                                              ),
                                                            ),
                                                          const SizedBox(
                                                            height: Dimensions
                                                                .PADDING_SIZE_EXTRA_SMALL,
                                                          ),
                                                          Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              SizedBox(
                                                                child: Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    Container(
                                                                      height:
                                                                          25,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                              borderRadius: const BorderRadius.all(
                                                                                Radius.circular(5),
                                                                              ),
                                                                              boxShadow: [
                                                                            BoxShadow(color: Colors.grey[200]!)
                                                                          ]),
                                                                      child:
                                                                          Row(
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.center,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.center,
                                                                        children: [
                                                                          InkWell(
                                                                            onTap:
                                                                                () async {
                                                                              for (int i = 0; i < tableOrder.productsInCart.length; i++) {
                                                                                if (itemProduct.productId == tableOrder.productsInCart[i].productId) {
                                                                                  if (tableOrder.productsInCart[i].quantity == 1) {
                                                                                    _globalKey.currentContext!.read<CartCubit>().removeProductAt(index: indexCart);
                                                                                    for (int i = 0; i < modifierSets.length; i++) {
                                                                                      for (var modifier in modifierSets[i].modifierCart!) {
                                                                                        modifier.quantity = 0;
                                                                                      }
                                                                                    }
                                                                                    // for (int i = 0; i < tableOrder.productsInCart.length; i++) {
                                                                                    //   if (itemProduct.productId == tableOrder.productsInCart[i].productId) {
                                                                                    //     tableOrder.productsInCart[i].variationId = tableOrder.productsInCart[i].productVariations![0]!.variations![0]!.id!;
                                                                                    //     tableOrder.tempVariantId.value = tableOrder.productsInCart[i].productVariations![0]!.variations![0]!.id!;
                                                                                    //     tableOrder.tempPrice.value = stringDoubleToInt(tableOrder.productsInCart[i].productVariations![0]!.variations![0]!.defaultSellPrice);
                                                                                    //   }
                                                                                    // }
                                                                                    tableOrder.amountCart.value = 0;
                                                                                    for (int i = 0; i < tableOrder.productsInCart.length; i++) {
                                                                                      tableOrder.amountCart.value = tableOrder.amountCart.value + tableOrder.productsInCart[i].quantity!;
                                                                                    }
                                                                                    _globalKey.currentContext!.read<CartCubit>().getCart();
                                                                                    break;
                                                                                  } else {
                                                                                    tableOrder.productsInCart[i].quantity = tableOrder.productsInCart[i].quantity! - 1;
                                                                                    break;
                                                                                  }
                                                                                }
                                                                              }
                                                                              tableOrder.amountCart.value = 0;
                                                                              for (int i = 0; i < tableOrder.productsInCart.length; i++) {
                                                                                tableOrder.amountCart.value = tableOrder.amountCart.value + tableOrder.productsInCart[i].quantity!;
                                                                              }
                                                                              _globalKey.currentContext!.read<CartCubit>().getCart();
                                                                            },
                                                                            child:
                                                                                const Icon(Icons.remove),
                                                                          ),
                                                                          const SizedBox(
                                                                            width:
                                                                                3,
                                                                          ),
                                                                          Container(
                                                                            constraints:
                                                                                const BoxConstraints(minWidth: 20),
                                                                            child:
                                                                                Text(
                                                                              '${itemProduct.quantity}',
                                                                              textAlign: TextAlign.center,
                                                                              style: GlobalStyles.robotoRegular(context),
                                                                            ),
                                                                          ),
                                                                          const SizedBox(
                                                                            width:
                                                                                3,
                                                                          ),
                                                                          InkWell(
                                                                            child:
                                                                                const Icon(Icons.add, color: Colors.green),
                                                                            onTap:
                                                                                () async {
                                                                              for (int i = 0; i < tableOrder.productsInCart.length; i++) {
                                                                                if (itemProduct.productId == tableOrder.productsInCart[i].productId) {
                                                                                  tableOrder.productsInCart[i].quantity = tableOrder.productsInCart[i].quantity! + 1;
                                                                                }
                                                                              }
                                                                              tableOrder.amountCart.value = 0;
                                                                              for (int i = 0; i < tableOrder.productsInCart.length; i++) {
                                                                                tableOrder.amountCart.value = tableOrder.amountCart.value + tableOrder.productsInCart[i].quantity!;
                                                                              }
                                                                              _globalKey.currentContext!.read<CartCubit>().getCart();
                                                                            },
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    )
                                                                  ],
                                                                ),
                                                              ),
                                                              Text(
                                                                formatCurrency(
                                                                    price: tableOrder
                                                                            .tempTotal[
                                                                        indexCart]),
                                                                style: GlobalStyles.robotoBold(context).copyWith(
                                                                    fontSize:
                                                                        Dimensions
                                                                            .FONT_SIZE_LARGE,
                                                                    color: Colors
                                                                            .amber[
                                                                        900],
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600),
                                                              )
                                                            ],
                                                          )
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
                                          ),
                                        );
                                      }),
                                  Container(
                                    margin:
                                        const EdgeInsets.symmetric(vertical: 5),
                                    height: 3,
                                    color: Colors.grey.shade200,
                                  ),
                                  if (itemProducts.length < 4)
                                    const SizedBox(height: 15),
                                  Obx(
                                    () => Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Expanded(
                                          child: InkWell(
                                            onTap: () {
                                              setNote(context);
                                            },
                                            splashColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            child: Text.rich(
                                              TextSpan(
                                                children: tableOrder
                                                            .noteOrder.value ==
                                                        ''
                                                    ? [
                                                        TextSpan(
                                                          text:
                                                              'add_special_note_here'
                                                                  .tr,
                                                          style: GlobalStyles
                                                                  .robotoRegular(
                                                                      context)
                                                              .copyWith(
                                                            fontSize: Dimensions
                                                                .FONT_SIZE_LARGE,
                                                            color: primaryColor,
                                                          ),
                                                        ),
                                                      ]
                                                    : [
                                                        TextSpan(
                                                          text: 'note_order'.tr,
                                                          style: GlobalStyles
                                                                  .robotoBold(
                                                                      context)
                                                              .copyWith(
                                                            fontSize: Dimensions
                                                                .FONT_SIZE_LARGE,
                                                          ),
                                                        ),
                                                        TextSpan(
                                                          text:
                                                              ': ${tableOrder.noteOrder.value}',
                                                          style: GlobalStyles
                                                                  .robotoRegular(
                                                                      context)
                                                              .copyWith(
                                                            fontSize: Dimensions
                                                                .FONT_SIZE_LARGE,
                                                          ),
                                                        ),
                                                      ],
                                              ),
                                              maxLines: 5,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.justify,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          margin: const EdgeInsets.symmetric(
                                              vertical: 5),
                                          height: 3,
                                          color: Colors.grey.shade200,
                                        ),
                                        const SizedBox(width: 10),
                                        InkWell(
                                          onTap: () {
                                            setNote(context);
                                          },
                                          splashColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          child: Image.asset(
                                            GlobalImages.iconEdit,
                                            color: primaryColor,
                                            width: Dimensions.ICON_SIZE_DEFAULT,
                                          ),
                                        ),
                                        const SizedBox(width: 5),
                                        if (tableOrder.noteOrder.value != '')
                                          InkWell(
                                            splashColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              tableOrder.noteOrder.value = '';
                                              await _appPrefs.removeNote();
                                            },
                                            child: const Icon(
                                                Icons.close_outlined,
                                                color: Colors.red,
                                                size: 25),
                                          )
                                      ],
                                    ),
                                  ),
                                  if (itemProducts.length < 4)
                                    const SizedBox(height: 15),
                                  Container(
                                    margin:
                                        const EdgeInsets.symmetric(vertical: 5),
                                    height: 3,
                                    color: Colors.grey.shade200,
                                  ),
                                  if (itemProducts.length < 4)
                                    const SizedBox(height: 15),
                                  Obx(
                                    () => CalculationView(
                                      itemPrice: tableOrder.totalAmount.value,
                                      discount: 0,
                                      itemAmount: amountCart(),
                                      total: tableOrder.totalAmount.value,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: Dimensions.PADDING_SIZE_LARGE,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
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
                                  transparent: true,
                                  buttonText: 'clear_cart'.tr,
                                  onPressed: () async {
                                    await _appPrefs.removeNote();
                                    await _appPrefs.removeCart();
                                    for (int i = 0;
                                        i < tableOrder.productsInCart.length;
                                        i++) {
                                      for (int j = 0;
                                          j <
                                              tableOrder.productsInCart[i]
                                                  .modifierSets!.length;
                                          j++) {
                                        for (int k = 0;
                                            k <
                                                tableOrder
                                                    .productsInCart[i]
                                                    .modifierSets![j]
                                                    .modifierCart!
                                                    .length;
                                            k++) {
                                          tableOrder
                                              .productsInCart[i]
                                              .modifierSets![j]
                                              .modifierCart![k]
                                              .quantity = 0;
                                        }
                                      }
                                    }
                                    tableOrder.amountCart.value = 0;
                                    _globalKey.currentContext!
                                        .read<CartCubit>()
                                        .removeAll();
                                    _globalKey.currentContext!
                                        .read<CartCubit>()
                                        .getCart();
                                  },
                                ),
                              ),
                              const SizedBox(
                                width: Dimensions.PADDING_SIZE_DEFAULT,
                              ),
                              Expanded(
                                child: CustomButton2(
                                  height: 50,
                                  buttonText: 'place_order'.tr,
                                  onPressed: () {
                                    if (tableOrder
                                        .selectedTable.value.isEmpty) {
                                      AwesomeDialog(
                                              context: context,
                                              dialogType: DialogType.warning,
                                              animType: AnimType.bottomSlide,
                                              title: 'warning'.tr,
                                              desc: 'please_select_table'.tr,
                                              btnOkText: 'ok'.tr,
                                              btnOkOnPress: () {})
                                          .show();
                                    } else {
                                      navigator!.pushNamed(
                                          RouteGenerator.paymentScreen);
                                    }
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  : const NoDataWidget();
            case StatusType.error:
              return const Error404Widget();
            default:
              return const SizedBox.shrink();
          }
        },
      ),
    );
  }

  addonsView(BuildContext context, List<ModifierSet>? modifierSets, int price) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text('addons_food'.tr,
                style: GlobalStyles.robotoBold(context).copyWith(fontSize: 20)),
            const SizedBox(
              width: 10,
            ),
            Text(
              '(${'optional'.tr})',
              style: GlobalStyles.robotoRegular(context)
                  .copyWith(color: Colors.grey, fontSize: 20),
            )
          ],
        ),
        const SizedBox(height: Dimensions.PADDING_SIZE_SMALL),
        ListView.builder(
            itemCount: modifierSets!.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, indexModifierSet) {
              return Column(
                children: [
                  Text(modifierSets[indexModifierSet].modifierSetName!,
                      style: GlobalStyles.robotoBold(context)
                          .copyWith(fontSize: 15)),
                  ListView.builder(
                      itemCount:
                          modifierSets[indexModifierSet].modifierCart!.length,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, indexModifier) {
                        final _modifierSet = modifierSets[indexModifierSet]
                            .modifierCart![indexModifier];
                        return ValueListenableBuilder<int>(
                            valueListenable: tempAddOns[indexModifierSet]
                                [indexModifier],
                            builder: (context, _, __) {
                              return Container(
                                padding: const EdgeInsets.only(bottom: 10),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Expanded(
                                            flex: 5,
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Text(_modifierSet.name!),
                                                const Text(' - '),
                                                Text(formatCurrency(
                                                    price:
                                                        _modifierSet.price!)),
                                              ],
                                            )),
                                        editButton(
                                          icon: Icons.remove,
                                          onTap: () {
                                            decrease(indexModifierSet,
                                                indexModifier);
                                            tableOrder.totalOneItem.value =
                                                totalPriceOneItem(
                                                    quantity: tableOrder
                                                        .tempQuantity.value,
                                                    price: price,
                                                    modifierSets: modifierSets);
                                          },
                                        ),
                                        SizedBox(
                                          width: 25,
                                          child: Center(
                                            child: Text(
                                                '${tempAddOns[indexModifierSet][indexModifier].value}',
                                                style: GlobalStyles
                                                        .robotoRegular(context)
                                                    .copyWith(
                                                        fontSize: Dimensions
                                                            .FONT_SIZE_DEFAULT)),
                                          ),
                                        ),
                                        editButton(
                                          icon: Icons.add,
                                          onTap: () {
                                            increase(indexModifierSet,
                                                indexModifier);
                                            tableOrder.totalOneItem.value =
                                                totalPriceOneItem(
                                                    quantity: tableOrder
                                                        .tempQuantity.value,
                                                    price: price,
                                                    modifierSets: modifierSets);
                                          },
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 5),
                                    if (indexModifier <
                                        modifierSets[indexModifierSet]
                                                .modifierCart!
                                                .length -
                                            1)
                                      Divider(
                                        height: 1,
                                        thickness: 0.5,
                                        color: Colors.blueGrey.shade100,
                                      ),
                                  ],
                                ),
                              );
                            });
                      }),
                ],
              );
            }),
      ],
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
                    ),
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
                    ),
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
}
