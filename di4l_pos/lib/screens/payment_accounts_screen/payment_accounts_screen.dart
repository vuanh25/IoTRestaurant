import 'package:di4l_pos/screens/payment_accounts_screen/mobile/payment_accounts_mobile_screen.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class PaymentAccountsScreen extends StatelessWidget {
  const PaymentAccountsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
        mobile: (context) => PaymentAccountsMobileScreen.provider());
  }
}
