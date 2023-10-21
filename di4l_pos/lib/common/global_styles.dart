import 'package:di4l_pos/common/dimensions.dart';
import 'package:flutter/material.dart';

class GlobalStyles {
  static const TextStyle boldStyle = TextStyle(fontWeight: FontWeight.bold);
  static const TextStyle normalStyle = TextStyle(fontWeight: FontWeight.bold);


  static TextStyle titilliumRegular(BuildContext context) => const TextStyle(
        fontFamily: 'Roboto',
        fontSize: Dimensions.FONT_SIZE_SMALL,
      );
  static TextStyle titleRegular(BuildContext context) => const TextStyle(
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w500,
        fontSize: Dimensions.FONT_SIZE_DEFAULT,
      );

  static TextStyle titleRegular1(BuildContext context) => const TextStyle(
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w600,
        fontSize: Dimensions.FONT_SIZE_DEFAULT,
      );

  static TextStyle titleRegular2(BuildContext context) => const TextStyle(
        fontFamily: 'Roboto',
        fontSize: Dimensions.FONT_SIZE_DEFAULT,
      );

  static TextStyle titleHeader(BuildContext context) {
    return const TextStyle(
      fontFamily: 'Roboto',
      fontWeight: FontWeight.w600,
      fontSize: Dimensions.FONT_SIZE_LARGE,
    );
  }

  static TextStyle titleHeader1(BuildContext context) {
    return const TextStyle(
      fontFamily: 'Roboto',
      fontWeight: FontWeight.w600,
      fontSize: Dimensions.FONT_SIZE_LARGE,
      color: Colors.white
    );
  }

  static TextStyle titilliumSemiBold(BuildContext context) => const TextStyle(
        fontFamily: 'Roboto',
        fontSize: Dimensions.FONT_SIZE_LARGE,
        fontWeight: FontWeight.w600,
      );

  static TextStyle titilliumSemiBold1(BuildContext context) => const TextStyle(
        fontFamily: 'Roboto',
        fontSize: Dimensions.FONT_SIZE_LARGE,
      );

  static TextStyle titilliumSemiBold2(BuildContext context) => const TextStyle(
        fontFamily: 'Roboto',
        fontSize: Dimensions.FONT_SIZE_EXTRA_LARGE,
        fontWeight: FontWeight.w600,
      );


  static TextStyle titilliumBold(BuildContext context) => const TextStyle(
        fontFamily: 'Roboto',
        fontSize: Dimensions.FONT_SIZE_DEFAULT,
        fontWeight: FontWeight.w700,
      );

  static TextStyle titilliumItalic(BuildContext context) => const TextStyle(
        fontFamily: 'Roboto',
        fontSize: Dimensions.FONT_SIZE_DEFAULT,
        fontStyle: FontStyle.italic,
      );

  static TextStyle robotoRegular(BuildContext context) => const TextStyle(
        fontFamily: 'Roboto',
        fontSize: Dimensions.FONT_SIZE_LARGE,
        fontWeight: FontWeight.w400,
      );

  static TextStyle robotoBold(BuildContext context) => const TextStyle(
        fontFamily: 'Roboto',
        fontSize: Dimensions.FONT_SIZE_DEFAULT,
        fontWeight: FontWeight.w700,
      );

  static const kButtonDecoration = BoxDecoration(
    borderRadius: BorderRadius.all(
      Radius.circular(5),
    ),
  );
}
