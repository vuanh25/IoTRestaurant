import 'package:di4l_pos/screens/notifications_screen/cubit/notifications_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NotificationsDesktopScreen extends StatefulWidget {
  /// MARK: - Initials
  static BlocProvider<NotificationsCubit> provider() {
    return BlocProvider(
      create: (context) => NotificationsCubit(),
      child: NotificationsDesktopScreen(),
    );
  }

  const NotificationsDesktopScreen({Key? key}) : super(key: key);

  @override
  State<NotificationsDesktopScreen> createState() =>
      _NotificationsDesktopScreenState();
}

class _NotificationsDesktopScreenState
    extends State<NotificationsDesktopScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
