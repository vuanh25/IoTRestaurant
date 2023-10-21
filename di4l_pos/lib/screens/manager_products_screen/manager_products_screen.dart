import 'package:di4l_pos/screens/manager_products_screen/desktop/manager_products_desktop_screen.dart';
import 'package:di4l_pos/screens/manager_products_screen/mobile/manager_products_mobile_screen.dart';
import 'package:di4l_pos/screens/manager_products_screen/table/manager_products_table_screen.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ManagerProductsScreen extends StatelessWidget {
  const ManagerProductsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: ManagerProductsMobileScreen.provider(),
      tablet: ManagerProductsTableScreen.provider(),
      desktop: ManagerProductsDesktopScreen.provider(),
    );
  }
}
