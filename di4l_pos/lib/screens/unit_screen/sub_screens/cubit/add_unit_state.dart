part of 'add_unit_cubit.dart';

@freezed
class AddUnitStateData with _$AddUnitStateData {
  const factory AddUnitStateData({
    @Default('') String error,
    @Default(StatusType.init) StatusType status,
    @Default(false) bool baseUnit,
    @Default(false) bool allowDecimal,
  }) = _AddUnitStateData;
}

@freezed
class AddUnitState with _$AddUnitState {
  const factory AddUnitState.initial({AddUnitStateData? data}) = Initial;
  const factory AddUnitState.error({AddUnitStateData? data}) = Error;
  const factory AddUnitState.status({AddUnitStateData? data}) = Status;
  const factory AddUnitState.baseUnit({AddUnitStateData? data}) = BaseUnit;
  const factory AddUnitState.allowDecimal({AddUnitStateData? data}) =
      AllowDecimal;
}
