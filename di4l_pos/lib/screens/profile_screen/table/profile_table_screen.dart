import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:di4l_pos/common/global_images.dart';
import 'package:di4l_pos/common/global_styles.dart';
import 'package:di4l_pos/screens/main_screen/mobile/widgets/my_appbar.dart';
import 'package:di4l_pos/screens/profile_screen/cubit/profile_cubit.dart';
import 'package:di4l_pos/screens/profile_screen/mobile/widgets/card_profile.dart';
import 'package:di4l_pos/screens/profile_screen/mobile/widgets/option_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class ProfileTableScreen extends StatefulWidget {
  /// MARK: - Initials;
  static BlocProvider<ProfileCubit> provider() {
    return BlocProvider(
      create: (context) => ProfileCubit(),
      child: ProfileTableScreen(),
    );
  }

  const ProfileTableScreen({Key? key}) : super(key: key);

  @override
  State<ProfileTableScreen> createState() => _ProfileTableScreenState();
}

class _ProfileTableScreenState extends State<ProfileTableScreen>
    with AfterLayoutMixin {
  /// MARK: - Initials;
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey();

  @override
  FutureOr<void> afterFirstLayout(BuildContext context) async {
    context.read<ProfileCubit>().getProfile();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      appBar: MyAppBar(
        leadingButtonColor: Colors.white,
        title: Text(
          'profile'.tr,
          style: GlobalStyles.titleHeader(context).copyWith(
              fontSize: 18, color: Colors.white, fontWeight: FontWeight.w500),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: Get.width,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              /// Avatar
              const SizedBox(height: 8.0),
              const CardProfile(),
              const SizedBox(height: 5),
              const SizedBox(height: 5),
              const OptionProfile(),
            ],
          ),
        ),
      ),
    );
  }
}
