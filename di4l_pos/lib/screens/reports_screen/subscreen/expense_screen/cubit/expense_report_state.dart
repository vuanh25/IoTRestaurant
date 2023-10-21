part of 'expense_report_cubit.dart';

@freezed
class ExpenseReportStateData with _$ExpenseReportStateData {
  const factory ExpenseReportStateData({
    @Default([]) List<ExpenseReportResponse>? expenseReport,
  }) = _ExpenseReportStateData;
}

@freezed
class ExpenseReportState with _$ExpenseReportState {
  const factory ExpenseReportState.initial({ExpenseReportStateData? data}) =
      Initial;
  const factory ExpenseReportState.getExpenseReport(
      {ExpenseReportStateData? data}) = GetExpenseReport;
}
