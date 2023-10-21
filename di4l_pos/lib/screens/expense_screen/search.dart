import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:di4l_pos/screens/expense_screen/cubit/expense_cubit.dart';
import 'package:di4l_pos/screens/expense_screen/widgets/table_data_revenue_expense.dart';
import 'package:di4l_pos/widgets/search_widget_contact.dart';
import 'package:flutter/material.dart';
import 'package:di4l_pos/common/global_images.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  static BlocProvider<ExpenseCubit> provider() {
    return BlocProvider(
      create: (context) => ExpenseCubit(),
      child: const Search(),
    );
  }

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> with AfterLayoutMixin {
  TextEditingController controller = TextEditingController();

  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
    context.read<ExpenseCubit>().getExpenses();
  }

  @override
  Widget build(BuildContext buildContext) {
    return BlocBuilder<ExpenseCubit, ExpenseState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: const Color(0xffFEFEFE),
            elevation: 0,
            leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                  size: 16,
                )),
            title: Transform(
              transform: Matrix4.translationValues(-20.0, 0.0, 0.0),
              child: SizedBox(
                height: 40,
                width: MediaQuery.of(context).size.width,
                child: TextField(
                  onChanged: (String? value) => context
                      .read<ExpenseCubit>()
                      .searchExpense(searchText: value ?? ''),
                  controller: controller,
                  cursorColor: const Color.fromARGB(255, 6, 154, 77),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color(0xffF5F6FA),
                    contentPadding: const EdgeInsets.only(left: 15, top: 15),
                    enabledBorder: const OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 1, color: Color(0xffECECEC)),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 1, color: Color.fromARGB(255, 3, 162, 85)),
                    ),
                    hintText: 'Tìm tên danh mục, ghi chú, giá tiền',
                    hintStyle: const TextStyle(color: Color(0xff898A8F)),
                    suffixIcon: controller.text.isNotEmpty
                        ? TextButton(
                            onPressed: () {
                              controller.clear();
                              setState(() {
                                controller.text.isNotEmpty;
                              });
                            },
                            child: const Image(
                              image: AssetImage(GlobalImages.remove),
                            ),
                          )
                        : null,
                  ),
                ),
              ),
            ),
            centerTitle: false,
          ),
          body: BlocBuilder<ExpenseCubit, ExpenseState>(
            builder: (context, state) {
              return Container(
                decoration: const BoxDecoration(
                  border: Border(
                    top: BorderSide(width: 1, color: Color(0xffE1E2E4)),
                  ),
                ),
                child: controller.text.isEmpty
                    ? TableExpense(expenses: state.data!.expenses)
                    : TableExpense(expenses: state.data!.expenses),
              );
            },
          ),
          backgroundColor: const Color(0xffF2F3F5),
        );
      },
    );
  }
}
