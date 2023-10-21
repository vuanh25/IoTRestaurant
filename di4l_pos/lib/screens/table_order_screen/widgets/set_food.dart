// ignore_for_file: must_be_immutable, prefer_const_literals_to_create_immutables

import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:di4l_pos/common/dimensions.dart';
import 'package:di4l_pos/common/global_styles.dart';
import 'package:di4l_pos/models/cart_table_order/cart_model.dart';
import 'package:di4l_pos/models/products/response/product_response.dart';
import 'package:di4l_pos/screens/cart_table_order_screen/cubit/cart_table_order_cubit.dart';
import 'package:di4l_pos/screens/table_order_screen/mobile/table_order_mobile_screen.dart';
import 'package:di4l_pos/screens/table_order_screen/widgets/common.dart';
import 'package:di4l_pos/screens/table_order_screen/widgets/custom_button_order.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class SetFoodScreen extends StatefulWidget {
  const SetFoodScreen({
    Key? key,
    required this.product,
    required this.inCart,
    this.modifierSets,
  }) : super(key: key);
  final Product product;
  final bool inCart;
  final List<ModifierSet>? modifierSets;

  static MultiBlocProvider provider(
      {required Product product,
      required bool inCart,
      List<ModifierSet>? modifierSets}) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<CartCubit>(
          create: (BuildContext context) => CartCubit(),
        ),
      ],
      child: SetFoodScreen(
          product: product, inCart: inCart, modifierSets: modifierSets),
    );
  }

  @override
  State<SetFoodScreen> createState() => _SetFoodScreenState();
}

class _SetFoodScreenState extends State<SetFoodScreen> with AfterLayoutMixin {
  @override
  FutureOr<void> afterFirstLayout(BuildContext context) async {
    context.read<CartCubit>().getCart();
  }

