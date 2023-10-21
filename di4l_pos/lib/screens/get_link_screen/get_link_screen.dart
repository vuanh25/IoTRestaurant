import 'package:di4l_pos/enums/link_type.dart';
import 'package:di4l_pos/enums/position.dart';
import 'package:di4l_pos/screens/get_link_screen/mobile/get_link_mobile_screen.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class GetLinkScreen extends StatelessWidget {
  final Position? position;

  /// MARK: - Initials;
  const GetLinkScreen({
    Key? key,
    this.position,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => GetLinkMobileScreen.provider(position: position),
      tablet: (BuildContext context) => GetLinkMobileScreen.provider(position: position),
      desktop: (BuildContext context) => GetLinkMobileScreen.provider(position: position),
    );
  }
}
