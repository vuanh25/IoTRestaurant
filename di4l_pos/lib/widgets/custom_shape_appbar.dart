import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/screens/home_screen/widgets/card_profile_widget.dart';
import 'package:di4l_pos/widgets/custom_tollbar_shape.dart';
import 'package:flutter/material.dart';

class CustomShapeAppBar extends SliverPersistentHeaderDelegate {
  final double height;

  const CustomShapeAppBar({required this.height});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: Colors.transparent,
      child: Stack(
        fit: StackFit.loose,
        children: [
          Container(
            color: Colors.transparent,
            width: MediaQuery.of(context).size.width,
            height: height,
            child: const CustomPaint(
              painter: CustomToolbarShape(lineColor: GlobalColors.primaryColor),
            ),
          ),

          /// Card Profile
          Align(
            alignment: const Alignment(0.0, 1.25),
            child: Container(
              height: 80,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: const CardProfileWidget(),
            ),
          )
        ],
      ),
    );
  }

  @override
  double get maxExtent => height;

  @override
  double get minExtent => height;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
