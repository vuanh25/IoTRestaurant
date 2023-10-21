import 'package:di4l_pos/screens/main_screen/desktop/main_desktop_screen.dart';
import 'package:di4l_pos/screens/main_screen/mobile/main_mobile_screen.dart';
import 'package:di4l_pos/screens/main_screen/table/main_table_screen.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class MainScreen extends StatelessWidget {
  /// MARK: - Initials;
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (context) => MainMobileScreen.provider(),
      tablet: (context) => MainMobileScreen.provider(),
      desktop: (context) => MainMobileScreen.provider(),
    );
  }
}
