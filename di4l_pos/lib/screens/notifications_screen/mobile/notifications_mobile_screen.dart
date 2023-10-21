import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:di4l_pos/common/global_images.dart';
import 'package:di4l_pos/models/notifications/response/notification_response.dart';
import 'package:di4l_pos/route_generator.dart';
import 'package:di4l_pos/screens/notifications_screen/cubit/notifications_cubit.dart';
import 'package:di4l_pos/screens/notifications_screen/widgets/notification_widget.dart';
import 'package:di4l_pos/widgets/custom_appbar.dart';
import 'package:di4l_pos/widgets/custom_divider_widget.dart';
import 'package:di4l_pos/widgets/empty_state_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class NotificationsMobileScreen extends StatefulWidget {
  /// MARK: - Initials;
  static BlocProvider<NotificationsCubit> provider() {
    return BlocProvider(
      create: (context) => NotificationsCubit(),
      child: NotificationsMobileScreen(),
    );
  }

  const NotificationsMobileScreen({Key? key}) : super(key: key);

  @override
  State<NotificationsMobileScreen> createState() =>
      _NotificationsMobileScreenState();
}

class _NotificationsMobileScreenState extends State<NotificationsMobileScreen>
    with AfterLayoutMixin {
  /// MARK: - Initials;
  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
    context.read<NotificationsCubit>().getNotifications();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'notifications'.tr,
      ),
      body: BlocBuilder<NotificationsCubit, NotificationsState>(
        builder: (context, state) {
          final _notifications = state.data?.notifications ?? [];
          if (_notifications.isEmpty) {
            return EmptyStateWidget(
              urlImage: GlobalImages.notificationIcon,
              title: 'no_notifications_yet'.tr,
              message: 'no_notifications_message'.tr,
            );
          }
          return ListView.separated(
            padding: const EdgeInsets.all(8.0),
            itemBuilder: (context, index) {
              return NotificationWidget(
                onPresseed: (NotificationModel? notification) {
                  navigator!.pushNamed(
                    RouteGenerator.webViewScreen,
                    arguments: {
                      'TITLE': 'notification_detail'.tr,
                      'URL': notification?.link ?? ''
                    },
                  );
                },
                notification: _notifications.elementAt(index),
              );
            },
            separatorBuilder: (context, index) {
              return const CustomDividerWidget();
            },
            itemCount: _notifications.length,
          );
        },
      ),
    );
  }
}
