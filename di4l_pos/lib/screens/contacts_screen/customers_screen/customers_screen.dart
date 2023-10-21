import 'package:di4l_pos/screens/contacts_screen/customers_screen/desktop/customers_desktop_screen.dart';
import 'package:di4l_pos/screens/contacts_screen/customers_screen/mobile/customers_mobile_screen.dart';
import 'package:di4l_pos/screens/contacts_screen/customers_screen/table/customer_table_screen.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class CustomersScreen extends StatelessWidget {
  const CustomersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (context) => CustomersMobileScreen.provider(),
      tablet: (context) => CustomersMobileScreen.provider(),
      desktop: (context) => CustomersMobileScreen.provider(),
    );
  }
}
