import 'package:di4l_pos/screens/notifications_screen/desktop/notifications_desktop_screen.dart';
import 'package:di4l_pos/screens/notifications_screen/mobile/notifications_mobile_screen.dart';
import 'package:di4l_pos/screens/notifications_screen/table/notifications_table_screen.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (context) => NotificationsMobileScreen.provider(),
      desktop: (context) => NotificationsMobileScreen.provider(),
      tablet: (context) => NotificationsMobileScreen.provider(),
    );
  }
}
