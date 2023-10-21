part of 'order_cubit.dart';

@freezed
class SalesOrderStateData with _$SalesOrderStateData {
  const factory SalesOrderStateData({
    @Default(StatusType.init) StatusType status,
    @Default(StatusType.init) StatusType returnStatus,
    @Default([]) List<SellData> sells,
    @Default([]) List<SellData> sellsOriginal,
    @Default([]) List<SellData> returnSells,
    @Default([]) List<SellData> returnSellsOriginal,
    @Default(0) int? page,
    SellResponse? response,
    @Default([]) List<ProductResponse> product,
    @Default([]) List<VariantsResponse> variant,
    @Default(0) int? shippedOrder,
    @Default(0) int? orderedOrder,
  }) = _SalesOrderStateData;
}

@freezed
class SalesOrderState with _$SalesOrderState {
  const factory SalesOrderState.initial({
    SalesOrderStateData? data,
  }) = Initial;
  const factory SalesOrderState.status({
    SalesOrderStateData? data,
  }) = Status;
  const factory SalesOrderState.returnStatus({
    SalesOrderStateData? data,
  }) = ReturnStatus;
  const factory SalesOrderState.getSell({
    SalesOrderStateData? data,
  }) = GetSell;
  const factory SalesOrderState.getReturnSell({
    SalesOrderStateData? data,
  }) = GetReturnSell;
  const factory SalesOrderState.addSell({
    SalesOrderStateData? data,
  }) = AddSell;
  const factory SalesOrderState.getProduct({
    SalesOrderStateData? data,
  }) = GetProductById;
  const factory SalesOrderState.getProducts({
    SalesOrderStateData? data,
  }) = GetProducts;
}
