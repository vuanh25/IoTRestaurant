import 'package:di4l_pos/common/dimensions.dart';
import 'package:di4l_pos/widgets/big_text.dart';
import 'package:flutter/cupertino.dart';

class AppLoadingWidget extends StatelessWidget {
  final Widget? widget;
  final String? text;
  const AppLoadingWidget({Key? key, this.widget, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          widget ??
              const CupertinoActivityIndicator(
                  radius: 50, color: CupertinoColors.activeBlue),
          const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),
          BigText(text: text!.isEmpty ? "UpLoading" : text!),
        ],
      ),
    );
  }
}
