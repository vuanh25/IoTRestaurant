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
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class StockAdjustmentScreenTable extends StatefulWidget {
  const StockAdjustmentScreenTable({Key? key}) : super(key: key);
  static BlocProvider<StockAdjustmentCubit> provider() {
    return BlocProvider(
      create: (context) => StockAdjustmentCubit(),
      child: const StockAdjustmentScreenTable(),
    );
  }

  @override
  // ignore: library_private_types_in_public_api
  _StockAdjustmentScreenTableState createState() =>
      _StockAdjustmentScreenTableState();
}

class _StockAdjustmentScreenTableState
    extends State<StockAdjustmentScreenTable>
    with AfterLayoutMixin<StockAdjustmentScreenTable> {
  TextEditingController textController = TextEditingController();
  final ScrollController _scrollController = ScrollController();

  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
    context.read<StockAdjustmentCubit>().getStockAdjustments();
  }

  int dropdownValue = 25;
  @override
  Widget build(BuildContext context) {
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
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: AnimSearchBar(
              helpText: 'search'.tr,
              prefixIcon: const Icon(
                Icons.search_outlined,
                color: GlobalColors.primaryWebColor,
                size: 30,
              ),
              suffixIcon: const Icon(Icons.close_fullscreen_outlined),
              width: MediaQuery.of(context).size.width,
              boxShadow: false,
              textController: textController,
              onSuffixTap: () {
                setState(() {
                  textController.clear();
                });
              },
              // ignore: avoid_types_as_parameter_names, non_constant_identifier_names
              onSubmitted: (String) {},
            ),
          ),
        ],
      ),
      backgroundColor: GlobalColors.bgColor,
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'all_stock_adjustments'.tr,
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
          BlocBuilder<StockAdjustmentCubit, StockAdjustmentState>(
            buildWhen: ((previous, current) =>
                previous.data!.status != current.data!.status),
            builder: (context, state) {
              final stockAdjustments = state.data?.stockAdjustments ?? [];
              switch (state.data!.status) {
                case StatusType.loading:
                  return const AppLoadingWidget(
                    widget: null,
                    text: 'Loading...',
                  );
                case StatusType.loaded:
                  return stockAdjustments.isNotEmpty
                      ? Expanded(
                          child: ListView.builder(
                            itemCount: stockAdjustments.length,
                            controller: _scrollController,
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            itemBuilder: (context, index) {
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
                            },
                          ),
                        )
                      : const NoDataWidget();
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
        // width: 230,
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
              currentContext.read<StockAdjustmentCubit>().getStockAdjustments();
            }
          });
        },
      ),
    );
  }
}
