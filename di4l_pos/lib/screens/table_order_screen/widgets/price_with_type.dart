import 'package:di4l_pos/common/dimensions.dart';
import 'package:di4l_pos/common/global_styles.dart';
import 'package:flutter/material.dart';

class PriceWithType extends StatelessWidget {
  final String type;
  final String amount;
  final bool isTotal;
  const PriceWithType(
      {Key? key,
      required this.type,
      required this.amount,
      this.isTotal = false,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            type,
            style: isTotal
                ? GlobalStyles.robotoBold(context).copyWith(
                    fontSize: Dimensions.FONT_SIZE_LARGE,
                  )
                : GlobalStyles.robotoRegular(context)
                    .copyWith(fontSize: Dimensions.FONT_SIZE_LARGE),
          ),
          
          Text(amount,
              style: isTotal
                  ? GlobalStyles.robotoBold(context).copyWith(
                      fontSize: Dimensions.FONT_SIZE_LARGE,
                    )
                  : GlobalStyles.robotoRegular(context)
                      .copyWith(fontSize: Dimensions.FONT_SIZE_LARGE)),
        ],
      ),
    );
  }
}
