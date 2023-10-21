// ignore_for_file: empty_statements, prefer_const_constructors, unnecessary_new, no_leading_underscores_for_local_identifiers, prefer_final_fields

import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:di4l_pos/common/dimensions.dart';
import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/enums/status_type.dart';
import 'package:di4l_pos/models/branch/response/branch_response.dart';
import 'package:di4l_pos/models/category/response/category_response.dart';
import 'package:di4l_pos/models/products/response/product_response.dart';
import 'package:di4l_pos/models/unit/response/unit_response.dart';
import 'package:di4l_pos/route_generator.dart';
import 'package:di4l_pos/screens/branch_screen/cubit/branch_cubit.dart';
import 'package:di4l_pos/screens/category_screen/category_screen.dart';
import 'package:di4l_pos/screens/category_screen/cubit/category_cubit.dart';
import 'package:di4l_pos/screens/products_screen/cubit/products_cubit.dart';
import 'package:di4l_pos/screens/products_screen/sub_screens/widgets/dialog_filter.dart';
import 'package:di4l_pos/screens/products_screen/widgets/product_gridview_widget.dart';
import 'package:di4l_pos/screens/unit_screen/cubit/unit_cubit.dart';
import 'package:di4l_pos/screens/unit_screen/unit_screen.dart';
import 'package:di4l_pos/screens/variant_screen/variant_screen.dart';
import 'package:di4l_pos/screens/warranties_screen/warranties_screen.dart';
import 'package:di4l_pos/widgets/data/app_loading_widget.dart';
import 'package:di4l_pos/widgets/custom_appbar.dart';
import 'package:di4l_pos/widgets/data/404_widget.dart';
import 'package:di4l_pos/widgets/data/no_data_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:we_slide/we_slide.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import '../../../common/ui_helpers.dart';
import '../../../enums/add_type.dart';
import '../../../widgets/custom_button/custom_button.dart';
import '../../../widgets/search_widget.dart';
import '../../branch_screen/mobile/branch_mobile_screen.dart';
import '../widgets/product_widget.dart';
import 'package:di4l_pos/screens/contacts_screen/widgets/scroll_animated_button_widget.dart';

class ProductsMobileScreen extends StatefulWidget {
  /// MARK: - Initials;
  static MultiBlocProvider provider() {
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
      child: const ProductsMobileScreen(),
    );
  }

  const ProductsMobileScreen({Key? key}) : super(key: key);

  @override
  State<ProductsMobileScreen> createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsMobileScreen>
    with AfterLayoutMixin, SingleTickerProviderStateMixin {
  /// MARK: - Initials;
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey();
  final WeSlideController _weSlideController = WeSlideController();

  List<CategoryModel>? _categories;
  List<Unit>? _units;
  List<Branch>? _branchs;
  ScrollController ctr = ScrollController();
  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
    context.read<ProductsCubit>().getProducts();
    context.read<CategoryCubit>().getCategories().then((value) {
      _categories = value;
      _categories!.insert(0, CategoryModel(id: -1, name: 'All'));
    });
    context.read<UnitCubit>().getUnits().then((value) {
      _units = value;
      _units!.insert(0, Unit(id: -1, actualName: 'All'));
    });

    context.read<BranchCubit>().getBranch().then((value) {
      _branchs = value;
      _branchs!.insert(0, Branch(id: -1, name: 'All'));
    });

    _txtSearchController.addListener(() {
      context
          .read<ProductsCubit>()
          .searchProduct(searchText: _txtSearchController.text);
    });
  }

  @override
  void dispose() {
    _weSlideController.dispose();
    super.dispose();
  }

  late TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 6, vsync: this);

    super.initState();
  }

  bool isGrid = true;
  bool isOpenSearch = false;
  final TextEditingController _txtSearchController = TextEditingController();
  double padding = 0;
  void setupScrollController(context) {
    ctr.addListener(() {
      if (ctr.position.pixels >= ctr.position.maxScrollExtent * 0.95) {
        if (ctr.position.pixels != 0) {
          setState(() {
            padding = 50;
          });
        }
      } else if (ctr.position.pixels < ctr.position.maxScrollExtent * 0.95) {
        setState(() {
          padding = 0;
        });
      }
    });
  }

