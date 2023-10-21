import 'package:di4l_pos/screens/notifications_screen/cubit/notifications_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NotificationsTableScreen extends StatefulWidget {
  /// MARK: - Initials;
  static BlocProvider<NotificationsCubit> provider() {
    return BlocProvider(
      create: (context) => NotificationsCubit(),
      child: NotificationsTableScreen(),
    );
  }

  const NotificationsTableScreen({Key? key}) : super(key: key);

  @override
  State<NotificationsTableScreen> createState() =>
      _NotificationsTableScreenState();
}

class _NotificationsTableScreenState extends State<NotificationsTableScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
