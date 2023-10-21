part of 'add_stock_purchase_cubit.dart';

@freezed
class AddStockPurchaseStateData with _$AddStockPurchaseStateData {
  const factory AddStockPurchaseStateData({
    @Default('') String error,
    @Default(StatusType.init) StatusType status,
    @Default('days') String payType,
    @Default('cash') String payMethod,
    @Default('') String sum,
    @Default([]) List<TaxData> listTax,
    @Default([]) List<String> listPaymentMethod,
    Data? purchaseCreate,
    TaxData? tax,
  }) = _AddStockPurchaseStateData;
}

@freezed
class AddStockPurchaseState with _$AddStockPurchaseState {
  const factory AddStockPurchaseState.initial(
      {AddStockPurchaseStateData? data}) = Initial;
  const factory AddStockPurchaseState.error({AddStockPurchaseStateData? data}) =
      Error;
  const factory AddStockPurchaseState.status(
      {AddStockPurchaseStateData? data}) = Status;
  const factory AddStockPurchaseState.transactions(
      {AddStockPurchaseStateData? data}) = GetTransactions;
  const factory AddStockPurchaseState.products(
      {AddStockPurchaseStateData? data}) = GetProducts;
  const factory AddStockPurchaseState.enableProduct(
      {AddStockPurchaseStateData? data}) = EnableProduct;
}
