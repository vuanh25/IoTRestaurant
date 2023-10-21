import 'package:di4l_pos/screens/affiliate_marketing_screen/mobile/affiliate_marketing_screen.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class AffiliateMarketingScreen extends StatelessWidget {
  const AffiliateMarketingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return ScreenTypeLayout.builder(
      mobile: (context) => AffiliateMarketingScreenMobile(tabIndex: 0),
      tablet: (context) => AffiliateMarketingScreenMobile(tabIndex: 0),
      desktop: (context) => AffiliateMarketingScreenMobile(tabIndex: 0),
    );
  }
}
