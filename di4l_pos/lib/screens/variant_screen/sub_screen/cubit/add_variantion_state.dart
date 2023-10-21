part of 'add_variantion_cubit.dart';

@freezed
class AddVariantionStateData with _$AddVariantionStateData {
  factory AddVariantionStateData({
    @Default('') String error,
    @Default(StatusType.init) StatusType status,
    @Default([]) List<ValueVariant> valuesEdit,
    @Default([]) List<TextEditingController> valuesAdd,
    @Default(false) bool isAddNewValue,
    
  }) = _AddVariantionStateData;
}

@freezed
class AddVariantionState with _$AddVariantionState {
  const factory AddVariantionState.initial({AddVariantionStateData? data}) =
      Initial;
  const factory AddVariantionState.error({AddVariantionStateData? data}) =
      Error;
  const factory AddVariantionState.status({AddVariantionStateData? data}) =
      Status;
  const factory AddVariantionState.getValuesEdit(
      {AddVariantionStateData? data}) = GetValuesEdit;
  const factory AddVariantionState.getValuesAdd(
      {AddVariantionStateData? data}) = GetValuesAdd;
  const factory AddVariantionState.isAddNewValue(
      {AddVariantionStateData? data}) = IsAddNewValue;
}
