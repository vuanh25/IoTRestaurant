import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GlobalColors {
  static const Color bgColor = Color(0xfff1f3f5);
  static const Color debtColor = Color(0xff9f1e1e);

  static const Color flButtonColor = Color(0xff3370cc);
  static const Color primaryColor = Color.fromRGBO(14, 135, 64, 1);

  static const Color kGreyTextColor = Color(0xFF828282);
  static const Color kBorderColorTextField = Color(0xFFC2C2C2);
  static const Color kDarkWhite = Color(0xFFF1F7F7);
  static const Color bgSearch = Color(0xffe4e6ed);
  static const Color primaryWebColor = Color(0xff2d2d4a);
  static const Color bgWebColor = Color(0xfffcfdff);
  static const Color hintMenuTextColor = Color(0xff9a9bb0);
  static const Color bgWebMenuColor = Color(0xffff3979);
  static const Color borderWebColor = Color(0xffdde5f4);
  static const Color bgButton = Color.fromARGB(255, 242, 243, 245);
  static const Color bgButton1 = Color.fromARGB(255, 239, 250, 244);
  static const Color bgButton2 = Color.fromARGB(255, 252, 238, 235);
  static const Color bgOrange = Color.fromARGB(255, 204, 120, 24);
  static const Color whiteColor = Color.fromARGB(255, 255, 255, 255);
  static const Color blackColor = Color.fromARGB(255, 34, 34, 34);
  static const Color greyColor = Color.fromARGB(255, 199, 207, 218);
  static const Color greenWhiteColor = Color.fromRGBO(181, 221, 197, 1);
  static const Color redColor = Color.fromARGB(255, 209, 61, 66);
  static Color buttonborder = HexColor('#eaeaec');
  static Color kGreenTextColor = HexColor('#0d873e');

  static const Color successColor = Color.fromARGB(255, 3, 169, 39);
  static const Color errorColor = Color.fromARGB(255, 236, 15, 22);

  static const Color appBar1 = Color(0xFF007AD0);
  static const Color appBar2 = Color(0xff0046d0);
  static const Color appBar3 = Color(0xff008bd0);
  static const Color appBar4 = Color(0xff00aed0);
  static Color getTextTitle(BuildContext context) {
    return Get.isDarkMode ? const Color(0xFFFFFFFF) : const Color(0xFF000743);
  }

  //Kitchen Color
  static const Color kitChen1 = Color.fromARGB(255, 224, 224, 224);
  static const Color kitChen2 = Color(0xff00aed0);
  static const Color packingSlip = Color.fromARGB(255, 3, 170, 53);
  static const Color printInvoice = Color.fromARGB(255, 9, 110, 241);
  static const Color close = Color.fromARGB(255, 206, 206, 206);
}

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF$hexColor";
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}
