part of 'add_stock_adjustment_cubit.dart';

@freezed
class AddStockAdjustmentStateData with _$AddStockAdjustmentStateData {
  const factory AddStockAdjustmentStateData({
    @Default('') String error,
    @Default(StatusType.init) StatusType status,
    @Default('days') String payType,
    @Default([]) List<Transaction> transactionsOrder,
    @Default([]) List<Transaction> transactionsDebt,
    Transaction? transaction,
    @Default([]) List<Product> products,
    @Default(false) bool enableProduct,
    @Default('') String sum,
  }) = _AddStockAdjustmentStateData;
}

@freezed
class AddStockAdjustmentState with _$AddStockAdjustmentState {
  const factory AddStockAdjustmentState.initial(
      {AddStockAdjustmentStateData? data}) = Initial;
  const factory AddStockAdjustmentState.error(
      {AddStockAdjustmentStateData? data}) = Error;
  const factory AddStockAdjustmentState.status(
      {AddStockAdjustmentStateData? data}) = Status;
  const factory AddStockAdjustmentState.transactions(
      {AddStockAdjustmentStateData? data}) = GetTransactions;
  const factory AddStockAdjustmentState.products(
      {AddStockAdjustmentStateData? data}) = GetProducts;
  const factory AddStockAdjustmentState.enableProduct(
      {AddStockAdjustmentStateData? data}) = EnableProduct;
}
