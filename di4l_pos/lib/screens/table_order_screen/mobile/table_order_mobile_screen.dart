import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:di4l_pos/common/dimensions.dart';
import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/common/global_images.dart';
import 'package:di4l_pos/common/global_styles.dart';
import 'package:di4l_pos/common/storage/app_prefs.dart';
import 'package:di4l_pos/enums/status_type.dart';
import 'package:di4l_pos/get_it.dart';
import 'package:di4l_pos/models/cart_table_order/cart_model.dart';
import 'package:di4l_pos/models/contacts/response/contacts_response.dart';
import 'package:di4l_pos/models/modifier_set/modifier_set_response.dart';
import 'package:di4l_pos/models/products/response/product_response.dart';
import 'package:di4l_pos/models/table/response/table_response.dart';
import 'package:di4l_pos/route_generator.dart';
import 'package:di4l_pos/screens/cart_table_order_screen/cubit/cart_table_order_cubit.dart';
import 'package:di4l_pos/screens/category_screen/cubit/category_cubit.dart';
import 'package:di4l_pos/screens/products_screen/cubit/products_cubit.dart';
import 'package:di4l_pos/screens/table_order_screen/cubit/modifier_set_cubit.dart';
import 'package:di4l_pos/screens/table_order_screen/cubit/table_order_cubit.dart';
import 'package:di4l_pos/screens/table_order_screen/widgets/cart_button.dart';
import 'package:di4l_pos/screens/table_order_screen/widgets/common.dart';
import 'package:di4l_pos/screens/table_order_screen/widgets/custom_button_order.dart';
import 'package:di4l_pos/widgets/data/404_widget.dart';
import 'package:di4l_pos/widgets/data/app_loading_widget.dart';
import 'package:di4l_pos/widgets/data/no_data_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';
import 'package:intl/intl.dart';
import 'package:search_page/search_page.dart';

class TableOrderController extends GetxController {
  RxString selectedTable = ''.obs;
  RxInt tableId = 0.obs;
  RxString noteOrder = ''.obs;
  RxInt amountCart = 0.obs;
  RxInt tempQuantity = 0.obs;
  RxInt totalOneItem = 0.obs;
  RxInt totalAmount = 0.obs;
  RxInt change = 0.obs;
  RxList<ItemProduct> productsInCart = <ItemProduct>[].obs;
  RxList<int> tempTotal = <int>[].obs;
  Rx<ContactModel> contactModel = ContactModel(id: 0, name: '', mobile: '').obs;
  RxInt tempVariantId = 0.obs;
  RxInt tempPrice = 0.obs;

  reset() {
    noteOrder = ''.obs;
    amountCart = 0.obs;
    tempQuantity = 0.obs;
    totalOneItem = 0.obs;
    totalAmount = 0.obs;
    change = 0.obs;
    productsInCart = <ItemProduct>[].obs;
    tempTotal = <int>[].obs;
  }
}

class TableOrderMobileScreen extends StatefulWidget {
  static MultiBlocProvider provider() {
    return MultiBlocProvider(
      providers: [
        BlocProvider<CartCubit>(
          create: (BuildContext context) => CartCubit(),
        ),
        BlocProvider<ProductsCubit>(
          create: (BuildContext context) => ProductsCubit(),
        ),
        BlocProvider<TableCubit>(
          create: (BuildContext context) => TableCubit(),
        ),
        BlocProvider<ModifierCubit>(
          create: (BuildContext context) => ModifierCubit(),
        ),
        BlocProvider<CategoryCubit>(
          create: (BuildContext context) => CategoryCubit(),
        ),
      ],
      child: const TableOrderMobileScreen(),
    );
  }

  const TableOrderMobileScreen({Key? key}) : super(key: key);

  @override
  State<TableOrderMobileScreen> createState() => _TableOrderMobileScreenState();
}

