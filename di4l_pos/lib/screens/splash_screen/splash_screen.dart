import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:di4l_pos/common/global_images.dart';
import 'package:di4l_pos/common/storage/app_prefs.dart';
import 'package:di4l_pos/get_it.dart';
import 'package:di4l_pos/route_generator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:di4l_pos/common/global_colors.dart';

class SplashScreen extends StatefulWidget {
  /// MARK: - Initials;
  static SplashScreen provider() {
    return SplashScreen();
  }

  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with AfterLayoutMixin {
  /// MARK: - Initials;
  final _appPrefs = getIt<AppPref>();

  @override
  FutureOr<void> afterFirstLayout(BuildContext context) async {
    // final isSkip = await _appPrefs.isSkipOnboard();
    final hasLoggedIn = await _appPrefs.hasLoggedIn();
    if (GetPlatform.isWeb) {
      if (hasLoggedIn) {
        navigator!.pushNamedAndRemoveUntil(
          RouteGenerator.mainScreen,
          (route) => false,
        );
      } else {
        navigator!.pushNamedAndRemoveUntil(
            RouteGenerator.loginScreen, (route) => false);
      }
    } else {
      Future.delayed(
        Duration(seconds: 2),
        () {
          if (hasLoggedIn) {
            navigator!.pushNamedAndRemoveUntil(
              RouteGenerator.mainScreen,
              (route) => false,
            );
          } else {
            // if (isSkip) {
            navigator!.pushNamedAndRemoveUntil(
                RouteGenerator.loginScreen, (route) => false);
            // } else {
            //   navigator!.pushNamedAndRemoveUntil(
            //     RouteGenerator.onboardScreen,
            //     (route) => false,
            //   );
            // }
          }
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ScreenTypeLayout.builder(
          mobile: (BuildContext context) => Image.asset(
            GlobalImages.splashScreen,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.fill,
          ),
          tablet: (BuildContext context) => OrientationBuilder(
            builder: (context, orientation) {
              if(orientation == Orientation.portrait){
                return Image.asset(
                  GlobalImages.splashScreen,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.fill,
                );
              }
              else {
                return Image.asset(
                  GlobalImages.splashScreen,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.fill,
                );
              }
          }),
          desktop: (BuildContext context) => Image.asset(
            GlobalImages.splashScreen,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.fill,
          ),
        )
      )
    );
  }
}
