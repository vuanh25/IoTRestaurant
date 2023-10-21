import 'package:di4l_pos/screens/errors_screen/not_found_screen/desktop/not_found_desktop_screen.dart';
import 'package:di4l_pos/screens/errors_screen/not_found_screen/mobile/not_found_mobile_screen.dart';
import 'package:di4l_pos/screens/errors_screen/not_found_screen/table/not_found_table_screen.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class NotFoundScreen extends StatelessWidget {
  const NotFoundScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (context) => NotFoundMobileScreen(),
      tablet: (context) => NotFoundMobileScreen(),
      desktop: (context) => NotFoundMobileScreen(),
    );
  }
}
