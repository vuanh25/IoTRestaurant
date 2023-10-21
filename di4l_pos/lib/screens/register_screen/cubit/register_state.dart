part of 'register_cubit.dart';

@freezed
class RegisterStateData with _$RegisterStateData {
  const factory RegisterStateData({
    @Default('') String error,
    @Default(true) bool showPass,
    @Default(true) bool showConfirmPass,
    @Default(false) bool rules,
  }) = _RegisterStateData;
}

@freezed
class RegisterState with _$RegisterState {
  const factory RegisterState.initial({RegisterStateData? data}) = Initial;
  const factory RegisterState.getError({RegisterStateData? data}) = GetError;
  const factory RegisterState.showPass({RegisterStateData? data}) = ShowPass;
  const factory RegisterState.showConfirmPass({RegisterStateData? data}) =
      ShowConfirmPass;
  const factory RegisterState.rules({RegisterStateData? data}) = Rules;
}
