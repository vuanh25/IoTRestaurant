part of 'user_cubit.dart';

@freezed
class UserStateData with _$UserStateData {
  const factory UserStateData({
    @Default(StatusType.init) StatusType status,
    @Default(0) int? page,
    @Default([]) List<UserItem> users,
    UserItem? user,
  }) = _UserStateData;
}

@freezed
class UserState with _$UserState {
  const factory UserState.initial({UserStateData? data}) = Initital;
  const factory UserState.getUsers({UserStateData? data}) = GetUsers;
  const factory UserState.getUser({UserStateData? data}) = GetUser;
}
