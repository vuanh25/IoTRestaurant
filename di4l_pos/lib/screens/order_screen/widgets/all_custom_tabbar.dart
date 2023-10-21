// ignore_for_file: depend_on_referenced_packages

import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/common/global_styles.dart';
import 'package:di4l_pos/route_generator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class AllCustomTabBar extends StatelessWidget {
  const AllCustomTabBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: size.height * 0.15),
          SvgPicture.asset(
            'assets/svg/don_hang_hinhtron.svg',
            height: 220,
            width: 180,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 30),
          Text(
            'no_order'.tr,
            style: GlobalStyles.normalStyle.copyWith(
              fontSize: 16,
              color: GlobalColors.kGreyTextColor,
            ),
          ),
          const SizedBox(height: 20),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: InkWell(
              onTap: () {
                navigator!.pushNamed(RouteGenerator.selectPorductForOrder);
              },
              child: Container(
                height: 55,
                width: 250,
                alignment: Alignment.center,
                color: GlobalColors.kGreenTextColor,
                child: Text(
                  'create_order'.tr,
                  style: GlobalStyles.normalStyle.copyWith(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
