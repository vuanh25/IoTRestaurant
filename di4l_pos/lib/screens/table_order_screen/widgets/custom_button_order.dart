import 'package:di4l_pos/common/dimensions.dart';
import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/common/global_styles.dart';
import 'package:di4l_pos/screens/table_order_screen/mobile/table_order_mobile_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class CustomButton2 extends StatelessWidget {
  final VoidCallback onPressed;
  final String buttonText;
  final bool printTotal;
  final bool transparent;
  final EdgeInsets? margin;
  final double? height;
  final double? width;
  final double? fontSize;
  final double radius;
  final IconData? icon;
  final bool isUpdated;

  CustomButton2({
    Key? key,
    required this.onPressed,
    required this.buttonText,
    this.transparent = false,
    this.margin,
    this.width,
    this.height,
    this.fontSize,
    this.radius = 5,
    this.icon,
    this.isUpdated = true,
    this.printTotal = false,
  }) : super(key: key);

  final tableOrder = Get.put(TableOrderController());
  String formatCurrency({required int price}) {
    // return NumberFormat('#,###').format(price);
    return NumberFormat.simpleCurrency(locale: 'vi-VN', decimalDigits: 0)
        .format(price);
  }

  @override
  Widget build(BuildContext context) {
    final ButtonStyle flatButtonStyle = TextButton.styleFrom(
      backgroundColor: transparent
          ? Colors.transparent
          : isUpdated
              ? GlobalColors.primaryColor
              : Colors.grey.shade400,
      minimumSize: Size(
        width != null ? width! : 150,
        height != null ? height! : 50,
      ),
      padding: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          width: 1,
          color: isUpdated ? GlobalColors.primaryColor : Colors.grey.shade500,
        ),
        borderRadius: BorderRadius.circular(radius),
      ),
      splashFactory: NoSplash.splashFactory,
      surfaceTintColor: Colors.transparent,
    );

    return Center(
      child: SizedBox(
        width: width ?? 150,
        child: Padding(
          padding: margin == null ? const EdgeInsets.all(0) : margin!,
          child: TextButton(
            onPressed: isUpdated ? onPressed : () {},
            style: flatButtonStyle,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                icon != null
                    ? Padding(
                        padding: const EdgeInsets.only(
                            right: Dimensions.PADDING_SIZE_EXTRA_SMALL),
                        child: Icon(
                          icon,
                          color: transparent
                              ? GlobalColors.primaryColor
                              : Theme.of(context).cardColor,
                        ),
                      )
                    : const SizedBox(),
                printTotal
                    ? Obx(
                        () => Text(
                          '$buttonText - ${formatCurrency(price: tableOrder.totalOneItem.value)}',
                          textAlign: TextAlign.center,
                          style: GlobalStyles.robotoRegular(context).copyWith(
                            color: transparent
                                ? GlobalColors.primaryColor
                                : Colors.white,
                            fontSize:
                                fontSize ?? Dimensions.FONT_SIZE_EXTRA_LARGE,
                          ),
                        ),
                      )
                    : Text(
                        buttonText,
                        textAlign: TextAlign.center,
                        style: GlobalStyles.robotoRegular(context).copyWith(
                          color: transparent
                              ? GlobalColors.primaryColor
                              : Colors.white,
                          fontSize:
                              fontSize ?? Dimensions.FONT_SIZE_EXTRA_LARGE,
                        ),
                      ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
