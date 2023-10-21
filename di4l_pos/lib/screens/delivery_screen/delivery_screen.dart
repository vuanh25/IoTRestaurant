import 'package:di4l_pos/screens/delivery_screen/mobile/delivery_mobile_screen.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class DeliveryScreen extends StatelessWidget {
  const DeliveryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (context) => DeliveryMobileScreen.provider(),
      tablet: (context) => DeliveryMobileScreen.provider(),
      desktop: (context) => DeliveryMobileScreen.provider(),
    );
  }
}
