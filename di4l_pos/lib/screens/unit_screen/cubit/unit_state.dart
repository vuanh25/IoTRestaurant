part of 'unit_cubit.dart';

@freezed
class UnitStateData with _$UnitStateData {
  const factory UnitStateData({
    @Default(StatusType.init) StatusType status,
    @Default([]) List<Unit> units,
    Unit? unit,
    Unit? unitSelect,
    @Default([]) List<Unit> unitOriginal,
  }) = _UnitStateData;
}

@freezed
class UnitState with _$UnitState {
  const factory UnitState.initial({UnitStateData? data}) = Initial;
  const factory UnitState.status({UnitStateData? data}) = Status;
  const factory UnitState.getUnits({UnitStateData? data}) = GetUnits;
  const factory UnitState.getUnit({UnitStateData? data}) = GetUnit;
  const factory UnitState.setUnitSelect({UnitStateData? data}) = SetUnitSelect;
}
