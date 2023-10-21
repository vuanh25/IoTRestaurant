import 'package:di4l_pos/screens/contacts_screen/customer_group/desktop/customers_group_desktop_screen.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class CustomerGroupScreen extends StatelessWidget {
  const CustomerGroupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (context) => Container(),
      tablet: (context) => Container(),
      desktop: (context) => CustomersGroupDesktopScreen.provider(),
    );
  }
}
