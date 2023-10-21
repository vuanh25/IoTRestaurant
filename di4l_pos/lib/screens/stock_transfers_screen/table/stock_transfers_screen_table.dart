import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/common/global_styles.dart';
import 'package:di4l_pos/enums/status_type.dart';
import 'package:di4l_pos/route_generator.dart';
import 'package:di4l_pos/screens/contacts_screen/widgets/scroll_animated_button_widget.dart';
import 'package:di4l_pos/screens/stock_transfers_screen/cubit/stock_transfers_cubit.dart';
import 'package:di4l_pos/screens/stock_transfers_screen/mobile/widget/all_stock_transfers_mobile.dart';
import 'package:di4l_pos/widgets/data/404_widget.dart';
import 'package:di4l_pos/widgets/data/app_loading_widget.dart';
import 'package:di4l_pos/widgets/data/no_data_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class StockTransfersScreenTable extends StatefulWidget {
  const StockTransfersScreenTable({Key? key}) : super(key: key);
  static BlocProvider<StockTransfersCubit> provider() {
    return BlocProvider(
      create: (context) => StockTransfersCubit(),
      child: const StockTransfersScreenTable(),
    );
  }

  @override
  // ignore: library_private_types_in_public_api
  _StockTransfersScreenTable createState() =>
      _StockTransfersScreenTable();
}

class _StockTransfersScreenTable extends State<StockTransfersScreenTable>
    with AfterLayoutMixin<StockTransfersScreenTable> {
  final ScrollController _scrollController = ScrollController();
  TextEditingController textController = TextEditingController();

  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
    context.read<StockTransfersCubit>().getStockTransfers();
  }

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
            'stock_transfers'.tr,
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
            padding: const EdgeInsets.all(8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'all_stock_transfers'.tr,
                  style: const TextStyle(
                    fontSize: 18,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.bold,
                    color: GlobalColors.primaryColor,
                  ),
                ),
                SizedBox(
                  height: 40,
                  width: 160,
                  child: ElevatedButton(
                    onPressed: () => navigator!.pushNamed(
                      RouteGenerator.stockAdjustmentScreen,
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        GlobalColors.flButtonColor,
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    child: Text(
                      'stock_adjustments'.tr,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontFamily: 'Roboto',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          BlocBuilder<StockTransfersCubit, StockTransfersState>(
            buildWhen: ((previous, current) =>
                previous.data!.status != current.data!.status),
            builder: (context, state) {
              final stockTransfers = state.data?.stockTransfers ?? [];
              switch (state.data!.status) {
                case StatusType.loading:
                  return const AppLoadingWidget(
                    widget: null,
                    text: 'Loading...',
                  );
                case StatusType.loaded:
                  return stockTransfers.isNotEmpty
                      ? Expanded(
                          child: ListView.builder(
                            itemCount: stockTransfers.length,
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            itemBuilder: (context, index) {
                              return AllStockTransfersMobile(
                                stockTransfersData:
                                    stockTransfers.elementAt(index),
                                function: () => context
                                    .read<StockTransfersCubit>()
                                    .deleteStockTransfer(
                                        id: stockTransfers
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
        width: 210,
        height: 48,
        text: 'add_stock_transfers'.tr,
        iconData: Icons.add,
        scrollController: _scrollController,
        onPress: () {
          final currentContext = context;
          navigator!
              .pushNamed(RouteGenerator.addStockTransfersScreen)
              .then((value) {
            // Hành động được thực hiện sau khi trang addStockTransfersScreen hoàn thành
            // ignore: unnecessary_null_comparison
            if (currentContext != null) {
              currentContext.read<StockTransfersCubit>().getStockTransfers();
            }
          });
        },
      ),
    );
  }
}