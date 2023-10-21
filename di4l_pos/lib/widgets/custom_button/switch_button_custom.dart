import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../common/global_colors.dart';

class SwitchCustom extends StatelessWidget {
  const SwitchCustom(
      {Key? key,
      required this.text1,
      required this.text2,
      required this.value,
      required this.boderSide})
      : super(key: key);
  final String text1;
  final String text2;
  final bool value;
  final bool boderSide;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey[300],
      ),
      child: Padding(
        padding: const EdgeInsets.all(2),
        child: Row(
          children: [
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                backgroundColor: value ? Colors.white : Colors.transparent,
                padding: const EdgeInsets.all(5.0),
                elevation: 0.0,
                side: BorderSide(
                  color: value ? GlobalColors.primaryColor : Colors.transparent,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8), // <-- Radius
                ),
              ),
              child: Text(
                text1.tr,
                style: TextStyle(
                    color: value ? GlobalColors.primaryColor : Colors.black54,
                    fontWeight: FontWeight.w300),
              ),
            ),
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                padding: const EdgeInsets.all(5.0),
                backgroundColor: !value ? Colors.white : Colors.transparent,
                elevation: 0.0,
                side: BorderSide(
                  color: !value ? Colors.red : Colors.transparent,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8), // <-- Radius
                ),
              ),
              child: Text(
                text2.tr,
                style: TextStyle(
                    color: !value ? Colors.red : Colors.black54,
                    fontWeight: FontWeight.w300),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
