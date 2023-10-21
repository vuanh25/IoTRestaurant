part of 'add_warranty_cubit.dart';

@freezed
class AddWarrantyStateData with _$AddWarrantyStateData {
  const factory AddWarrantyStateData({
    @Default('') String error,
    @Default(StatusType.init) StatusType status,
    @Default('days') String payType,
  }) = _AddWarrantyStateData;
}

@freezed
class AddWarrantyState with _$AddWarrantyState {
  const factory AddWarrantyState.initial({AddWarrantyStateData? data}) =
      Initial;
  const factory AddWarrantyState.error({AddWarrantyStateData? data}) = Error;
  const factory AddWarrantyState.status({AddWarrantyStateData? data}) = Status;
  const factory AddWarrantyState.payType({AddWarrantyStateData? data}) =
      PayType;
}