class _TableOrderMobileScreenState extends State<TableOrderMobileScreen>
    with AfterLayoutMixin {
  @override
  FutureOr<void> afterFirstLayout(BuildContext context) async {
    context.read<ProductsCubit>().getProducts();
    context.read<CartCubit>().getCart();
    context.read<CategoryCubit>().getCategories();
    context.read<TableCubit>().getTables();
    context.read<ModifierCubit>().getModifiers();
    selectedTable.value = tableOrder.selectedTable.value;
  }

  final GlobalKey<ScaffoldState> _globalKey = GlobalKey();
  final tableOrder = Get.put(TableOrderController());
  static ValueNotifier<String> selectedTable = ValueNotifier('');
  static ValueNotifier<String> selectTable = ValueNotifier('');
  static List<List<ValueNotifier<int>>> tempAddOns = [];
  final _appPrefs = getIt<AppPref>();
  Color primaryColor = GlobalColors.primaryColor;
  List<String> categories = ['All'];
  List<Tab> tabs = [];
  List<Widget> tabContents = [];

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
      return total + (quantity * stringDoubleToInt(price));
    }
    return quantity * stringDoubleToInt(price);
  }

  String formatCurrency({required String price}) {
    // return NumberFormat('#,###').format(price);
    return NumberFormat.simpleCurrency(locale: 'vi-VN', decimalDigits: 0)
        .format(stringDoubleToInt(price));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      appBar: AppBar(
        title: Text(
          'table_order'.tr,
          style: const TextStyle(
              color: Colors.black, fontSize: Dimensions.FONT_SIZE_EXTRA_LARGE),
        ),
        centerTitle: true,
        toolbarHeight: 55,
        elevation: 10,
        shadowColor: Colors.white54,
        leading: BackButton(
          color: Colors.black,
          onPressed: () {
            navigator!.pushReplacementNamed(RouteGenerator.mainScreen);
          },
        ),
        actions: [
          BlocBuilder<ProductsCubit, ProductsState>(
              builder: (context, productState) {
            final productData = productState.data?.products ?? [];
            return BlocBuilder<ModifierCubit, ModifierState>(
                builder: (context, modifierState) {
              return InkWell(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () {
                  showSearch(
                    context: context,
                    delegate: SearchPage<Product>(
                      barTheme: ThemeData(
                        appBarTheme: const AppBarTheme(
                          color: Colors.white,
                          iconTheme: IconThemeData(color: Colors.black),
                        ),
                        inputDecorationTheme: const InputDecorationTheme(
                          border: InputBorder.none,
                        ),
                      ),
                      onQueryUpdate: print,
                      items: productData,
                      searchLabel: 'search'.tr,
                      suggestion: Center(
                        child: Text('suggest'.tr),
                      ),
                      failure: Center(
                        child: Text('no_food'.tr),
                      ),
                      filter: (product) => [
                        product.name,
                      ],
                      builder: (product) {
                        final price = stringDoubleToInt(product
                            .productVariations![0]!
                            .variations![0]!
                            .defaultSellPrice);
                        final modifiers =
                            modifierState.data?.modifierSets ?? [];
                        List<ModifierSet> modifierSets = [];
                        for (var modifier in modifiers) {
                          for (var modifierProduct
                              in modifier.modifierProducts!) {
                            if (modifierProduct.id == product.id) {
                              List<ModifierCart> addOns = [];
                              List<Variations>? variations = [];
                              variations = modifier.variations;
                              for (var variation in variations!) {
                                addOns.add(ModifierCart(
                                    variationId: variation.id!,
                                    name: variation.name!,
                                    quantity: 0,
                                    price: (stringDoubleToInt(
                                        variation.defaultSellPrice))));
                              }
                              modifierSets.add(ModifierSet(
                                  modifierSetId: modifier.id,
                                  modifierSetName: modifier.name,
                                  modifierCart: addOns));
                            }
                          }
                        }
                        return GFListTile(
                          onTap: () {
                            bool inCart = false;
                            if (tableOrder.productsInCart.isNotEmpty) {
                              for (int i = 0;
                                  i < tableOrder.productsInCart.length;
                                  i++) {
                                if (product.id ==
                                    tableOrder.productsInCart[i].productId) {
                                  tableOrder.tempQuantity.value =
                                      tableOrder.productsInCart[i].quantity!;
                                  for (int j = 0;
                                      j < modifierSets.length;
                                      j++) {
                                    for (int k = 0;
                                        k <
                                            modifierSets[j]
                                                .modifierCart!
                                                .length;
                                        k++) {
                                      modifierSets[j]
                                              .modifierCart![k]
                                              .quantity =
                                          tableOrder
                                              .productsInCart[i]
                                              .modifierSets![j]
                                              .modifierCart![k]
                                              .quantity;
                                    }
                                  }
                                  inCart = true;
                                  break;
                                } else {
                                  tableOrder.tempQuantity.value = 1;
                                }
                              }
                            } else {
                              tableOrder.tempQuantity.value = 1;
                            }
                            setFood(
                                context: context,
                                product: product,
                                inCart: inCart,
                                modifierSets: modifierSets);
                          },
                          color: Colors.white,
                          avatar: GFImageOverlay(
                            height: 70,
                            width: 100,
                            image: NetworkImage(product.imageUrl!),
                            colorFilter: null,
                            boxFit: BoxFit.cover,
                          ),
                          titleText: product.name,
                          subTitleText: formatCurrency(price: price.toString()),
                          icon: const Icon(Icons.arrow_forward_ios),
                        );
                      },
                    ),
                  );
                },
                child: const Icon(
                  Icons.search,
                  color: Colors.black,
                  size: 30,
                ),
              );
            });
          }),
          const SizedBox(width: 10),
          const CartButton(),
        ],
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
          child: Column(
            children: [
              BlocBuilder<TableCubit, TableState>(
                builder: (context, tableState) {
                  final tables = tableState.data?.tables ?? [];
                  if (tableState.data!.status == StatusType.loaded) {
                    return Obx(
                      () => Row(
                        children: [
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                tableOrder.selectedTable.value == ''
                                    ? InkWell(
                                        onTap: () {
                                          setTable(context, tables);
                                        },
                                        splashColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        child: Text(
                                          'select_table'.tr,
                                          style: GlobalStyles.robotoRegular(
                                                  context)
                                              .copyWith(
                                            fontSize:
                                                Dimensions.FONT_SIZE_LARGE,
                                            color:
                                                Theme.of(context).primaryColor,
                                          ),
                                        ),
                                      )
                                    : Expanded(
                                        child: InkWell(
                                          onTap: () {
                                            setTable(context, tables);
                                          },
                                          splashColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          child: Text(
                                            tableOrder.selectedTable.value,
                                            style:
                                                GlobalStyles.robotoBold(context)
                                                    .copyWith(
                                              fontSize:
                                                  Dimensions.FONT_SIZE_LARGE,
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      ),
                              ],
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              setTable(context, tables);
                            },
                            splashColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            child: Image.asset(
                              GlobalImages.iconEdit,
                              color: Theme.of(context).primaryColor,
                              width: Dimensions.ICON_SIZE_DEFAULT,
                            ),
                          ),
                          if (tableOrder.selectedTable.value != '')
                            InkWell(
                              splashColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                tableOrder.selectedTable.value = '';
                                selectedTable.value = '';
                                await _appPrefs.removeTable();
                              },
                              child: const Icon(Icons.close_outlined,
                                  color: Colors.red, size: 25),
                            )
                        ],
                      ),
                    );
                  }
                  return const SizedBox.shrink();
                },
              ),
              BlocBuilder<CategoryCubit, CategoryState>(
                  builder: (context, categoryState) {
                final categoryData = categoryState.data?.categories ?? [];
                tabs = [
                  const Tab(
                      child: Text(
                    'All',
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  )),
                ];
                tabContents = [
                  displayProduct(context, 'All'),
                ];
                List.generate(categoryData.length, (index) {
                  tabs.add(Tab(
                    child: Text(
                      categoryData[index].name!,
                      style: const TextStyle(color: Colors.black, fontSize: 18),
                    ),
                  ));
                  tabContents
                      .add(displayProduct(context, categoryData[index].name!));
                });
                if (categoryState.data!.status == StatusType.loaded) {
                  return DefaultTabController(
                    length: tabs.length,
                    child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 5),
                          height: 3,
                          color: Colors.grey.shade200,
                        ),
                        TabBar(
                          tabs: tabs,
                          indicatorColor: primaryColor,
                          isScrollable: true,
                          physics: const BouncingScrollPhysics(),
                        ),
                        SizedBox(
                          height: Get.height - 194,
                          width: double.maxFinite,
                          child: TabBarView(
                            physics: const BouncingScrollPhysics(),
                            children: tabContents,
                          ),
                        ),
                      ],
                    ),
                  );
                }
                return const SizedBox.shrink();
              }),
            ],
          ),
        ),
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

  Widget displayProduct(BuildContext context, String category) {
    return BlocBuilder<CartCubit, CartState>(builder: (context, stateCart) {
      final itemProducts = stateCart.data?.listItemProduct ?? [];
      return BlocBuilder<ProductsCubit, ProductsState>(
          builder: (context, productState) {
        List<Product> proCategory = [];
        if (category == 'All') {
          proCategory = productState.data?.products ?? [];
        } else {
          final products = productState.data?.products ?? [];
          for (int i = 0; i < products.length; i++) {
            if (products[i].category != null &&
                products[i].category!.name == category) {
              proCategory.add(products[i]);
            }
          }
        }
        switch (productState.data!.status) {
          case StatusType.loading:
            return const AppLoadingWidget(
              widget: null,
              text: 'Loading...',
            );
          case StatusType.loaded:
            return proCategory.isNotEmpty
                ? GridView.builder(
                    padding: const EdgeInsets.only(top: 5, bottom: 15),
                    shrinkWrap: true,
                    itemCount: proCategory.length,
                    physics: const BouncingScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 4.0,
                            mainAxisSpacing: 4.0),
                    itemBuilder: (context, indexProduct) {
                      final defaultSellPrice = proCategory[indexProduct]
                          .productVariations![0]!
                          .variations![0]!
                          .defaultSellPrice;
                      List<Variations>? variations = [];
                      List<ModifierSet> modifierSets = [];
                      return BlocBuilder<ModifierCubit, ModifierState>(
                          builder: (context, modifierState) {
                        final modifiers =
                            modifierState.data?.modifierSets ?? [];
                        for (var modifier in modifiers) {
                          for (var modifierProduct
                              in modifier.modifierProducts!) {
                            if (modifierProduct.id ==
                                proCategory[indexProduct].id) {
                              List<ModifierCart> addOns = [];
                              variations = modifier.variations;
                              for (var variation in variations!) {
                                addOns.add(ModifierCart(
                                    variationId: variation.id!,
                                    name: variation.name!,
                                    quantity: 0,
                                    price: (stringDoubleToInt(
                                        variation.defaultSellPrice))));
                              }
                              modifierSets.add(ModifierSet(
                                  modifierSetId: modifier.id,
                                  modifierSetName: modifier.name,
                                  modifierCart: addOns));
                            }
                          }
                        }
                        return InkWell(
                          onTap: () {
                            bool inCart = false;
                            if (tableOrder.productsInCart.isNotEmpty) {
                              for (int i = 0;
                                  i < tableOrder.productsInCart.length;
                                  i++) {
                                if (proCategory[indexProduct].id ==
                                    tableOrder.productsInCart[i].productId) {
                                  tableOrder.tempQuantity.value =
                                      tableOrder.productsInCart[i].quantity!;
                                  for (int j = 0;
                                      j < modifierSets.length;
                                      j++) {
                                    for (int k = 0;
                                        k <
                                            modifierSets[j]
                                                .modifierCart!
                                                .length;
                                        k++) {
                                      modifierSets[j]
                                              .modifierCart![k]
                                              .quantity =
                                          tableOrder
                                              .productsInCart[i]
                                              .modifierSets![j]
                                              .modifierCart![k]
                                              .quantity;
                                    }
                                  }
                                  inCart = true;
                                  break;
                                } else {
                                  tableOrder.tempQuantity.value = 1;
                                }
                              }
                            } else {
                              tableOrder.tempQuantity.value = 1;
                            }
                            setFood(
                              context: context,
                              product: proCategory[indexProduct],
                              inCart: inCart,
                              modifierSets: modifierSets,
                            );
                          },
                          splashColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          child: Card(
                            elevation: 3,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 30,
                                    child: Center(
                                      child: Text(
                                        proCategory[indexProduct].name!,
                                        style: const TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                        ),
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  Expanded(
                                    flex: 4,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: NetworkImage(
                                                  proCategory[indexProduct]
                                                      .imageUrl!),
                                              fit: BoxFit.cover),
                                          borderRadius:
                                              BorderRadius.circular(8)),
                                      child: Container(
                                        alignment: Alignment.bottomCenter,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color:
                                                Colors.black.withOpacity(0.5),
                                            borderRadius:
                                                const BorderRadius.only(
                                              bottomLeft: Radius.circular(8),
                                              bottomRight: Radius.circular(8),
                                            ),
                                          ),
                                          width: double.infinity,
                                          height: 40,
                                          child: Center(
                                            child: Text(
                                              formatCurrency(
                                                  price: defaultSellPrice!),
                                              textAlign: TextAlign.center,
                                              style: const TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w700,
                                                fontSize: 17,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      });
                    },
                  )
                : const NoDataWidget();
          case StatusType.error:
            return const Error404Widget();
          default:
            return const SizedBox.shrink();
        }
      });
    });
  }

  setFood(
      {required BuildContext context,
      required Product product,
      required bool inCart,
      required List<ModifierSet>? modifierSets}) {
    return showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        enableDrag: false,
        backgroundColor: Colors.transparent,
        constraints: BoxConstraints.expand(
            height:
                modifierSets!.isNotEmpty ? Get.height * 0.7 : Get.height * 0.6),
        builder: (context) {
          if (inCart) {
            for (int i = 0; i < tableOrder.productsInCart.length; i++) {
              if (product.id == tableOrder.productsInCart[i].productId) {
                for (int j = 0;
                    j < tableOrder.productsInCart[i].productVariations!.length;
                    j++) {
                  for (var variant in tableOrder
                      .productsInCart[i].productVariations![j]!.variations!) {
                    if (variant!.id! ==
                        tableOrder.productsInCart[i].variationId) {
                      tableOrder.tempVariantId.value =
                          tableOrder.productsInCart[i].variationId!;
                      tableOrder.tempPrice.value =
                          stringDoubleToInt(variant.defaultSellPrice!);
                    }
                  }
                }
              }
            }
          } else {
            tableOrder.tempPrice.value = stringDoubleToInt(product
                .productVariations![0]!.variations![0]!.defaultSellPrice);
            tableOrder.tempVariantId.value =
                product.productVariations![0]!.variations![0]!.id!;
          }
          tempAddOns = [];
          for (int i = 0; i < modifierSets.length; i++) {
            final temp = <ValueNotifier<int>>[];
            for (var modifier in modifierSets[i].modifierCart!) {
              temp.add(ValueNotifier<int>(modifier.quantity!));
            }
            tempAddOns.add(temp);
          }
          tableOrder.totalOneItem.value = totalPriceOneItem(
              quantity: tableOrder.tempQuantity.value,
              price: tableOrder.tempPrice.value.toString(),
              modifierSets: modifierSets);
          final _modifierSets = modifierSets;
          return Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(
                      child: SingleChildScrollView(
                        physics: const BouncingScrollPhysics(),
                        child: Container(
                          padding: const EdgeInsets.all(
                              Dimensions.PADDING_SIZE_DEFAULT),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 10),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.network(
                                      product.imageUrl!,
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Flexible(
                                              child: Text(
                                                "${product.name}",
                                                style: GlobalStyles.robotoBold(
                                                        context)
                                                    .copyWith(
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
                                                formatCurrency(
                                                    price: tableOrder
                                                        .tempPrice.value
                                                        .toString()),
                                                style: const TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 20,
                                                ),
                                              ),
                                            ),
                                            if (product.unit != null &&
                                                product.unit!.shortName != "" &&
                                                product.unit!.shortName != null)
                                              Text(
                                                ' /${product.unit!.shortName}',
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
                                  height: Dimensions.PADDING_SIZE_SMALL),
                              description(product.productDescription),
                              if (product.productDescription == null)
                                const SizedBox(
                                    height: Dimensions.PADDING_SIZE_DEFAULT),
                              if (product.productVariations != null) ...[
                                Text(
                                  'variant'.tr,
                                  style:
                                      GlobalStyles.robotoBold(context).copyWith(
                                    fontSize: 20,
                                  ),
                                ),
                                const SizedBox(
                                    height: Dimensions.PADDING_SIZE_SMALL),
                                ListView.builder(
                                  shrinkWrap: true,
                                  physics: const NeverScrollableScrollPhysics(),
                                  itemCount: product.productVariations!.length,
                                  itemBuilder: (context, indexVariant) {
                                    final variant = product
                                        .productVariations![indexVariant];
                                    return GridView.builder(
                                        gridDelegate:
                                            const SliverGridDelegateWithFixedCrossAxisCount(
                                          crossAxisCount: 3,
                                          crossAxisSpacing: 5.0,
                                          mainAxisSpacing: 5.0,
                                          childAspectRatio: (1 / .25),
                                        ),
                                        shrinkWrap: true,
                                        physics:
                                            const NeverScrollableScrollPhysics(),
                                        itemCount: variant!.variations!.length,
                                        itemBuilder:
                                            (context, indexEachVariant) {
                                          final eachVariant = variant
                                              .variations![indexEachVariant];
                                          return Obx(
                                            () => Container(
                                                child: tableOrder.tempVariantId
                                                            .value ==
                                                        eachVariant!.id
                                                    ? GFButton(
                                                        onPressed: () {},
                                                        text: eachVariant.name,
                                                        shape:
                                                            GFButtonShape.pills,
                                                        color: GlobalColors
                                                            .primaryColor,
                                                      )
                                                    : GFButton(
                                                        onPressed: () {
                                                          tableOrder
                                                                  .tempVariantId
                                                                  .value =
                                                              eachVariant.id!;
                                                          tableOrder.tempPrice
                                                                  .value =
                                                              stringDoubleToInt(
                                                                  eachVariant
                                                                      .defaultSellPrice!);
                                                          tableOrder
                                                                  .totalOneItem
                                                                  .value =
                                                              totalPriceOneItem(
                                                                  quantity: tableOrder
                                                                      .tempQuantity
                                                                      .value,
                                                                  price: tableOrder
                                                                      .tempPrice
                                                                      .value
                                                                      .toString(),
                                                                  modifierSets:
                                                                      _modifierSets);
                                                        },
                                                        text: eachVariant.name,
                                                        shape:
                                                            GFButtonShape.pills,
                                                        type: GFButtonType
                                                            .outline,
                                                        color: Colors.black54,
                                                      )),
                                          );
                                        });
                                  },
                                ),
                                const SizedBox(
                                    height: Dimensions.PADDING_SIZE_SMALL),
                              ],
                              if (_modifierSets.isNotEmpty)
                                addonsView(context, _modifierSets, product),
                              const SizedBox(
                                  height: Dimensions.PADDING_SIZE_LARGE),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  editButton(
                                    width: 30,
                                    height: 30,
                                    icon: Icons.remove,
                                    iconSize: 20,
                                    onTap: () {
                                      if (inCart &&
                                          tableOrder.tempQuantity.value > 0) {
                                        tableOrder.tempQuantity.value =
                                            tableOrder.tempQuantity.value - 1;
                                        tableOrder.totalOneItem.value =
                                            totalPriceOneItem(
                                                quantity: tableOrder
                                                    .tempQuantity.value,
                                                price: tableOrder
                                                    .tempPrice.value
                                                    .toString(),
                                                modifierSets: _modifierSets);
                                      } else if (!inCart &&
                                          tableOrder.tempQuantity.value > 1) {
                                        tableOrder.tempQuantity.value =
                                            tableOrder.tempQuantity.value - 1;
                                        tableOrder.totalOneItem.value =
                                            totalPriceOneItem(
                                                quantity: tableOrder
                                                    .tempQuantity.value,
                                                price: tableOrder
                                                    .tempPrice.value
                                                    .toString(),
                                                modifierSets: _modifierSets);
                                      }
                                    },
                                  ),
                                  Obx(
                                    () => SizedBox(
                                      width: 55,
                                      child: Center(
                                        child: Text(
                                          '${tableOrder.tempQuantity.value}',
                                          style:
                                              GlobalStyles.robotoBold(context)
                                                  .copyWith(
                                            fontSize: Dimensions
                                                .FONT_SIZE_EXTRA_LARGE,
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
                                      tableOrder.totalOneItem.value =
                                          totalPriceOneItem(
                                              quantity:
                                                  tableOrder.tempQuantity.value,
                                              price: tableOrder.tempPrice.value
                                                  .toString(),
                                              modifierSets: _modifierSets);
                                    },
                                  ),
                                ],
                              ),
                              const SizedBox(
                                  height: Dimensions.PADDING_SIZE_EXTRA_LARGE),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding:
                          const EdgeInsets.all(Dimensions.PADDING_SIZE_DEFAULT),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade100,
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(1.0, 0.0),
                            blurRadius: 6.0,
                          ),
                        ],
                      ),
                      height: Get.height * 0.1,
                      child: CustomButton2(
                        height: 45,
                        width: double.infinity,
                        buttonText:
                            inCart ? 'update_in_cart'.tr : 'add_to_cart'.tr,
                        printTotal: true,
                        onPressed: () async {
                          if (inCart) {
                            for (int i = 0;
                                i < tableOrder.productsInCart.length;
                                i++) {
                              if (product.id ==
                                  tableOrder.productsInCart[i].productId) {
                                if (tableOrder.tempQuantity.value == 0) {
                                  _globalKey.currentContext!
                                      .read<CartCubit>()
                                      .removeProductAt(index: i);
                                  for (int j = 0;
                                      j < modifierSets.length;
                                      j++) {
                                    for (int k = 0;
                                        k <
                                            modifierSets[j]
                                                .modifierCart!
                                                .length;
                                        k++) {
                                      modifierSets[j]
                                          .modifierCart![k]
                                          .quantity = 0;
                                    }
                                  }
                                  break;
                                } else {
                                  tableOrder.productsInCart[i].quantity =
                                      tableOrder.tempQuantity.value;
                                  tableOrder.productsInCart[i].variationId =
                                      tableOrder.tempVariantId.value;
                                  tableOrder.productsInCart[i].price =
                                      tableOrder.tempPrice.value;
                                  for (int j = 0;
                                      j < modifierSets.length;
                                      j++) {
                                    for (int k = 0;
                                        k <
                                            modifierSets[j]
                                                .modifierCart!
                                                .length;
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
                            for (int i = 0;
                                i < tableOrder.productsInCart.length;
                                i++) {
                              tableOrder.amountCart.value =
                                  tableOrder.amountCart.value +
                                      tableOrder.productsInCart[i].quantity!;
                            }
                            _globalKey.currentContext!
                                .read<CartCubit>()
                                .getCart();
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
                            final itemProduct = ItemProduct(
                              productId: product.id!,
                              variationId: tableOrder.tempVariantId.value,
                              name: product.name!,
                              description: product.productDescription,
                              unit: UnitCart(
                                  unitId: product.unit!.id,
                                  shortName: product.unit!.shortName),
                              quantity: tableOrder.tempQuantity.value,
                              price: tableOrder.tempPrice.value,
                              imageUrl: product.imageUrl!,
                              modifierSets: _modifierSets,
                              addOns: _modifierSets.isNotEmpty
                                  ? _modifierSets[0].modifierCart
                                  : [],
                              productVariations: product.productVariations,
                            );
                            _globalKey.currentContext!
                                .read<CartCubit>()
                                .addCart(itemProduct: itemProduct);
                            tableOrder.amountCart.value = 0;
                            for (int i = 0;
                                i < tableOrder.productsInCart.length;
                                i++) {
                              tableOrder.amountCart.value =
                                  tableOrder.amountCart.value +
                                      tableOrder.productsInCart[i].quantity!;
                            }
                            _globalKey.currentContext!
                                .read<CartCubit>()
                                .getCart();
                            navigator!.pop();
                          }
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
                  padding: const EdgeInsets.only(top: 10),
                  child: InkWell(
                    onTap: () {
                      navigator!.pop();
                    },
                    child: const Icon(
                      Icons.close,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ],
          );
        });
  }

  addonsView(
      BuildContext context, List<ModifierSet>? modifierSets, Product product) {
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
                                                    price: price.toString(),
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
}
