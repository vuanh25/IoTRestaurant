import 'package:bloc/bloc.dart';
import 'package:di4l_pos/common/helpers.dart';
import 'package:di4l_pos/common/ui_helpers.dart';
import 'package:di4l_pos/get_it.dart';
import 'package:di4l_pos/models/notifications/response/notification_response.dart';
import 'package:di4l_pos/repositories/data_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'notifications_state.dart';
part 'notifications_cubit.freezed.dart';

class NotificationsCubit extends Cubit<NotificationsState> {
  /// MARK: - Initials;
  final _dataRepository = getIt<DataRepository>();

  NotificationsCubit()
      : super(NotificationsState.initial(data: NotificationsStateData()));

  /// Get Notifications
  Future<void> getNotifications() async {
    try {
      UIHelpers.showLoading();
      final _notificationResponse = await _dataRepository.getNotifications();
      emit(NotificationsState.getNotifications(
          data: state.data
              ?.copyWith(notifications: _notificationResponse.data ?? [])));
    } catch (error) {
      Helpers.handleErrorApp(error: error);
    } finally {
      UIHelpers.dismissLoading();
    }
  }
}
