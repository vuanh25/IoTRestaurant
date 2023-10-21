part of 'stock_cubit.dart';

@freezed
class StockStateData with _$StockStateData {
  const factory StockStateData({
    @Default([]) List<ReportStockData> reportStocks,
  }) = _StockStateData;
}

@freezed
class StockState with _$StockState {
  const factory StockState.initial({StockStateData? data}) = Initial;
  const factory StockState.getReportStocks({StockStateData? data}) =
      GetReportStocks;
}
