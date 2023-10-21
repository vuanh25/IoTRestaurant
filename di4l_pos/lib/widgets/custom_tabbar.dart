import 'package:flutter/material.dart';

class CustomTabBar extends StatelessWidget {
  /// MARK: - Initials;
  final String title;

  const CustomTabBar({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double yourWidth = width / 4;
    return Container(
      width: yourWidth,
      height: 35,
      alignment: Alignment.center,
      child: Text(
        title,
        textAlign: TextAlign.center,
      ),
    );
  }
}
