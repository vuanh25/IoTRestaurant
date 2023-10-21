part of 'add_product_cubit.dart';

@freezed
class AddProductStateData with _$AddProductStateData {
  const factory AddProductStateData({
    @Default('') String error,
    @Default(StatusType.init) StatusType status,
    @Default('EAN-13') String barCodeType,
    @Default('EAN13') String barCodeTypeName,
    @Default('exclusive') String taxType,
    @Default('single') String productType,
    @Default(false) bool notForSell,
    @Default(false) bool checkManageStock,
    @Default(false) bool enableProductExpiry,
    @Default(false) bool enableVariant,
    File? image,
    @Default(false) bool outOfStock,
  }) = _AddProductStateData;
}

@freezed
class AddProductState with _$AddProductState {
  const factory AddProductState.initial({AddProductStateData? data}) = Initial;
  const factory AddProductState.error({AddProductStateData? data}) = Error;
  const factory AddProductState.status({AddProductStateData? data}) = Status;
  const factory AddProductState.getBarCodeType({AddProductStateData? data}) =
      GetBarCodeType;
  const factory AddProductState.getTaxType({AddProductStateData? data}) =
      GetTaxType;
  const factory AddProductState.getProductType({AddProductStateData? data}) =
      GetProductType;
  const factory AddProductState.notForSell({AddProductStateData? data}) =
      NotForSell;
  const factory AddProductState.checkManageStock({AddProductStateData? data}) =
      CheckManageStock;
  const factory AddProductState.enableProductExpiry(
      {AddProductStateData? data}) = EnableProductExpiry;
  const factory AddProductState.getImage({AddProductStateData? data}) =
      GetImage;
  const factory AddProductState.outOfStock({AddProductStateData? data}) =
      GetOutOfStock;
  const factory AddProductState.enableVariant({AddProductStateData? data}) =
      EnableVariant;
}
