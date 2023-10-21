import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:di4l_pos/common/dimensions.dart';
import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/enums/status_type.dart';
import 'package:di4l_pos/models/products/response/product_response.dart';
import 'package:di4l_pos/route_generator.dart';
import 'package:di4l_pos/screens/product_stock_sreen/subscreen/cubit/add_product_stock_cubit.dart';
import 'package:di4l_pos/screens/products_screen/cubit/products_cubit.dart';
import 'package:di4l_pos/screens/product_stock_sreen/subscreen/add_product_stock_screen.dart';
import 'package:di4l_pos/screens/product_stock_sreen/widget/product_card.dart';
import 'package:di4l_pos/widgets/data/app_loading_widget.dart';
import 'package:di4l_pos/widgets/custom_appbar.dart';
import 'package:di4l_pos/widgets/data/404_widget.dart';
import 'package:di4l_pos/widgets/data/no_data_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:we_slide/we_slide.dart';
import '../../../widgets/search_widget.dart';

class ProductsStockScreen extends StatefulWidget {
  /// MARK: - Initials;
  static MultiBlocProvider provider() {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ProductsCubit>(
          create: (BuildContext context) => ProductsCubit(),
        ),
        BlocProvider<AddProductStockCubit>(
          create: (BuildContext context) => AddProductStockCubit(),
        ),
      ],
      child: const ProductsStockScreen(),
    );
  }

  const ProductsStockScreen({Key? key}) : super(key: key);

  @override
  State<ProductsStockScreen> createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsStockScreen>
    with AfterLayoutMixin, SingleTickerProviderStateMixin {
  /// MARK: - Initials;
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey();
  final WeSlideController _weSlideController = WeSlideController();

  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
    context.read<ProductsCubit>().getProducts();
  }

  @override
  void dispose() {
    _weSlideController.dispose();
    super.dispose();
  }

  bool isOpenSearch = false;
  final TextEditingController _txtSearchController = TextEditingController();
//primaryColor
  @override
  Widget build(BuildContext context) {
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
            Expanded(
              child: _buildBody(context),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBody(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            /// Products
            Expanded(
              child: BlocBuilder<ProductsCubit, ProductsState>(
                buildWhen: (previous, current) =>
                    previous.data!.status != current.data!.status,
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
                          ? ListView.separated(
                              padding: const EdgeInsets.only(
                                  top: Dimensions.PADDING_SIZE_EXTRA_SMALL),
                              itemCount: products.length,
                              itemBuilder: (context, index) {
                                return ProductWidget(
                                  product: products.elementAt(index),
                                  onTap: (Product? product) {
                                    navigator!.pushNamed(
                                        RouteGenerator.addProductsStockScreen,
                                        arguments: {
                                          'PRODUCT': product,
                                          "GLOBAL_KEY": _globalKey
                                        });
                                  },
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
          ],
        ),
      ],
    );
  }
}
