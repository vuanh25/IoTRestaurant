import 'package:di4l_pos/screens/forgot_passwrod_screen/desktop/forgot_password_desktop_screen.dart';
import 'package:di4l_pos/screens/forgot_passwrod_screen/mobile/forgot_password_mobile_screen.dart';
import 'package:di4l_pos/screens/forgot_passwrod_screen/table/forgot_password_table_screen.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (context) => ForgotPasswordMobileScreen.provider(),
      desktop: (context) => ForgotPasswordMobileScreen.provider(),
      tablet: (context) => ForgotPasswordMobileScreen.provider(),
    );
  }
}
