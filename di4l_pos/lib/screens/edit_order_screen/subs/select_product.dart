import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:di4l_pos/models/products/response/product_response.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import '../../../common/dimensions.dart';
import '../../../common/global_colors.dart';
import '../../../common/global_formatter.dart';
import '../../../common/global_images.dart';
import '../../../common/global_styles.dart';
import '../../../enums/status_type.dart';
import '../../../models/branch/response/branch_response.dart';
import '../../../models/category/response/category_response.dart';
import '../../../models/sell/response/sell_response.dart';
import '../../../models/unit/response/unit_response.dart';
import '../../../route_generator.dart';
import '../../../widgets/custom_appbar.dart';
import '../../../widgets/data/404_widget.dart';
import '../../../widgets/data/app_loading_widget.dart';
import '../../../widgets/error_image_widget.dart';
import '../../../widgets/search_widget.dart';
import '../../branch_screen/cubit/branch_cubit.dart';
import '../../category_screen/cubit/category_cubit.dart';
import '../../main_screen/mobile/edit_more_screen.dart';
import '../../order_screen/order_screen.dart';
import '../../products_screen/cubit/products_cubit.dart';
import '../../products_screen/sub_screens/widgets/dialog_filter.dart';
import '../../products_screen/widgets/product_gridview_widget.dart';
import '../../unit_screen/cubit/unit_cubit.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../edit_order_screen.dart';

class SelectProductForOrderEdit extends StatefulWidget {
  const SelectProductForOrderEdit({Key? key, this.sellData}) : super(key: key);
  final SellData? sellData;
  static MultiBlocProvider provider({SellData? sellData}) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ProductsCubit>(
          create: (BuildContext context) => ProductsCubit(),
        ),
        BlocProvider<CategoryCubit>(
          create: (BuildContext context) => CategoryCubit(),
        ),
        BlocProvider<UnitCubit>(
          create: (BuildContext context) => UnitCubit(),
        ),
        BlocProvider<BranchCubit>(
          create: (BuildContext context) => BranchCubit(),
        ),
      ],
      child: SelectProductForOrderEdit(
        sellData: sellData,
      ),
    );
  }

  @override
  State<SelectProductForOrderEdit> createState() =>
      _SelectProductForOrderEditState();
}

class _SelectProductForOrderEditState extends State<SelectProductForOrderEdit> {
  @override
  void initState() {
    WidgetsBinding.instance.endOfFrame.then((value) {
      _globalKey.currentContext!.read<ProductsCubit>().getProducts();
      _globalKey.currentContext!
          .read<CategoryCubit>()
          .getCategories()
          .then((value) {
        _categories = value;
        _categories!.insert(0, CategoryModel(id: -1, name: 'All'));
      });
      _globalKey.currentContext!.read<UnitCubit>().getUnits().then((value) {
        _units = value;
        _units!.insert(0, Unit(id: -1, actualName: 'All'));
      });

      _globalKey.currentContext!.read<BranchCubit>().getBranch().then((value) {
        _branchs = value;
        _branchs!.insert(0, Branch(id: -1, name: 'All'));
      });

      _txtSearchController.addListener(() {
        context
            .read<ProductsCubit>()
            .searchProduct(searchText: _txtSearchController.text);
      });
    });
    super.initState();
  }

