part of 'notifications_cubit.dart';

@freezed
class NotificationsStateData with _$NotificationsStateData {
  const factory NotificationsStateData({
    @Default([]) List<NotificationModel> notifications,
  }) = _NotificationsStateData;
}

@freezed
class NotificationsState with _$NotificationsState {
  const factory NotificationsState.initial({NotificationsStateData? data}) =
      Initial;
  const factory NotificationsState.getNotifications(
      {NotificationsStateData? data}) = GetNotifications;
}
