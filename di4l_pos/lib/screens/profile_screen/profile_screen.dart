import 'package:di4l_pos/screens/profile_screen/desktop/profile_desktop_screen.dart';
import 'package:di4l_pos/screens/profile_screen/mobile/profile_mobile_screen.dart';
import 'package:di4l_pos/screens/profile_screen/table/profile_table_screen.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (context) => ProfileMobileScreen.provider(),
      desktop: (context) => ProfileMobileScreen.provider(),
      tablet: (context) => ProfileMobileScreen.provider(),
    );
  }
}