  final GlobalKey<ScaffoldState> _globalKey = GlobalKey();
  final tableOrder = Get.put(TableOrderController());
  static List<List<ValueNotifier<int>>> tempAddOns = [];

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
      required String price,
      List<ModifierSet>? addOns}) {
    // if (addOns != null) {
    //   int total = 0;
    //   for (int i = 0; i < addOns.length; i++) {
    //     if (addOns[i].modifierCart != null) {
    //       for (int j = 0; j < addOns[i].modifierCart!.length; i++) {
    //         total += addOns[i].modifierCart![j].price! * tempAddOns[i][j].value;
    //       }
    //     }
    //   }
    //   return total + (quantity * stringDoubleToInt(price));
    // }
    return quantity * stringDoubleToInt(price);
  }

  String formatCurrency({required String price}) {
    // return NumberFormat('#,###').format(price);
    return NumberFormat.simpleCurrency(locale: 'vi-VN', decimalDigits: 0)
        .format(stringDoubleToInt(price));
  }

  @override
  Widget build(BuildContext context) {
    final price =
        widget.product.productVariations![0]!.variations![0]!.defaultSellPrice;
    tempAddOns = [];
    for (int i = 0; i < widget.modifierSets!.length; i++) {
      final temp = <ValueNotifier<int>>[];
      for (var modifier in widget.modifierSets![i].modifierCart!) {
        temp.add(ValueNotifier<int>(modifier.quantity!));
      }
      tempAddOns.add(temp);
    }
    tableOrder.totalOneItem.value = totalPriceOneItem(
        quantity: tableOrder.tempQuantity.value,
        price: price.toString(),
        addOns: widget.modifierSets);
    final _modifierSets = widget.modifierSets;
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Container(
          padding: const EdgeInsets.all(Dimensions.PADDING_SIZE_DEFAULT),
          decoration: BoxDecoration(
            color: Colors.grey.shade100,
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20)),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      widget.product.imageUrl!,
                      width: 150,
                      height: 120,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              child: Text(
                                "${widget.product.name}",
                                style:
                                    GlobalStyles.robotoBold(context).copyWith(
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
                            Text(
                              formatCurrency(price: price.toString()),
                              style: const TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 20,
                              ),
                            ),
                            if (widget.product.unit!.shortName != "" &&
                                widget.product.unit!.shortName != null)
                              Text(
                                ' /${widget.product.unit!.shortName}',
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
              const SizedBox(height: Dimensions.PADDING_SIZE_SMALL),
              description(widget.product.productDescription),
              if (widget.product.productDescription == null)
                const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),
              if (widget.product.productVariations != null) ...[
                Text(
                  'variant'.tr,
                  style: GlobalStyles.robotoBold(context).copyWith(
                    fontSize: 20,
                  ),
                ),
                const SizedBox(height: Dimensions.PADDING_SIZE_SMALL),
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: widget.product.productVariations!.length,
                  itemBuilder: (context, indexVariant) {
                    final variant =
                        widget.product.productVariations![indexVariant];
                    return ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: variant!.variations!.length,
                        itemBuilder: (context, indexEachVariant) {
                          final eachVariant =
                              variant.variations![indexEachVariant];
                          return Text(eachVariant!.name!);
                        });
                  },
                ),
                const SizedBox(height: Dimensions.PADDING_SIZE_SMALL),
              ],
              if (_modifierSets!.isNotEmpty)
                addonsView(context, _modifierSets, widget.product),
              const SizedBox(height: Dimensions.PADDING_SIZE_LARGE),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  editButton(
                    width: 30,
                    height: 30,
                    icon: Icons.remove,
                    iconSize: 20,
                    onTap: () {
                      if (widget.inCart && tableOrder.tempQuantity.value > 0) {
                        tableOrder.tempQuantity.value =
                            tableOrder.tempQuantity.value - 1;
                        tableOrder.totalOneItem.value = totalPriceOneItem(
                            quantity: tableOrder.tempQuantity.value,
                            price: price.toString(),
                            addOns: _modifierSets);
                      } else if (!widget.inCart &&
                          tableOrder.tempQuantity.value > 1) {
                        tableOrder.tempQuantity.value =
                            tableOrder.tempQuantity.value - 1;
                        tableOrder.totalOneItem.value = totalPriceOneItem(
                            quantity: tableOrder.tempQuantity.value,
                            price: price.toString(),
                            addOns: _modifierSets);
                      }
                    },
                  ),
                  Obx(
                    () => SizedBox(
                      width: 50,
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
                    width: 30,
                    height: 30,
                    icon: Icons.add,
                    iconSize: 20,
                    onTap: () {
                      tableOrder.tempQuantity.value =
                          tableOrder.tempQuantity.value + 1;
                      tableOrder.totalOneItem.value = totalPriceOneItem(
                          quantity: tableOrder.tempQuantity.value,
                          price: price.toString(),
                          addOns: _modifierSets);
                    },
                  ),
                ],
              ),
              const SizedBox(height: Dimensions.PADDING_SIZE_EXTRA_LARGE),
              CustomButton2(
                height: 45,
                width: Get.width - 60,
                buttonText:
                    widget.inCart ? 'update_in_cart'.tr : 'add_to_cart'.tr,
                printTotal: true,
                onPressed: () async {
                  if (widget.inCart) {
                    for (int i = 0; i < tableOrder.productsInCart.length; i++) {
                      if (widget.product.id ==
                          tableOrder.productsInCart[i].productId) {
                        if (tableOrder.tempQuantity.value == 0) {
                          _globalKey.currentContext!
                              .read<CartCubit>()
                              .removeProductAt(index: i);
                          for (int j = 0;
                              j < widget.modifierSets!.length;
                              j++) {
                            for (int k = 0;
                                k <
                                    widget
                                        .modifierSets![j].modifierCart!.length;
                                k++) {
                              widget.modifierSets![j].modifierCart![k]
                                  .quantity = 0;
                            }
                          }
                          break;
                        } else {
                          tableOrder.productsInCart[i].quantity =
                              tableOrder.tempQuantity.value;
                          for (int j = 0;
                              j < widget.modifierSets!.length;
                              j++) {
                            for (int k = 0;
                                k <
                                    widget
                                        .modifierSets![j].modifierCart!.length;
                                k++) {
                              tableOrder
                                  .productsInCart[i]
                                  .modifierSets![j]
                                  .modifierCart![k]
                                  .quantity = tempAddOns[j][k].value;
                            }
                          }
                          break;
                        }
                      }
                    }
                    tableOrder.amountCart.value = 0;
                    for (int i = 0; i < tableOrder.productsInCart.length; i++) {
                      tableOrder.amountCart.value =
                          tableOrder.amountCart.value +
                              tableOrder.productsInCart[i].quantity!;
                    }
                    _globalKey.currentContext!.read<CartCubit>().getCart();
                    navigator!.pop();
                  } else {
                    for (int j = 0; j < _modifierSets.length; j++) {
                      for (int k = 0;
                          k < _modifierSets[j].modifierCart!.length;
                          k++) {
                        _modifierSets[j].modifierCart![k].quantity =
                            tempAddOns[j][k].value;
                      }
                    }
                    // final widget.modifierSets = [
                    //   ModifierSet(
                    //       modifierSetsId: tableOrder.modifierSetId.value,
                    //       modifierCart: _addOns)
                    // ];

                    final itemProduct = ItemProduct(
                      productId: widget.product.id!,
                      variationId: widget.product.productVariations!.first!
                          .variations!.first!.id,
                      name: widget.product.name!,
                      description: widget.product.productDescription,
                      unit: UnitCart(
                          unitId: widget.product.unit!.id,
                          shortName: widget.product.unit!.shortName),
                      quantity: tableOrder.tempQuantity.value,
                      price: stringDoubleToInt(price),
                      imageUrl: widget.product.imageUrl!,
                      modifierSets: _modifierSets,
                      // modifierSetId: [tableOrder.modifierSetId.value],
                      addOns: _modifierSets[0].modifierCart,
                      productVariations: widget.product.productVariations,
                    );
                    print(widget.product.unit!.id);
                    _globalKey.currentContext!
                        .read<CartCubit>()
                        .addCart(itemProduct: itemProduct);
                    tableOrder.amountCart.value = 0;
                    for (int i = 0; i < tableOrder.productsInCart.length; i++) {
                      tableOrder.amountCart.value =
                          tableOrder.amountCart.value +
                              tableOrder.productsInCart[i].quantity!;
                    }
                    _globalKey.currentContext!.read<CartCubit>().getCart();
                    navigator!.pop();
                  }
                },
              ),
              const SizedBox(height: Dimensions.PADDING_SIZE_SMALL),
            ],
          ),
        ),
      ),
    );
  }

  addonsView(BuildContext context, List<ModifierSet>? addOns, Product product) {
    final price = stringDoubleToInt(
        product.productVariations![0]!.variations![0]!.defaultSellPrice);
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
        Container(
          // constraints: const BoxConstraints(
          //   maxHeight: 300,
          // ),
          child: ListView.builder(
              itemCount: addOns!.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, indexModifierSet) {
                return Column(
                  children: [
                    Text(addOns[indexModifierSet].modifierSetName!,
                        style: GlobalStyles.robotoBold(context)
                            .copyWith(fontSize: 15)),
                    ListView.builder(
                        itemCount:
                            addOns[indexModifierSet].modifierCart!.length,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, indexModifier) {
                          final _modifierSet = addOns[indexModifierSet]
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
                                                      price: _modifierSet.price
                                                          .toString())),
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
                                                      price: price.toString(),
                                                      addOns: addOns);
                                            },
                                          ),
                                          SizedBox(
                                            width: 25,
                                            child: Center(
                                              child: Text(
                                                  '${tempAddOns[indexModifierSet][indexModifier].value}',
                                                  style: GlobalStyles
                                                          .robotoRegular(
                                                              context)
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
                                                      price: price.toString(),
                                                      addOns: addOns);
                                            },
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 5),
                                      if (indexModifier < 3 - 1)
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
        ),
      ],
    );
  }
}
