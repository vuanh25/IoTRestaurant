part of 'settings_cubit.dart';

@freezed
class SettingsStateData with _$SettingsStateData {
  const factory SettingsStateData({
    @Default('Roboto') String font,
  }) = _SettingsStateData;
}

@freezed
class SettingsState with _$SettingsState {
  const factory SettingsState.initial({SettingsStateData? data}) = Initial;
  const factory SettingsState.font({SettingsStateData? data}) = Font;
}
