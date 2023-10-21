// ignore_for_file: implementation_imports

import 'package:di4l_pos/screens/settings_screen/desktop/settings_desktop_screen.dart';
import 'package:di4l_pos/screens/settings_screen/mobile/settins_mobile_screen.dart';
import 'package:di4l_pos/screens/settings_screen/table/settings_table_screen.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:responsive_builder/responsive_builder.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (context) => SettingsMobileScreen.provider(),
      desktop: (context) => SettingsMobileScreen.provider(),
      tablet: (context) => SettingsMobileScreen.provider(),
    );
  }
}
