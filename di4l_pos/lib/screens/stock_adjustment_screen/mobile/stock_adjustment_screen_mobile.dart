import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/common/global_styles.dart';
import 'package:di4l_pos/enums/status_type.dart';
import 'package:di4l_pos/route_generator.dart';
import 'package:di4l_pos/screens/contacts_screen/widgets/scroll_animated_button_widget.dart';
import 'package:di4l_pos/screens/stock_adjustment_screen/cubit/stock_adjustment_cubit.dart';
import 'package:di4l_pos/screens/stock_adjustment_screen/mobile/widget/all_stock_adjustment_mobile.dart';
import 'package:di4l_pos/widgets/data/404_widget.dart';
import 'package:di4l_pos/widgets/data/app_loading_widget.dart';
import 'package:di4l_pos/widgets/data/no_data_widget.dart';
import 'package:di4l_pos/widgets/search_widget_contact.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class StockAdjustmentScreenMobile extends StatefulWidget {
  const StockAdjustmentScreenMobile({Key? key}) : super(key: key);
  static BlocProvider<StockAdjustmentCubit> provider() {
    return BlocProvider(
      create: (context) => StockAdjustmentCubit(),
      child: const StockAdjustmentScreenMobile(),
    );
  }

  @override
  // ignore: library_private_types_in_public_api
  _StockAdjustmentScreenMobileState createState() =>
      _StockAdjustmentScreenMobileState();
}

class _StockAdjustmentScreenMobileState
    extends State<StockAdjustmentScreenMobile>
    with AfterLayoutMixin<StockAdjustmentScreenMobile> {
  final TextEditingController _txtSearch = TextEditingController();
  final ScrollController _scrollController = ScrollController();

  bool _showSearch = false;

  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
    context.read<StockAdjustmentCubit>().getStockAdjustments();
  }

  void setupScrollController(context) {
    _scrollController.addListener(() {
      if (_scrollController.position.atEdge) {
        if (_scrollController.position.pixels != 0) {
          BlocProvider.of<StockAdjustmentCubit>(context).getStockAdjustments();
        }
      }
    });
  }

  int dropdownValue = 25;
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
            'stock_adjustments'.tr,
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
          ),
          // Padding(
          //   padding: const EdgeInsets.symmetric(vertical: 5),
          //   child: AnimSearchBar(
          //     helpText: 'search'.tr,
          //     prefixIcon: const Icon(
          //       Icons.search_outlined,
          //       color: GlobalColors.primaryWebColor,
          //       size: 30,
          //     ),
          //     suffixIcon: const Icon(Icons.close_fullscreen_outlined),
          //     width: MediaQuery.of(context).size.width,
          //     boxShadow: false,
          //     textController: textController,
          //     onSuffixTap: () {
          //       setState(() {
          //         textController.clear();
          //       });
          //     },
          //     // ignore: avoid_types_as_parameter_names, non_constant_identifier_names
          //     onSubmitted: (String) {},
          //   ),
          // ),
        ],
      ),
      backgroundColor: GlobalColors.bgColor,
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Visibility(
            visible: _showSearch,
            child: SearchWidgetContact(
              controller: _txtSearch,
              hintText: 'search'.tr,
              onChange: (String? value) {
                context
                    .read<StockAdjustmentCubit>()
                    .searchStockAdjustment(searchText: value?.trim() ?? '');
                setState(() {});
              },
            ),
          ),
          Expanded(
            child: BlocBuilder<StockAdjustmentCubit, StockAdjustmentState>(
              buildWhen: ((previous, current) =>
                  previous.data!.status != current.data!.status),
              builder: (context, state) {
                final stockAdjustments = state.data?.stockAdjustments ?? [];
                switch (state.data!.status) {
                  case StatusType.loading:
                  //   return const AppLoadingWidget(
                  //     widget: null,
                  //     text: 'Loading...',
                  //   );
                  case StatusType.loaded:
                    return stockAdjustments.isNotEmpty
                        ? ListView.separated(
                            itemCount: stockAdjustments.length,
                            controller: _scrollController,
                            shrinkWrap: true,
                            separatorBuilder: (context, index) =>
                                const SizedBox(),
                            itemBuilder: (context, index) {
                              if (index < stockAdjustments.length) {
                                return AllStockAdJustMentMobile(
                                  stockAdjustmentData:
                                      stockAdjustments.elementAt(index),
                                  function: () => context
                                      .read<StockAdjustmentCubit>()
                                      .deleteStockAdjustment(
                                          id: stockAdjustments
                                              .elementAt(index)
                                              .id!),
                                );
                              } else {
                                Future.delayed(const Duration(seconds: 5), () {
                                  _scrollController.jumpTo(_scrollController
                                      .position.maxScrollExtent);
                                });
                              }
                            })
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
          ),
        ],
      ),
      floatingActionButton: ScrollingFabAnimatedCustom(
        width: 230,
        height: 48,
        text: 'add_stock_adjustment'.tr,
        iconData: Icons.add,
        scrollController: _scrollController,
        onPress: () {
          final currentContext = context;
          navigator!
              .pushNamed(RouteGenerator.addStockAdjustmentScreen)
              .then((value) {
            // Hành động được thực hiện sau khi trang addStockAdjustmentScreen hoàn thành
            // ignore: unnecessary_null_comparison
            if (currentContext != null) {
              currentContext
                  .read<StockAdjustmentCubit>()
                  .loadStockAdjustments();
            }
          });
        },
      ),
    );
  }
}
