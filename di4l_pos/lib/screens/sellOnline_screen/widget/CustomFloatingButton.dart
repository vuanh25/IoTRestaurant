// ignore: duplicate_ignore
// ignore_for_file: file_names, must_be_immutable

import 'package:di4l_pos/common/global_styles.dart';
import 'package:di4l_pos/route_generator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_scrolling_fab_animated/flutter_scrolling_fab_animated.dart';
import 'package:get/get_navigation/get_navigation.dart';

class CustomFloatingButton extends StatelessWidget {
  CustomFloatingButton({Key? key, this.scrollController, required this.title}) : super(key: key);
  final ScrollController? scrollController;
  final String title;
  @override
  Widget build(BuildContext context) {
    return ScrollingFabAnimated(
      width: MediaQuery.of(context).size.width * 0.45,
      icon: const Icon(
        Icons.add,
        color: Colors.white,
      ),
      text: Text(
        title,
        style: GlobalStyles.titleHeader1(context),
      ),
      onPress: () {
        navigator!.pushNamed(RouteGenerator.addProductScreen);
      },
      scrollController: scrollController,
      animateIcon: true,
      inverted: false,
      radius: 60.0,
    );
  }
}
