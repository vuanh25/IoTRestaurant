import 'package:di4l_pos/enums/status_type.dart';
import 'package:di4l_pos/screens/reports_screen/subscreen/stock_screen/widgets/products_in_stock_widget.dart';
import 'package:di4l_pos/screens/stock_manage/cubit/stock_manage_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../widgets/data/404_widget.dart';
import '../../../widgets/data/no_data_widget.dart';

class ExpenseProduct extends StatefulWidget {
  const ExpenseProduct({Key? key}) : super(key: key);

  @override
  State<ExpenseProduct> createState() {
    return _ExpenseProduct();
  }
}

class _ExpenseProduct extends State<ExpenseProduct> {
  // TextEditingController textController = TextEditingController();
  // final GlobalKey<ScaffoldState> _globalKey = GlobalKey();
  // final TextEditingController _txtSearchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: BlocBuilder<StockManageCubit, StockManageState>(
                  buildWhen: (previous, current) =>
                      previous.data!.status != current.data!.status ||
                      previous.data!.products != current.data!.products,
                  builder: (context, state) {
                    final stocks = state.data?.reportStockManages ?? [];

                    switch (state.data!.status) {
                      case StatusType.loaded:
                        return state.data!.reportStockManages.isNotEmpty
                            ? ListView.separated(
                                physics: const NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                itemBuilder: (context, index) {
                                  return ProductsInStock.provider(
                                    index: index + 1,
                                    reportStockData: stocks[index],
                                  );
                                },
                                separatorBuilder: (context, index) =>
                                    const Divider(),
                                itemCount: stocks.length,
                              )
                            : const NoDataWidget();

                      case StatusType.error:
                        return const Error404Widget();
                      default:
                        return const SizedBox.shrink();
                    }
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
