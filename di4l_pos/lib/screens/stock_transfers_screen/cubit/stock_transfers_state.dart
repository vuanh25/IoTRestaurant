part of 'stock_transfers_cubit.dart';

@freezed
class StockTransfersStateData with _$StockTransfersStateData {
  const factory StockTransfersStateData({
    @Default(StatusType.init) StatusType status,
    @Default([]) List<StockTransfersData> stockTransfers,
    @Default([]) List<StockTransfersData> stockTransfersOriginal,
    SellTransfer? sellTransfers,
    LocationDetails? locationDetails,
    @Default([]) List<Activities> activities,
    @Default(0) int? page,
    Subject? subject,
  }) = _StockTransfersStateData;
}

@freezed
class StockTransfersState with _$StockTransfersState {
  const factory StockTransfersState.initial({StockTransfersStateData? data}) =
      Initial;
  const factory StockTransfersState.status({StockTransfersStateData? data}) =
      Status;
  const factory StockTransfersState.getStockTransfers(
      {StockTransfersStateData? data}) = GetStockTransfers;
  const factory StockTransfersState.getSellTransfers(
      {StockTransfersStateData? data}) = GetSellTransfers;
  const factory StockTransfersState.getLocationDetails(
      {StockTransfersStateData? data}) = GetLocationDetails;
  const factory StockTransfersState.getActivities(
      {StockTransfersStateData? data}) = GetActivities;
  const factory StockTransfersState.getSubject(
      {StockTransfersStateData? data}) = GetSubject;
}
