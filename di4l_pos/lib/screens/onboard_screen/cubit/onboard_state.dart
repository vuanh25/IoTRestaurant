part of 'onboard_cubit.dart';

@freezed
class OnboardStateData with _$OnboardStateData {
  const factory OnboardStateData({
    @Default([]) List<Onboard> onboards,
    @Default(0) int index,
  }) = _OnboardStateData;
}

@freezed
class OnboardState with _$OnboardState {
  const factory OnboardState.initial({OnboardStateData? data}) = Initial;
  const factory OnboardState.getOnboars({OnboardStateData? data}) = GetOnboards;
  const factory OnboardState.changeIndex({OnboardStateData? data}) =
      ChangeIndex;
  const factory OnboardState.updateIndex({OnboardStateData? data}) =
      UpdateIndex;
}
