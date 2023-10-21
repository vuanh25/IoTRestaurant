import 'package:di4l_pos/screens/products_screen/desktop/products_desktop_screen.dart';
import 'package:di4l_pos/screens/products_screen/mobile/products_mobile_screen.dart';
import 'package:di4l_pos/screens/products_screen/table/products_table_screen.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (context) => ProductsMobileScreen.provider(),
      tablet: (context) => ProductsMobileScreen.provider(),
      desktop: (context) => ProductsMobileScreen.provider(),
    );
  }
}
