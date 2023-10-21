import 'package:di4l_pos/screens/contacts_screen/suppliers_screen/desktop/suppliers_desktop_screen.dart';
import 'package:di4l_pos/screens/contacts_screen/suppliers_screen/mobile/suppliers_mobile_screen.dart';
import 'package:di4l_pos/screens/contacts_screen/suppliers_screen/table/suppliers_table_screen.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class SuppliersScreen extends StatelessWidget {
  SuppliersScreen({Key? key}) : super(key: key);
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (context) => SuppliersMobileScreen(globalKey: _globalKey),
      tablet: (context) => SuppliersMobileScreen(globalKey: _globalKey),
      desktop: (context) => SuppliersMobileScreen(globalKey: _globalKey)
    );
  }
}
