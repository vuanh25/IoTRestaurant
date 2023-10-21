import 'package:di4l_pos/screens/login_screen/desktop/login_desktop_screen.dart';
import 'package:di4l_pos/screens/login_screen/mobile/login_mobile_screen.dart';
import 'package:di4l_pos/screens/login_screen/table/login_table_screen.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class LoginScreen extends StatelessWidget {
  /// MARK: - Initials;
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => LoginMobileScreen.provider(),
      desktop: (BuildContext context) => LoginMobileScreen.provider(),
      tablet: (BuildContext context) => LoginMobileScreen.provider(),
    );
  }
}
