part of 'sell_report_cubit.dart';

@freezed
class SellReportStateData with _$SellReportStateData {
  const factory SellReportStateData({
    @Default(StatusType.init) StatusType status,
    @Default([]) List<SellReport> sellReports,
    @Default([]) List<SellData> orders,
    @Default(0) int? page,
    SellReportResponse? response,
  }) = _SalesOrderStateData;
}

@freezed
class SellReportState with _$SellReportState {
  const factory SellReportState.initial({
    SellReportStateData? data,
  }) = Initial;
  const factory SellReportState.status({
    SellReportStateData? data,
  }) = Status;
  const factory SellReportState.getSellReport({
    SellReportStateData? data,
  }) = GetSellReport;
}
