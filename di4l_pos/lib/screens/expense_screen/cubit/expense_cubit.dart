import 'dart:math';

import 'package:di4l_pos/models/revenue_expense/request/add_expense_category.dart';
import 'package:di4l_pos/models/revenue_expense/request/add_expense_request.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:di4l_pos/common/helpers.dart';
import 'package:di4l_pos/common/ui_helpers.dart';
import 'package:di4l_pos/enums/status_type.dart';
import 'package:di4l_pos/get_it.dart';
import 'package:di4l_pos/models/revenue_expense/response/expense_category_response.dart';
import 'package:di4l_pos/models/revenue_expense/response/expense_response.dart';
import 'package:di4l_pos/repositories/data_repository.dart';
import 'package:get/get.dart';
import 'package:tiengviet/tiengviet.dart';

part 'expense_cubit.freezed.dart';
part 'expense_state.dart';

class ExpenseCubit extends Cubit<ExpenseState> {
  ExpenseCubit() : super(const ExpenseState.initial(ExpenseStateData()));
  final _dataRepository = getIt<DataRepository>();

  Future<void> getExpenses({String? startDate, String? endDate}) async {
    try {
      UIHelpers.showLoading();
      final response = await _dataRepository.getExpenses(
          startDate: startDate, endDate: endDate);
      emit(Expenses(state.data?.copyWith(
        expenses: response.data ?? [],
        expensesOriginal: response.data ?? [],
      )));
      if (state.data!.expenses.isNotEmpty) {
        double due = calculateTotalFinalTotalByPaymentStatus(
            state.data!.expenses, 'due');
        double paid = calculateTotalFinalTotalByPaymentStatus(
            state.data!.expenses, 'paid');
        emit(TotalExpense(state.data?.copyWith(totalExpense: due)));
        emit(TotalRevenue(state.data?.copyWith(totalRevenue: paid)));
      }
    } catch (error) {
      Helpers.handleErrorApp(error: error);
      print(error);
    } finally {
      UIHelpers.dismissLoading();
    }
  }

  Future<void> getExpenseCategories() async {
    try {
      final response = await _dataRepository.getExpenseCateogries();
      emit(Categories(state.data!.copyWith(
        categories: response.data ?? [],
        categoriesOriginal: response.data ?? [],
      )));
    } catch (error) {
      Helpers.handleErrorApp(error: error);
    }
  }

  Future<void> searchExpense({required String searchText}) async {
    List<Expense> expenesOriginal = [...state.data!.expensesOriginal];
    if (searchText.isEmpty) {
      emit(Expenses(state.data!.copyWith(expenses: expenesOriginal)));
    } else {
      final searchTextVN = TiengViet.parse(searchText.toLowerCase());
      final expenses = expenesOriginal
          .where((Expense element) =>
              (element.finalTotal!.toLowerCase().contains(searchTextVN)) ||
              (element.paymentStatus!.toLowerCase().contains(searchTextVN)) ||
              (element.refNo!.toLowerCase().contains(searchTextVN)) ||
              (element.transactionDate!.toLowerCase().contains(searchTextVN)) ||
              (element.totalBeforeTax!.toLowerCase().contains(searchTextVN)) ||
              (element.taxAmount!.toLowerCase().contains(searchTextVN)))
          .toList();
      emit(Expenses(state.data!.copyWith(expenses: expenses)));
    }
  }

  ///Search Product
  Future<void> searchExpenseCategory({required String searchText}) async {
    List<ExpenseCategory> categoryOriginal = [
      ...state.data!.categoriesOriginal
    ];
    if (searchText.isEmpty) {
      emit(Categories(state.data?.copyWith(categories: categoryOriginal)));
    } else {
      final searchTextVN = TiengViet.parse(searchText.toLowerCase());
      final categories = categoryOriginal
          .where((ExpenseCategory element) =>
              element.name!.toLowerCase().contains(searchTextVN))
          .toList();
      emit(Categories(state.data?.copyWith(categories: categories)));
    }
  }

  Future<void> addExpenseCateogory({
    required String name,
    required String code,
  }) async {
    try {
      final request = AddExpenseCategoryRequest(name: name, code: code);
      final response =
          await _dataRepository.addExpenseCateogry(request: request);
      if (response.data != null) {}
    } catch (error) {
      Helpers.handleErrorApp(error: error);
    }
  }

  Future<void> addExpense({
    required int? locationId,
    required String? finalTotal,
    required int? expenseCategoryId,
    required String? refNo,
    required String? transactionDate,
    required int? expenseFor,
    required int? contactId,
    required int? taxId,
    required String? additionalNotes,
  }) async {
    try {
      final request = AddExpenseRequest(
        locationId: locationId,
        finalTotal: finalTotal,
        expenseCategoryId: expenseCategoryId,
        expenseSubCagegoryId: null,
        refNo: '',
        transactionDate: transactionDate,
        expenseFor: expenseFor,
        contactId: contactId,
        taxId: taxId,
        additionalNotes: additionalNotes,
      );
      final response = await _dataRepository.addExpense(request: request);
      if (response.data != null) {}
    } catch (error) {
      Helpers.handleErrorApp(error: error);
    }
  }

  double calculateTotalFinalTotalByPaymentStatus(
      List<Expense> expenses, String paymentStatus) {
    return expenses
        .where((expense) => expense.paymentStatus == paymentStatus)
        .map((expense) => double.tryParse(expense.finalTotal ?? '0') ?? 0)
        .fold(0, (previousValue, element) => previousValue + element);
  }

  void delete(int id) => UIHelpers.showCustomDialog(
        context: Get.context!,
        message: 'are_you_sure'.tr,
        onComfirm: () async {
          try {
            await _dataRepository.deleteExpense(id: id);
            getExpenses();
            await Future.delayed(
                const Duration(microseconds: 500), () => navigator!.pop());
          } catch (e) {
            print('Delete Expense Error: $e');
            Helpers.handleErrorApp(error: e);
          } finally {
            Future.delayed(const Duration(seconds: 2), () => navigator!.pop());
          }
        },
      );
}
