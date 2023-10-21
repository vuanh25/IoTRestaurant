import 'package:di4l_pos/screens/products_screen/cubit/products_cubit.dart';
import 'package:di4l_pos/screens/stock_manage/cubit/stock_manage_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SortFilterButtons extends StatefulWidget {
  const SortFilterButtons({Key? key}) : super(key: key);

  @override
  _SortFilterButtonsState createState() => _SortFilterButtonsState();
}

class _SortFilterButtonsState extends State<SortFilterButtons> {
  int valueSortOrder = 0;
  int stockSortOrder = 0;
  int alphabeticalSortOrder = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextButton(
            onPressed: () {
              // Action when "Giá trị" button is pressed
              valueSortOrder = (valueSortOrder + 1) % 2;
              context.read<StockManageCubit>().changeValueSortMode(
                  valueSortOrder); // Trigger sorting action in the ProductsInStock widget
            },
            child: BlocBuilder<StockManageCubit, StockManageState>(
              buildWhen: (previous, current) =>
                  previous.data!.sortByValueMode !=
                  current.data!.sortByValueMode,
              builder: (context, state) {
                return Row(
                  children: [
                    const Text(
                      'Giá trị',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    Icon(
                      state.data!.sortByValueMode == 0
                          ? FontAwesomeIcons.sortAmountDown
                          : FontAwesomeIcons.sortAmountUp,
                      color: Colors.black,
                    ),
                  ],
                );
              },
            ),
          ),
          const VerticalDivider(
            color: Colors.black,
            thickness: 1,
          ),
          TextButton(
            onPressed: () {
              stockSortOrder = (stockSortOrder + 1) % 2;
              context
                  .read<StockManageCubit>()
                  .changeStockSortMode(stockSortOrder);
            },
            child: BlocBuilder<StockManageCubit, StockManageState>(
              buildWhen: (previous, current) =>
                  previous.data!.sortByStockMode !=
                  current.data!.sortByStockMode,
              builder: (context, state) {
                return Row(
                  children: [
                    const Text(
                      'Số lượng',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    Icon(
                      state.data!.sortByStockMode == 0
                          ? FontAwesomeIcons.sortNumericDown
                          : FontAwesomeIcons.sortNumericUp,
                      color: Colors.black,
                    ),
                  ],
                );
              },
            ),
          ),
          const VerticalDivider(
            color: Colors.black,
            thickness: 1,
          ),
          TextButton(
            onPressed: () {
              alphabeticalSortOrder = (alphabeticalSortOrder + 1) % 2;
              context
                  .read<StockManageCubit>()
                  .changeAlphabeticSortMode(alphabeticalSortOrder);
            },
            child: BlocBuilder<StockManageCubit, StockManageState>(
              buildWhen: (previous, current) =>
                  previous.data!.sortByAlphabetMode !=
                  current.data!.sortByAlphabetMode,
              builder: (context, state) {
                return Row(
                  children: [
                    const Text(
                      'Từ A -> Z',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    Icon(
                      state.data!.sortByAlphabetMode == 0
                          ? FontAwesomeIcons.sortAlphaDown
                          : FontAwesomeIcons.sortAlphaUp,
                      color: Colors.black,
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
