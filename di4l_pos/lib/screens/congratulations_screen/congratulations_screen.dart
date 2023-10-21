import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:di4l_pos/common/global_images.dart';
import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/common/global_styles.dart';
import 'package:di4l_pos/route_generator.dart';
import 'package:di4l_pos/screens/congratulations_screen/cubit/congratulations_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class CongratulationsScreen extends StatefulWidget {
  /// MARK: - Initials;
  static BlocProvider<CongratulationsCubit> provider() {
    return BlocProvider(
      create: (context) => CongratulationsCubit(),
      child: const CongratulationsScreen(),
    );
  }

  const CongratulationsScreen({Key? key}) : super(key: key);

  @override
  State<CongratulationsScreen> createState() => _CongratulationsScreenState();
}

class _CongratulationsScreenState extends State<CongratulationsScreen>
    with AfterLayoutMixin {
  /// MARK: - Initials;
  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Get.width,
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            /// Icon
            Image.asset(GlobalImages.success),
            const SizedBox(height: 40.0),

            /// Title
            Text(
              'congratulations'.tr,
              style: GlobalStyles.boldStyle.copyWith(fontSize: 30),
            ),

            /// Desctions
            const SizedBox(height: 8.0),
            const Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris cras",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
            ),

            /// Continue Button
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                navigator!.pushNamedAndRemoveUntil(
                    RouteGenerator.mainScreen, (route) => false);
              },
              style:
                  ElevatedButton.styleFrom(backgroundColor: GlobalColors.primaryColor),
              child: Text(
                'continue_button'.tr,
                style: GlobalStyles.boldStyle.copyWith(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
