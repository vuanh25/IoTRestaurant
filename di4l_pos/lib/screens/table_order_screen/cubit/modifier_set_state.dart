part of 'modifier_set_cubit.dart';

@freezed
class ModifierStateData with _$ModifierStateData {
  const factory ModifierStateData({
    @Default(StatusType.init) StatusType status,
    @Default([]) List<Modifier> modifierSets,
    Modifier? modifierSet, 
  }) = _ModifierStateData;
}

@freezed
class ModifierState with _$ModifierState {
  const factory ModifierState.initial({ModifierStateData? data}) = Initial;
  const factory ModifierState.status({ModifierStateData? data}) = Status;
  const factory ModifierState.getModifiers({ModifierStateData? data}) = GetModifiers;
}