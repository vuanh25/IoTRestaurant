import 'package:di4l_pos/screens/branch_screen/desktop/branch_desktop_screen.dart';
import 'package:di4l_pos/screens/branch_screen/mobile/branch_mobile_screen.dart';
import 'package:di4l_pos/screens/branch_screen/table/branch_table_screen.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class BranchScreen extends StatelessWidget {
  const BranchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (context) => BranchMobileScreen.provider(),
      tablet: (context) => BranchMobileScreen.provider(),
      desktop: (context) => BranchMobileScreen.provider(),
    );
  }

  
}
