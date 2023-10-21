// ignore_for_file: unnecessary_this

import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/screens/change_pass_screen/cubit/change_pass_cubit.dart';
import 'package:di4l_pos/widgets/custom_appbar.dart';
import 'package:di4l_pos/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class ChangePassScreen extends StatefulWidget {
  /// MARK: - Initials;

  static BlocProvider<ChangePassCubit> provider() {
    return BlocProvider(
      create: (context) => ChangePassCubit(),
      child: const ChangePassScreen(),
    );
  }

  const ChangePassScreen({Key? key}) : super(key: key);

  @override
  State<ChangePassScreen> createState() => _ChangePassScreenState();
}

class _ChangePassScreenState extends State<ChangePassScreen>
    with AfterLayoutMixin {
  /// MARK: - Initials;
  final TextEditingController _txtCurrentPassword = TextEditingController();
  final TextEditingController _txtNewPassword = TextEditingController();
  final TextEditingController _txtConfirmPassword = TextEditingController();
  bool isShowCurrentPass = false;
  bool isShowNewPass = false;
  bool isShowConfirmPass = false;
  final _formKey = GlobalKey<FormState>();
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey();

  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {}

  @override
  void dispose() {
    _txtCurrentPassword.dispose();
    _txtNewPassword.dispose();
    _txtConfirmPassword.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      appBar: CustomAppBar(
        title: 'change_password'.tr,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                /// Current password
                const SizedBox(height: 8.0),
                CustomTextField(
                  controller: _txtCurrentPassword,
                  hintLabel: 'current_password'.tr,
                  isObscure: true,
                  isShowPass: this.isShowCurrentPass,
                  onPressedObscure: () {
                    setState(() {
                      this.isShowCurrentPass = !this.isShowCurrentPass;
                    });
                  },
                  validator: (value) {
                    if (value?.trim().isEmpty ?? true) {
                      return 'current_password_is_empty'.tr;
                    }
                    return null;
                  },
                ),

                /// New password
                const SizedBox(height: 16.0),
                CustomTextField(
                  controller: _txtNewPassword,
                  hintLabel: 'new_password'.tr,
                  isObscure: true,
                  isShowPass: this.isShowNewPass,
                  onPressedObscure: () {
                    setState(() {
                      this.isShowNewPass = !this.isShowNewPass;
                    });
                  },
                  validator: (value) {
                    if (value?.trim().isEmpty ?? true) {
                      return 'new_password_is_empty'.tr;
                    }
                    return null;
                  },
                ),

                /// Confirm password
                const SizedBox(height: 16.0),
                CustomTextField(
                  controller: _txtConfirmPassword,
                  hintLabel: 'confirm_password'.tr,
                  isObscure: true,
                  isShowPass: this.isShowConfirmPass,
                  onPressedObscure: () {
                    setState(() {
                      this.isShowConfirmPass = !this.isShowConfirmPass;
                    });
                  },
                  validator: (value) {
                    if (value?.trim().isEmpty ?? true) {
                      return 'confirm_password_is_empty'.tr;
                    }
                    // ignore: no_leading_underscores_for_local_identifiers
                    final _newPassword = _txtNewPassword.text.trim();
                    if (_newPassword != value?.trim()) {
                      return 'confirm_password_and_new_password_do_not_match'
                          .tr;
                    }
                    return null;
                  },
                ),

                /// Update
                const SizedBox(height: 8.0),
                ConstrainedBox(
                  constraints: const BoxConstraints.tightFor(
                      height: 44, width: double.infinity),
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        _globalKey.currentContext!
                            .read<ChangePassCubit>()
                            .changePassword(
                              currentPassword: _txtCurrentPassword.text,
                              newPassword: _txtNewPassword.text,
                            );
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: GlobalColors.primaryColor,
                    ),
                    child: Text(
                      'save'.tr.toUpperCase(),
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
