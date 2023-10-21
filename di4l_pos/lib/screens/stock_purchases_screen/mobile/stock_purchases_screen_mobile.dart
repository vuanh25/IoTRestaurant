import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/common/global_styles.dart';
import 'package:di4l_pos/enums/status_type.dart';
import 'package:di4l_pos/route_generator.dart';
import 'package:di4l_pos/screens/contacts_screen/widgets/scroll_animated_button_widget.dart';
import 'package:di4l_pos/screens/stock_purchases_screen/cubit/stock_purchases_cubit.dart';
import 'package:di4l_pos/screens/stock_purchases_screen/mobile/widgets/all_stock_purchases_screen.dart';
import 'package:di4l_pos/widgets/data/404_widget.dart';
import 'package:di4l_pos/widgets/data/app_loading_widget.dart';
import 'package:di4l_pos/widgets/search_widget_contact.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class StockPurchasesScreenMobile extends StatefulWidget {
  const StockPurchasesScreenMobile({Key? key}) : super(key: key);

  static BlocProvider<StockPurchasesCubit> provider() {
    return BlocProvider(
      create: (context) => StockPurchasesCubit(),
      child: StockPurchasesScreenMobile(),
    );
  }

  @override
  State<StockPurchasesScreenMobile> createState() =>
      _StockPurchasesScreenMobileState();
}

class _StockPurchasesScreenMobileState extends State<StockPurchasesScreenMobile>
    with AfterLayoutMixin<StockPurchasesScreenMobile> {
  final ScrollController _scrollController = ScrollController();
  final TextEditingController _txtSearch = TextEditingController();

  bool _showSearch = false;

  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
    context.read<StockPurchasesCubit>().getStockPurchases();
  }

  void setupScrollController(BuildContext context) {
    _scrollController.addListener(() {
      if (_scrollController.position.atEdge) {
        if (_scrollController.position.pixels != 0) {
          BlocProvider.of<StockPurchasesCubit>(context).getStockPurchases();
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    setupScrollController(context);
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black, size: 23),
        elevation: 0.5,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: true,
        title: Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Text(
            'stock_purchases'.tr,
            style: GlobalStyles.normalStyle.copyWith(
              color: GlobalColors.primaryWebColor,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                _showSearch = !_showSearch;
                _txtSearch.clear();
              });
            },
            icon: Icon(
              _showSearch ? Icons.clear : Icons.search,
              color: Colors.black,
            ),
          )
        ],
      ),
      backgroundColor: GlobalColors.bgColor,
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'stock_purchases'.tr,
                  style: const TextStyle(
                    fontSize: 18,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.bold,
                    color: GlobalColors.primaryColor,
                  ),
                ),
              ],
            ),
          ),
          Visibility(
            visible: _showSearch,
            child: SearchWidgetContact(
              controller: _txtSearch,
              hintText: 'search'.tr,
              onChange: (String? value) {
                context
                    .read<StockPurchasesCubit>()
                    .searchStockPurchase(searchText: value!.trim());
                setState(() {});
              },
            ),
          ),
          BlocBuilder<StockPurchasesCubit, StockPurchasesState>(
            buildWhen: (previous, current) =>
                previous.data!.status != current.data!.status,
            builder: (context, state) {
              final stockPurchases = state.data!.stockPurchases;
              final stockPurchasesss = state.data!.stockPurchases;
              switch (state.data!.status) {
                case StatusType.loading:
                case StatusType.loaded:
                  return stockPurchases.isNotEmpty
                      ? Expanded(
                          child: ListView.separated(
                            controller: _scrollController,
                            itemCount: stockPurchases.length,
                            separatorBuilder: (context, index) =>
                                const SizedBox(),
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              if (index < stockPurchases.length) {
                                return AllStockPurchasesMobile(
                                  stockPurchasesData:
                                      stockPurchases.elementAt(index),
                                  // function: () => context
                                  //     .read<StockPurchasesCubit>()
                                  //     .deleteStockPurchase(
                                  //       id: stockPurchases.elementAt(index).id!,
                                  //     ),
                                  function: () {},
                                );
                              } else {
                                Future.delayed(const Duration(seconds: 5), () {
                                  _scrollController.jumpTo(_scrollController
                                      .position.maxScrollExtent);
                                });
                              }
                            },
                          ),
                        )
                      : const AppLoadingWidget(
                          widget: null,
                          text: 'Loading...',
                        );
                case StatusType.error:
                  return const Error404Widget();
                default:
                  return const SizedBox.shrink();
              }
            },
          ),
        ],
      ),
      floatingActionButton: ScrollingFabAnimatedCustom(
        width: 210,
        height: 48,
        text: 'add_stock_purchase'.tr,
        iconData: Icons.add,
        scrollController: _scrollController,
        onPress: () => navigator!
            .pushNamed(RouteGenerator.addStockPurchaseScreen)
            .whenComplete(
                () => context.read<StockPurchasesCubit>().loadStockPurchases()),
      ),
    );
  }
}
