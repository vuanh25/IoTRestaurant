part of 'add_stock_transfers_cubit.dart';

@freezed
class AddStockTransfersStateData with _$AddStockTransfersStateData {
  const factory AddStockTransfersStateData({
    @Default('') String error,
    @Default(StatusType.init) StatusType status,
    @Default('days') String payType,
    @Default([]) List<Transaction> transactionsOrder,
    @Default([]) List<Transaction> transactionsDebt,
    Transaction? transaction,
    @Default([]) List<Product> products,
    @Default(false) bool enableProduct,
  }) = _AddStockTransfersStateData;
}

@freezed
class AddStockTransfersState with _$AddStockTransfersState {
  const factory AddStockTransfersState.initial(
      {AddStockTransfersStateData? data}) = Initial;
  const factory AddStockTransfersState.error(
      {AddStockTransfersStateData? data}) = Error;
  const factory AddStockTransfersState.status(
      {AddStockTransfersStateData? data}) = Status;
  const factory AddStockTransfersState.transactions(
      {AddStockTransfersStateData? data}) = GetTransactions;
  const factory AddStockTransfersState.products(
      {AddStockTransfersStateData? data}) = GetProducts;
  const factory AddStockTransfersState.enableProduct(
      {AddStockTransfersStateData? data}) = EnableProduct;
}
