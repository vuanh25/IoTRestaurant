import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:di4l_pos/screens/staff_management_screen/mobile/staff_management_screen_mobile.dart';

class StaffManagementScreen extends StatelessWidget {
  const StaffManagementScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return ScreenTypeLayout.builder(
      mobile: (context) => StaffManagementScreenMobile.provider(),
      tablet: (context) => StaffManagementScreenMobile.provider(),
      desktop: (context) => StaffManagementScreenMobile.provider(),
    );
  }
}
