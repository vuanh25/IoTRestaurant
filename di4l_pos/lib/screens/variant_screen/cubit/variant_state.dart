part of 'variant_cubit.dart';

@freezed
class VariantStateData with _$VariantStateData {
  const factory VariantStateData({
    @Default('') String error,
    @Default(StatusType.init) StatusType status,
    @Default([]) List<Variant> variants,
    Variant? variantSelected,
    Variant? variant,
    @Default(-1) int showValue,
    @Default([]) List<Variant> variantOriginal,
  }) = _VariantStateData;
}

@freezed
class VariantState with _$VariantState {
  const factory VariantState.initial({VariantStateData? data}) = Initial;
  const factory VariantState.status({VariantStateData? data}) = Status;
  const factory VariantState.getVariants({VariantStateData? data}) =
      GetVariants;
  const factory VariantState.getVariant({VariantStateData? data}) = GetVariant;
  const factory VariantState.variantSelected({VariantStateData? data}) =
      VariantSelected;
  const factory VariantState.showValue({VariantStateData? data}) = ShowValue;
}
