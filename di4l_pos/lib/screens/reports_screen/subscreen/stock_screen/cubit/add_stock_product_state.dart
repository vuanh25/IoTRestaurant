part of 'add_stock_product_cubit.dart';

@freezed
class AddStockProductStateData with _$AddStockProductStateData {
  const factory AddStockProductStateData({
    @Default('') String error,
    @Default(StatusType.init) StatusType status,
  }) = _AddStockProductStateData;
}
@freezed
class AddStockProductState with _$AddStockProductState{
   const factory AddStockProductState.initial({AddStockProductStateData? data}) = Initial;
  const factory AddStockProductState.error({AddStockProductStateData? data}) = Error;
  const factory AddStockProductState.status({AddStockProductStateData? data}) = Status;

 
}