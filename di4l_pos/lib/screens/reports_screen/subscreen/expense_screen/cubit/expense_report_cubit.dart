import 'package:bloc/bloc.dart';
import 'package:di4l_pos/common/helpers.dart';
import 'package:di4l_pos/common/ui_helpers.dart';
import 'package:di4l_pos/get_it.dart';
import 'package:di4l_pos/models/reports/responses/expense_report_response.dart';
import 'package:di4l_pos/repositories/data_repository.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'expense_report_state.dart';
part 'expense_report_cubit.freezed.dart';

class ExpenseReportCubit extends Cubit<ExpenseReportState> {
  final _dataRepository = getIt<DataRepository>();

  ExpenseReportCubit()
      : super(const ExpenseReportState.initial(data: ExpenseReportStateData()));

  Future<void> getExpenseReport({String? startDate, String? endDate}) async {
    try {
      UIHelpers.showLoading();
      final _response = await _dataRepository.getExpenseReport(
          startDate: startDate, endDate: endDate);
      emit(GetExpenseReport(
          data: state.data?.copyWith(expenseReport: _response)));
    } catch (error) {
      debugPrint('Error: $error');
      Helpers.handleErrorApp(error: error);
    } finally {
      UIHelpers.dismissLoading();
    }
  }
}