//primaryColor
  @override
  Widget build(BuildContext context) {
    setupScrollController(context);
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: BlocBuilder<ProductsCubit, ProductsState>(
          buildWhen: (previous, current) => (previous.data!.isCategoryScreen !=
              current.data!.isCategoryScreen),
          builder: (context, state) => CustomAppBar(
            backgroundColor: Colors.white,
            textColor: GlobalColors.getTextTitle(context),
            title: 'manage_products'.tr,
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
              !state.data!.isCategoryScreen
                  ? IconButton(
                      icon: const Icon(
                        Icons.qr_code_scanner,
                      ),
                      onPressed: () => navigator
                          ?.pushNamed(RouteGenerator.scanBarCodeScreen),
                    )
                  : const SizedBox(),
              !state.data!.isCategoryScreen
                  ? IconButton(
                      onPressed: () => dialogFiltter(
                              context, _categories, _branchs, _units, (v) {
                            _globalKey.currentContext!
                                .read<ProductsCubit>()
                                .filtterProduct(productFiltter: v);
                          }),
                      icon: const Icon(Icons.type_specimen_outlined))
                  : const SizedBox(),
              !state.data!.isCategoryScreen
                  ? PopupMenuButton(itemBuilder: (context) {
                      return [
                        PopupMenuItem<int>(
                          value: 0,
                          child: Row(
                            children: [
                              const Icon(
                                Icons.remove_red_eye_outlined,
                                color: Colors.black,
                              ),
                              const SizedBox(
                                width: 10.0,
                              ),
                              Text("shop_preview".tr)
                            ],
                          ),
                        ),
                        PopupMenuItem<int>(
                          value: 1,
                          child: !isGrid
                              ? Row(
                                  children: [
                                    const Icon(
                                      Icons.grid_on,
                                      color: Colors.black,
                                    ),
                                    const SizedBox(
                                      width: 10.0,
                                    ),
                                    Text("grid_view".tr),
                                  ],
                                )
                              : Row(
                                  children: [
                                    const Icon(
                                      Icons.list,
                                      color: Colors.black,
                                    ),
                                    const SizedBox(
                                      width: 10.0,
                                    ),
                                    Text("list_view".tr),
                                  ],
                                ),
                        ),
                      ];
                    }, onSelected: (value) {
                      _globalKey.currentContext!
                          .read<ProductsCubit>()
                          .isGrid(!isGrid);
                      isGrid = !isGrid;
                    })
                  : IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.remove_red_eye_outlined)),
            ],
          ),
        ),
      ),
      key: _globalKey,
      body: SafeArea(
        child: Column(
          children: [
            BlocBuilder<ProductsCubit, ProductsState>(
              buildWhen: (previous, current) =>
                  previous.data!.status != current.data!.status ||
                  previous.data!.isGrid != current.data!.isGrid ||
                  previous.data!.isOpenSearch != current.data!.isOpenSearch,
              builder: (context, state) {
                return AnimatedContainer(
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
                );
              },
            ),
            Container(
              height: 40,
              width: Get.width,
              color: Colors.white,
              child: TabBar(
                isScrollable: true,
                indicatorColor: const Color.fromRGBO(63, 133, 91, 1),
                unselectedLabelColor: Colors.black54,
                labelColor: const Color.fromRGBO(63, 133, 91, 1),
                onTap: (index) {
                  if (index == 0) {
                    _globalKey.currentContext!
                        .read<ProductsCubit>()
                        .isCategoryScreen(false);
                  } else {
                    _globalKey.currentContext!
                        .read<ProductsCubit>()
                        .isCategoryScreen(true);
                  }
                },
                tabs: [
                  Tab(
                    child: Center(
                        child: Text("products".tr,
                            style: const TextStyle(fontSize: 16))),
                  ),
                  Tab(
                    child: Center(
                        child: Text("category".tr,
                            style: const TextStyle(fontSize: 16))),
                  ),
                  Tab(
                    child: Center(
                      child: Text("variant".tr,
                          style: const TextStyle(fontSize: 16)),
                    ),
                  ),
                  Tab(
                    child: Center(
                      child:
                          Text("unit".tr, style: const TextStyle(fontSize: 16)),
                    ),
                  ),
                  Tab(
                    child: Center(
                      child: Text("branch".tr,
                          style: const TextStyle(fontSize: 16)),
                    ),
                  ),
                  Tab(
                    child: Center(
                      child: Text("warranties".tr,
                          style: const TextStyle(fontSize: 16)),
                    ),
                  ),
                ],
                controller: _tabController,
                indicatorSize: TabBarIndicatorSize.tab,
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  _buildBody(context),
                  CategoryScreen.provider(controller: _txtSearchController),
                  VariantScreen.provider(txtSearch: _txtSearchController),
                  UnitScreen.provider(txtSearch: _txtSearchController),
                  BranchMobileScreen.provider(txtSearch: _txtSearchController),
                  WarrantiesScreen.provider(txtSearch: _txtSearchController),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBody(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.only(bottom: padding),
          child: Column(children: [
            /// Products
            Expanded(
              child: BlocBuilder<ProductsCubit, ProductsState>(
                buildWhen: (previous, current) =>
                    previous.data!.status != current.data!.status ||
                    previous.data!.isGrid != current.data!.isGrid,
                builder: (context, state) {
                  final products = state.data?.products ?? [];
                  switch (state.data!.status) {
                    case StatusType.loading:
                      return const AppLoadingWidget(
                        widget: null,
                        text: 'Loading...',
                      );
                    case StatusType.loaded:
                      return products.isNotEmpty
                          ? state.data!.isGrid
                              ? MasonryGridView.count(
                                  controller: ctr,
                                  padding: const EdgeInsets.fromLTRB(
                                    Dimensions.PADDING_SIZE_SMALL,
                                    Dimensions.PADDING_SIZE_SMALL,
                                    Dimensions.PADDING_SIZE_SMALL,
                                    Dimensions.PADDING_SIZE_SMALL,
                                  ),
                                  itemCount: products.length,
                                  itemBuilder: (context, index) {
                                    return productGirdViewWidget(
                                        product: products.elementAt(index),
                                        onTap: (product) {
                                          navigator!.pushNamed(
                                            RouteGenerator.addProductScreen,
                                            arguments: {
                                              'ADD_PRODUCT_TYPE':
                                                  AddType.UPDATE,
                                              'PRODUCT_MODEL': product,
                                            },
                                          ).whenComplete(() => _globalKey
                                              .currentContext!
                                              .read<ProductsCubit>()
                                              .getProducts());
                                        });
                                  },
                                  crossAxisCount: 2,
                                )
                              : ListView.separated(
                                  controller: ctr,
                                  padding: const EdgeInsets.only(
                                      top: Dimensions.PADDING_SIZE_EXTRA_SMALL),
                                  itemCount: products.length,
                                  itemBuilder: (context, index) {
                                    return ProductWidget(
                                      product: products.elementAt(index),
                                      onTap: (Product? product) =>
                                          UIHelpers.showBottomSheet<Product>(
                                        context,
                                        onDetail: CustomButton(
                                          type: ButtonType.BUTTON_TEXT,
                                          label: 'detail'.tr,
                                          color: GlobalColors.appBar3,
                                          borderColor: Colors.white,
                                          onPressed: () => navigator!.pushNamed(
                                              RouteGenerator
                                                  .detailProductScreen,
                                              arguments: {
                                                'PRODUCT_MODEL': product
                                              }),
                                        ),
                                        onEdit: CustomButton(
                                            type: ButtonType.BUTTON_TEXT,
                                            label: 'edit'.tr,
                                            color: Colors.orange,
                                            borderColor: Colors.white,
                                            onPressed: () {
                                              navigator!.pushNamed(
                                                RouteGenerator.addProductScreen,
                                                arguments: {
                                                  'ADD_PRODUCT_TYPE':
                                                      AddType.UPDATE,
                                                  'PRODUCT_MODEL': product,
                                                },
                                              ).whenComplete(() => _globalKey
                                                  .currentContext!
                                                  .read<ProductsCubit>()
                                                  .getProducts());
                                            }),
                                        onDelete: CustomButton(
                                          type: ButtonType.BUTTON_TEXT,
                                          label: 'delete'.tr,
                                          color: GlobalColors.errorColor,
                                          borderColor: Colors.white,
                                          onPressed: () => (Product? product) =>
                                              _globalKey.currentContext!
                                                  .read<ProductsCubit>()
                                                  .deleteProduct(
                                                      id: products
                                                          .elementAt(index)
                                                          .id!)
                                                  .whenComplete(() => _globalKey
                                                      .currentContext!
                                                      .read<ProductsCubit>()
                                                      .getProducts()),
                                        ),
                                      ),
                                    );
                                  },
                                  separatorBuilder: (context, index) =>
                                      const SizedBox(),
                                )
                          : const NoDataWidget();
                    case StatusType.error:
                      return const Error404Widget();
                    default:
                      return const SizedBox.shrink();
                  }
                },
              ),
            ),
          ]),
        ),
        Positioned(bottom: 10, right: 0, child: animationButton()),
        // Padding(
        //   padding: const EdgeInsets.all(20.0),
        //   child: Container(
        //     alignment: Alignment.bottomRight,
        //     child: FloatingActionButton.extended(
        //       backgroundColor: GlobalColors.primaryColor,
        //       onPressed: () {
        //         navigator
        //             ?.pushNamed(
        //               RouteGenerator.addProductScreen,
        //             )
        //             .then((value) => _globalKey.currentContext!
        //                 .read<ProductsCubit>()
        //                 .getProducts());
        //       },
        //       icon: const Icon(
        //         Icons.add,
        //         color: Colors.white,
        //       ),
        //       label: Text(
        //         "add_product".tr,
        //         style: const TextStyle(
        //           color: Colors.white,
        //           fontWeight: FontWeight.w600,
        //         ),
        //         textScaleFactor: 1.1,
        //       ),
        //     ),
        //   ),
        // ),
      ],
    );
  }

  Widget animationButton() {
    return ScrollingFabAnimatedCustom(
      width: 130,
      height: 48,
      text: "add_product".tr,
      iconData: Icons.add,
      scrollController: ctr,
      onPress: () {
        navigator
            ?.pushNamed(
              RouteGenerator.addProductScreen,
            )
            .then((value) =>
                _globalKey.currentContext!.read<ProductsCubit>().getProducts());
      },
    );
  }
}
