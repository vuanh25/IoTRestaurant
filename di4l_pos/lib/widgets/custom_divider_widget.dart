import 'package:flutter/material.dart';

class CustomDividerWidget extends StatelessWidget {
  const CustomDividerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        SizedBox(height: 4.0),
        Divider(color: Colors.grey, height: 1.0),
        SizedBox(height: 4.0),
      ],
    );
  }
}
