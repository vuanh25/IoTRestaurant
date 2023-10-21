import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/common/global_styles.dart';
import 'package:di4l_pos/common/ui_helpers.dart';
import 'package:di4l_pos/models/user/response/profile_response.dart';
import 'package:di4l_pos/screens/main_screen/mobile/widgets/my_appbar.dart';
import 'package:di4l_pos/screens/profile_screen/cubit/profile_cubit.dart';
import 'package:di4l_pos/widgets/custom_button/button_text_custom.dart';
import 'package:di4l_pos/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class UpdateProfileScreen extends StatefulWidget {
  final ProfileResponse profile;
  const UpdateProfileScreen({
    Key? key,
    required this.profile,
  }) : super(key: key);
  static BlocProvider<ProfileCubit> provider(
      {required ProfileResponse profile}) {
    return BlocProvider(
      create: (context) => ProfileCubit(),
      child: UpdateProfileScreen(profile: profile),
    );
  }

  @override
  State<UpdateProfileScreen> createState() => _UpdateProfileScreenState();
}

class _UpdateProfileScreenState extends State<UpdateProfileScreen>
    with AfterLayoutMixin {
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey();
  final TextEditingController _txtFirstName = TextEditingController();
  final TextEditingController _txtLastName = TextEditingController();
  final TextEditingController _txtEmail = TextEditingController();

  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
    this._txtFirstName.text = widget.profile.firstName!;
    this._txtLastName.text = widget.profile.lastName!;
  }

  @override
  void dispose() {
    _txtEmail.dispose();
    _txtFirstName.dispose();
    _txtLastName.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ProfileCubit, ProfileState>(
      listener: (context, state) {
        if (state.data!.success == 0) {
          UIHelpers.showSnackBar(
              message: state.data!.error, type: SnackBarType.ERROR);
        } else {
          navigator!.pop(context);
        }
      },
      child: Scaffold(
        key: _globalKey,
        appBar: buildAppBar(context),
        body: buildBody(),
      ),
    );
  }

  SafeArea buildBody() {
    return SafeArea(
      child: Form(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              /// First name
              const SizedBox(height: 8.0),
              CustomTextField(
                controller: _txtFirstName,
                hintLabel: 'first_name'.tr,
                validator: (value) {
                  if (value?.isEmpty ?? true) {
                    return 'first_name_is_empty'.tr;
                  }
                  return null;
                },
              ),

              /// Last name
              const SizedBox(height: 16.0),
              CustomTextField(
                controller: _txtLastName,
                validator: (value) {
                  if (value?.isEmpty ?? true) {
                    return 'last_name_is_empty'.tr;
                  }
                  return null;
                },
                hintLabel: 'last_name'.tr,
              ),

              /// Email
              const SizedBox(height: 16.0),
              CustomTextField(
                controller: _txtEmail,
                hintLabel: 'email'.tr,
                isEnable: false,
              ),

              /// Save button
              const SizedBox(height: 8.0),
              AppButtonTextCustom(
                title: 'save'.tr.toUpperCase(),
                onPressed: () => _globalKey.currentContext!
                    .read<ProfileCubit>()
                    .updateProfiles(
                        firstName: _txtFirstName.text,
                        lastName: _txtLastName.text),
              ),
            ],
          ),
        ),
      ),
    );
  }

  MyAppBar buildAppBar(BuildContext context) {
    return MyAppBar(
      backgroundColor: Colors.white,
      leadingButtonColor: Colors.black,
      title: Text(
        'update_profile'.tr,
        style: GlobalStyles.titleHeader(context).copyWith(
            fontSize: 18,
            color: GlobalColors.primaryWebColor,
            fontWeight: FontWeight.w500),
      ),
    );
  }
}
