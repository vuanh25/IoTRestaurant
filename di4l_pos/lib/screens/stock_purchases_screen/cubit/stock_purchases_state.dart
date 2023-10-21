part of 'stock_purchases_cubit.dart';

@freezed
class StockPurchasesState with _$StockPurchasesState {
  const factory StockPurchasesState.initial({StockPurchasesStateData? data}) =
      Initial;
  const factory StockPurchasesState.status({StockPurchasesStateData? data}) =
      Status;
  const factory StockPurchasesState.getStockPurchases(
      {StockPurchasesStateData? data}) = GetStockPurchases;
  const factory StockPurchasesState.getPurchaseLine(
      {StockPurchasesStateData? data}) = GetPurchaseLine;
  const factory StockPurchasesState.getContact(
      {StockPurchasesStateData? data}) = GetContact;
  const factory StockPurchasesState.getLocation(
      {StockPurchasesStateData? data}) = GetLocation;
  const factory StockPurchasesState.getStockPurchaseDetailResponse(
      {StockPurchasesStateData? data}) = GetStockPurchaseDetailResponse;
}

@freezed
class StockPurchasesStateData with _$StockPurchasesStateData {
  const factory StockPurchasesStateData({
    @Default(StatusType.init) StatusType status,
    @Default([]) List<StockPurchasesData> stockPurchases,
    @Default([]) List<StockPurchasesData> stockPurchasesOriginal,
    @Default([]) List<PurchaseLine> purchaseLine,
    Contact? contact,
    Location? location,
    StockPurchaseDetailResponse? stockPurchaseDetailResponse,
    @Default(0) int? page,
  }) = _StockTransfersStateData;
}
