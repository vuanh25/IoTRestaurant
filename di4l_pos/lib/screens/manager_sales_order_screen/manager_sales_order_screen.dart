import 'package:di4l_pos/screens/manager_sales_order_screen/desktop/manager_sales_order_desktop_screen.dart';
import 'package:di4l_pos/screens/manager_sales_order_screen/mobile/manager_sales_order_mobile_screen.dart';
import 'package:di4l_pos/screens/manager_sales_order_screen/table/manager_sales_order_table_screen.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ManagerSalesOrderScreen extends StatefulWidget {
  const ManagerSalesOrderScreen({Key? key}) : super(key: key);

  @override
  State<ManagerSalesOrderScreen> createState() =>
      _ManagerSalesOrderScreenState();
}

class _ManagerSalesOrderScreenState extends State<ManagerSalesOrderScreen> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: ManagerSalesOrderMobileScreen.provider(),
      tablet: ManagerSalesOrderTableScreen.provider(),
      desktop: ManagerSalesOrderDesktopScreen.provider(),
    );
  }
}
