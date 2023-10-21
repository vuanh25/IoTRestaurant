import 'package:di4l_pos/common/dimensions.dart';
import 'package:di4l_pos/common/global_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_scrolling_fab_animated/flutter_scrolling_fab_animated.dart';

class ScrollingFabAnimatedCustom extends StatelessWidget {
  const ScrollingFabAnimatedCustom(
      {Key? key,
      required ScrollController scrollController,
      required String text,
      required IconData iconData,
      required Function()? onPress,
      this.width,
      this.height})
      : _scrollController = scrollController,
        _text = text,
        _iconData = iconData,
        _onPress = onPress,
        super(key: key);

  final ScrollController _scrollController;
  final String _text;
  final IconData _iconData;
  final Function()? _onPress;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return ScrollingFabAnimated(
      width: width ?? 180,
      height: height ?? 35,
      elevation: 0,
      color: GlobalColors.flButtonColor,
      icon: Icon(
        _iconData,
        size: 18,
        color: Colors.white,
      ),
      text: Text(
        _text,
        style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: Dimensions.FONT_SIZE_LARGE),
      ),
      onPress: _onPress,
      scrollController: _scrollController,
      animateIcon: false,
    );
  }
}