  List<CategoryModel>? _categories;
  List<Unit>? _units;
  List<Branch>? _branchs;
  final TextEditingController _txtSearchController = TextEditingController();
  final List<TextEditingController?> _txtsContrller = [];
  final List<FocusNode?> _foucusContrller = [];
  final GlobalKey _globalKey = GlobalKey();
  bool isOpenSearch = false;
  bool isVariantSelect = false;
  int idVariantSelectGlobal = -1;
  @override
  Widget build(BuildContext context) {
    bool isDataUpdated = false;
    return Scaffold(
      key: _globalKey,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: CustomAppBar(
          backgroundColor: Colors.white,
          textColor: GlobalColors.getTextTitle(context),
          title: 'orders'.tr,
          actions: [
            IconButton(
              onPressed: () {
                _globalKey.currentContext!
                    .read<ProductsCubit>()
                    .isOpenSearch(!isOpenSearch);
                isOpenSearch = !isOpenSearch;
              },
              icon: const Icon(
                Icons.search,
              ),
            ),
            InkWell(
              child: SvgPicture.asset(
                GlobalImages.filterIcon,
                height: 23,
                width: 23,
                color: GlobalColors.primaryWebColor,
              ),
              onTap: () =>
                  dialogFiltter(context, _categories, _branchs, _units, (v) {
                _globalKey.currentContext!
                    .read<ProductsCubit>()
                    .filtterProduct(productFiltter: v);
              }),
            ),
            const SizedBox(width: 10),
            PopupMenuButton(
              itemBuilder: (BuildContext context) => [
                PopupMenuItem(
                  child: CustomPopupItem(
                    iconSvg: GlobalImages.bookIcon,
                    title: 'notes'.tr,
                  ),
                ),
              ],
              offset: const Offset(0, 50),
              child: SvgPicture.asset(
                GlobalImages.ellipsisIcon,
                height: 25,
                width: 25,
                color: GlobalColors.primaryWebColor,
              ),
            ),
            const SizedBox(width: 20),
          ],
        ),
      ),
      body: BlocBuilder<ProductsCubit, ProductsState>(
        builder: (context, state) {
          List<Product>? products = state.data?.products ?? [];
          int item = products.length;
          switch (state.data!.status) {
            case StatusType.loading:
              return const AppLoadingWidget(
                widget: null,
                text: 'Loading...',
              );
            case StatusType.loaded:
              return Column(
                children: [
                  AnimatedContainer(
                    height: !state.data!.isOpenSearch ? 0 : 50,
                    color: Colors.white,
                    alignment: Alignment.center,
                    duration: const Duration(seconds: 1),
                    curve: Curves.fastOutSlowIn,
                    child: SearchWidget(
                      controller: _txtSearchController,
                      hintText: state.data!.isCategoryScreen
                          ? 'search'.tr
                          : 'search_product'.tr,
                      // onPressedFilter: () => _weSlideController.show()
                    ),
                  ),
                  Expanded(
                    child: MasonryGridView.count(
                      padding: const EdgeInsets.fromLTRB(
                        Dimensions.PADDING_SIZE_SMALL,
                        Dimensions.PADDING_SIZE_SMALL,
                        Dimensions.PADDING_SIZE_SMALL,
                        Dimensions.PADDING_SIZE_SMALL,
                      ),
                      itemCount: item + 1,
                      itemBuilder: (context, index) {
                        WidgetsBinding.instance.addPostFrameCallback((_) {
                          if (index < item) {
                            if (_txtsContrller.length == index) {
                              _txtsContrller.add(TextEditingController());
                              _foucusContrller.add(FocusNode());
                            }
                            for (var element in state.data!.productsSelected) {
                              if (element.id == products.elementAt(index).id) {
                                int count = 0;
                                for (var element in element.variantsSelect) {
                                  count += element.count;
                                }
                                _txtsContrller.elementAt(index)!.text =
                                    count.toString();
                              }
                            }
                          }
                        });

                        return item != index
                            ? Stack(
                                children: [
                                  productGirdViewWidget(
                                      selectType: SelectType.inOrder,
                                      product: products.elementAt(index),
                                      onTap: (product) {
                                        if (product!.type!.contains("single")) {
                                          _globalKey.currentContext!
                                              .read<ProductsCubit>()
                                              .setProductSelected(
                                                  products.elementAt(index),
                                                  false,
                                                  product
                                                      .productVariations!
                                                      .first!
                                                      .variations!
                                                      .first!
                                                      .id!);
                                          idVariantSelectGlobal = product
                                              .productVariations!
                                              .first!
                                              .variations!
                                              .first!
                                              .id!;
                                        }
                                      }),
                                  state.data!.productsSelected.firstWhereOrNull(
                                              (element) =>
                                                  element.id ==
                                                  products
                                                      .elementAt(index)
                                                      .id) !=
                                          null
                                      ? SizedBox(
                                          height: Get.width * 0.3,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              InkWell(
                                                child: _changeCount(
                                                    context,
                                                    products.elementAt(index),
                                                    index,
                                                    idVariantSelectGlobal,
                                                    isVariantSelect),
                                              ),
                                            ],
                                          ),
                                        )
                                      : const SizedBox(),
                                  products
                                          .elementAt(index)
                                          .type!
                                          .contains("variable")
                                      ? InkWell(
                                          child: Container(
                                            color: Colors.transparent,
                                            height: Get.width * 0.3,
                                            width: Get.width * 0.3,
                                          ),
                                          onTap: () => showModalBottomSheet(
                                            shape: const RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.vertical(
                                                        top: Radius.circular(
                                                            15.0))),
                                            context: context,
                                            isScrollControlled: true,
                                            isDismissible: true,
                                            builder: (context) {
                                              isVariantSelect = true;
                                              return BlocProvider<
                                                  ProductsCubit>(
                                                create: (context) =>
                                                    ProductsCubit(),
                                                child: _selectVariant(
                                                    products.elementAt(index),
                                                    context,
                                                    index),
                                              );
                                            },
                                          ).then((value) {
                                            setState(() {
                                              isVariantSelect = false;
                                            });
                                          }),
                                        )
                                      : const SizedBox(),
                                ],
                              )
                            : InkWell(
                                child: Card(
                                  elevation: 1.0,

                                  semanticContainer: true,

                                  shadowColor: Colors.black26,

                                  //margin: EdgeInsets.all(10.0),

                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  child: SizedBox(
                                    height: Get.width * 0.3 + 50,
                                    child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          const Icon(
                                            Icons.add,
                                            color: GlobalColors.primaryColor,
                                          ),
                                          const SizedBox(
                                            height: 4,
                                          ),
                                          Text(
                                            'add_product'.tr,
                                            style: GlobalStyles.normalStyle
                                                .copyWith(
                                                    color: GlobalColors
                                                        .primaryColor),
                                          ),
                                        ]),
                                  ),
                                ),
                                onTap: () => navigator?.pushNamed(
                                    RouteGenerator.addProductScreen),
                              );
                      },
                      crossAxisCount: 3,
                    ),
                  ),
                  state.data!.productsSelected.isNotEmpty
                      ? Card(
                          elevation: 10,
                          child: Container(
                            height: Get.height * 0.095,
                            width: Get.width,
                            alignment: Alignment.bottomCenter,
                            decoration: const BoxDecoration(
                              color: GlobalColors.whiteColor,
                            ),
                            child: Center(
                              child: InkWell(
                                onTap: () {
                                  List<int> productsIdList = widget
                                      .sellData!.sellLines!
                                      .map((e) => e.productId!)
                                      .toList();
                                  List<Product> listProduct =
                                      state.data!.productsSelected;
                                  print(listProduct);

                                  List<int> uniqueProductIds = List.from(
                                      productsIdList)
                                    ..addAll(
                                        listProduct.map((e) => e.id!).toList());
                                  uniqueProductIds =
                                      uniqueProductIds.toSet().toList();

                                  final SellData? selldata = widget.sellData;

                                  List<SellLine> newSellLines = uniqueProductIds
                                      .map((id) => SellLine(productId: id))
                                      .toList();

                                  selldata!.sellLines = newSellLines;

                                  navigator!.pushReplacementNamed(
                                    RouteGenerator.editOrderScreen,
                                    arguments: {'SELLDATA': selldata},
                                  );
                                },

                                //             onTap: (){
                                //              List<int> productsIdList = widget.sellData!.sellLines!.map((e) => e.productId!).toList();
                                //              List<Product> listProduct = state.data!.productsSelected;
                                //              print(listProduct);
                                //              productsIdList.addAll(listProduct.map((e) => e.id!).toList());
                                //              final SellData? selldata = widget.sellData;
                                //               selldata!.sellLines = selldata.sellLines! + productsIdList.map((id) => SellLine(productId: id)).toList();
                                //                 navigator!.pushReplacementNamed(RouteGenerator.editOrderScreen,
                                // arguments: {'SELLDATA': selldata}
                                // );
                                //             },

                                //           onTap: () =>
                                // navigator!.pushNamed(RouteGenerator.editOrderScreen,
                                // arguments: {'SELLDATA': widget.sellData}
                                // ),

                                child: Container(
                                  height: Get.height * 0.065,
                                  width: Get.width * 0.9,
                                  decoration: const BoxDecoration(
                                    color: GlobalColors.primaryColor,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(16),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Stack(
                                              children: [
                                                const Icon(
                                                  Icons.shopping_bag,
                                                  color:
                                                      GlobalColors.whiteColor,
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  children: [
                                                    const SizedBox(
                                                      width: 15,
                                                    ),
                                                    Container(
                                                      height: 16,
                                                      width: 16,
                                                      decoration:
                                                          const BoxDecoration(
                                                        color: Colors.red,
                                                        borderRadius:
                                                            BorderRadius.all(
                                                                Radius.circular(
                                                                    10)),
                                                      ),
                                                      child: Center(
                                                          child: Text(
                                                        state.data!
                                                            .countProductSelect
                                                            .toString(),
                                                        style: GlobalStyles
                                                                .titilliumRegular(
                                                                    context)
                                                            .copyWith(
                                                                color: GlobalColors
                                                                    .whiteColor),
                                                        textScaleFactor: 0.9,
                                                      )),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                            const SizedBox(
                                              width: Dimensions
                                                  .PADDING_SIZE_DEFAULT,
                                            ),
                                            Text(
                                              GlobalFormatter.formatCurrency(
                                                  state.data!.totalAmount
                                                      .toDouble()),
                                              style: GlobalStyles.boldStyle
                                                  .copyWith(
                                                      color: GlobalColors
                                                          .whiteColor),
                                            ),
                                          ],
                                        ),
                                        Text(
                                          'Tiếp tục',
                                          style: GlobalStyles.boldStyle
                                              .copyWith(
                                                  color:
                                                      GlobalColors.whiteColor),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        )
                      : const SizedBox(),
                ],
              );
            case StatusType.error:
              return const Error404Widget();
            default:
              return const SizedBox.shrink();
          }
        },
      ),
    );
  }

  Widget _selectVariant(Product product, BuildContext context, int index) {
    RxBool showButtonAdd = false.obs;
    int indexSelect = -1;
    RxInt idVariantSelect = RxInt(-1);
    // if (int.parse(_txtsContrller.elementAt(index)!.value.text) < 1) {
    //   showButtonAdd.value = true;
    // }
    return SizedBox(
        height: Get.height * 0.5,
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: Dimensions.PADDING_SIZE_DEFAULT),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: Dimensions.PADDING_SIZE_DEFAULT),
                    child: SizedBox(
                      width: Get.width,
                      child: Center(
                        child: Text(
                          "Thêm vào giỏ",
                          style: GlobalStyles.titilliumSemiBold2(context),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding:
                          const EdgeInsets.all(Dimensions.PADDING_SIZE_SMALL),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                height: 50,
                                width: 50,
                                child: ClipRRect(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(8.0)),
                                  child: CachedNetworkImage(
                                    imageUrl: product.imageUrl ?? '',
                                    errorWidget: (context, url, error) =>
                                        const ErrorWidgetImage(),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 8.0),
                              SizedBox(
                                width: Get.width * 0.48,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    /// Name
                                    const SizedBox(height: 8.0),
                                    Text(
                                      product.name!,
                                      style: GlobalStyles.titilliumSemiBold1(
                                              context)
                                          .copyWith(fontSize: 15),
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),

                                    /// Sell price
                                    const SizedBox(height: 8.0),
                                    Text(
                                      GlobalFormatter.formatCurrency(
                                          double.parse(product
                                              .productVariations!
                                              .first!
                                              .variations!
                                              .first!
                                              .defaultSellPrice!)),
                                      style: GlobalStyles.titilliumSemiBold(
                                              context)
                                          .copyWith(
                                              fontSize: 15,
                                              color: Colors.orange),
                                      maxLines: 2,
                                    ),

                                    /// Warehouse quantity
                                  ],
                                ),
                              )
                            ],
                          ),
                          Obx(() => idVariantSelect.value > -1
                              ? false
                                  ? InkWell(
                                      onTap: () {
                                        _globalKey.currentContext!
                                            .read<ProductsCubit>()
                                            .setProductSelected(
                                                product, false, 0);
                                        showButtonAdd.value = false;
                                      },
                                      child: const Icon(
                                        Icons.add_box_rounded,
                                        color: GlobalColors.primaryColor,
                                        size: 30,
                                      ))
                                  : _changeCount(context, product, index,
                                      idVariantSelect.value, true)
                              : const SizedBox()),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),
                  const Text(
                    "Chọn biến thể *",
                    style: GlobalStyles.normalStyle,
                  ),
                  const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),
                  Wrap(
                    direction: Axis.horizontal,
                    children:
                        product.productVariations!.first!.variations!.map((e) {
                      if (product.variantsSelect.isNotEmpty) {
                        // idVariantSelect.value =
                        //     product.variantsSelect.first.id!;
                      }
                      return Obx(
                        () => Stack(
                          children: [
                            InkWell(
                              onTap: () {
                                showButtonAdd.value = true;
                                idVariantSelect.value = e!.id!;
                                idVariantSelectGlobal = e.id!;
                                // product.variantsSelect.add(e);
                                // _globalKey.currentContext!
                                //     .read<ProductsCubit>()
                                //     .setProductSelected(product, false, e.id!);
                              },
                              child: Padding(
                                padding: const EdgeInsets.only(right: 4),
                                child: Container(
                                  decoration: product.variantsSelect
                                                  .firstWhereOrNull((element) =>
                                                      element.variantId ==
                                                      e!.id) !=
                                              null &&
                                          product.variantsSelect
                                                  .firstWhereOrNull((element) =>
                                                      element.variantId ==
                                                      e!.id)!
                                                  .variantId ==
                                              idVariantSelect.value
                                      ? BoxDecoration(
                                          color: Colors.blue.withOpacity(0.1),
                                          border: Border.all(
                                              color: Colors.blue, width: 1),
                                          borderRadius:
                                              BorderRadius.circular(8))
                                      : BoxDecoration(
                                          color: Colors.grey[300],
                                          borderRadius:
                                              BorderRadius.circular(8)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(4),
                                    child:
                                        Text(e!.name! + idVariantSelect.string),
                                  ),
                                ),
                              ),
                            ),
                            product.variantsSelect.isNotEmpty &&
                                    product.variantsSelect.firstWhereOrNull(
                                          (element) =>
                                              element.variantId == e.id!,
                                        ) !=
                                        null
                                ? Container(
                                    alignment: Alignment.topRight,
                                    height: 15,
                                    width: 15,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      color: Colors.red,
                                    ),
                                    child: Center(
                                      child: Text(
                                        product.variantsSelect
                                            .where((element) =>
                                                element.variantId == e.id!)
                                            .first
                                            .count
                                            .toString(),
                                        textScaleFactor: 0.8,
                                        style: const TextStyle(
                                            color: Colors.white),
                                      ),
                                    ),
                                  )
                                : const SizedBox(),
                          ],
                        ),
                      );
                    }).toList(),
                  ),
                  const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),
                ],
              ),
              Column(
                children: [
                  CustomButtonBottom(
                    onTap: () => navigator!.pop(),
                    color: GlobalColors.primaryColor,
                    titleColor: Colors.white,
                    width: Get.width,
                    height: 50,
                    title: "Thêm vào giỏ hàng",
                  ),
                  const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),
                ],
              ),
            ],
          ),
        ));
  }

  Container _changeCount(BuildContext context, Product product, int index,
      int idVariant, bool isSelectVariant) {
    var textController = Rx(_txtsContrller.elementAt(index));

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      int count = 0;
      if (isSelectVariant) {
        product.variantsSelect
            .where((element) => element.variantId == idVariant)
            .forEach((element) {
          count = element.count;
        });
      } else {
        for (var element in product.variantsSelect) {
          count += element.count;
        }
      }

      textController.value!.text = count.toString();
    });

    // RxInt count = 0.obs;

    return Container(
      height: 25,
      //width: Get.width * 0.23,
      decoration: BoxDecoration(
          color: GlobalColors.whiteColor,
          borderRadius: BorderRadius.circular(5)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {
              _globalKey.currentContext!
                  .read<ProductsCubit>()
                  .setProductSelected(product, true, idVariant);
            },
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
                  LengthLimitingTextInputFormatter(3),
                ],
                maxLines: 1,
                keyboardType: TextInputType.number,
                onSubmitted: (value) {
                  if (_txtsContrller.elementAt(index)!.text.isEmpty) {
                    _globalKey.currentContext!
                        .read<ProductsCubit>()
                        .setProductSelected(product, true, -1);
                  }

                  if (int.parse(_txtsContrller.elementAt(index)!.text) < 1) {
                    // _globalKey.currentContext!
                    //     .read<ProductsCubit>()
                    //     .setProductSelected(product, true, null);
                  } else {
                    _globalKey.currentContext!
                        .read<ProductsCubit>()
                        .setProductSelected(product, false,
                            int.parse(_txtsContrller.elementAt(index)!.text));
                  }
                },
                autocorrect: true,
                focusNode: _foucusContrller.elementAt(index),
                controller: textController.value,
                textAlign: TextAlign.center,
                selectionWidthStyle: BoxWidthStyle.tight,
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
            child: const Icon(
              Icons.add,
              color: Colors.green,
            ),
            onTap: () {
              setState(() {
                _globalKey.currentContext!
                    .read<ProductsCubit>()
                    .setProductSelected(product, false, idVariant);
              });
            },
          ),
        ],
      ),
    );
  }
}
