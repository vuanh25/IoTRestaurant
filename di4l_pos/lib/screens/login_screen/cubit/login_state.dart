part of 'login_cubit.dart';

@freezed
class LoginStateData with _$LoginStateData {
  const factory LoginStateData({
    String? error,
    @Default(true) bool showPass,
    @Default([]) List<IntroductionModel> returnIntoduction,
  }) = _LoginStateData;
}

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial({LoginStateData? data}) = Initial;
  const factory LoginState.getError({LoginStateData? data}) = GetError;
  const factory LoginState.showPass({LoginStateData? data}) = ShowPass;
  const factory LoginState.getIntroduction({LoginStateData? data}) =
      GetIntroduction;
}
