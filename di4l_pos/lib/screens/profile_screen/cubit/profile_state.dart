part of 'profile_cubit.dart';

@freezed
class ProfileStateData with _$ProfileStateData {
  const factory ProfileStateData({
    @Default('') String error,
    @Default(0) int success,
    File? image,
    ProfileResponse? profile,
  }) = _ProfileStateData;
}

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.initial({ProfileStateData? data}) = Initial;
  const factory ProfileState.error({ProfileStateData? data}) = Error;
  const factory ProfileState.success({ProfileStateData? data}) = Success;
  const factory ProfileState.getImage({ProfileStateData? data}) = GetImage;
  const factory ProfileState.profile({ProfileStateData? data}) = Profile;
}
