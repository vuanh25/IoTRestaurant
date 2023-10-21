part of 'change_language_cubit.dart';

@freezed
class ChangeLanguageStateData with _$ChangeLanguageStateData {
  const factory ChangeLanguageStateData({
    @Default([]) List<CountryModel> countries,
  }) = _ChangeLanguageStateData;
}

@freezed
class ChangeLanguageState with _$ChangeLanguageState {
  const factory ChangeLanguageState.initial({ChangeLanguageStateData? data}) =
      Initial;
  const factory ChangeLanguageState.getLanguages(
      {ChangeLanguageStateData? data}) = GetLangauges;
}
