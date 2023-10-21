import 'package:di4l_pos/screens/onboard_screen/mobile/onboard_mobile_screen.dart';
import 'package:di4l_pos/screens/onboard_screen/table/onboard_table_screen.dart';
import 'package:di4l_pos/screens/onboard_screen/web/onboard_web_screen.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class OnboardScreen extends StatelessWidget {
  /// MARK: - Initials;
  const OnboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (context) => OnboardMobileScreen.provider(),
      tablet: (context) => OnboardMobileScreen.provider(),
      desktop: (context) => OnboardMobileScreen.provider(),
    );
  }
}
