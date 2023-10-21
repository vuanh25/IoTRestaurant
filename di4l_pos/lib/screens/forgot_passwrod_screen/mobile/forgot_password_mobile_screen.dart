import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/common/global_styles.dart';
import 'package:di4l_pos/screens/forgot_passwrod_screen/cubit/forgot_password_cubit.dart';
import 'package:di4l_pos/widgets/custom_appbar.dart';
import 'package:di4l_pos/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class ForgotPasswordMobileScreen extends StatefulWidget {
  /// MARK: - Initials;
  static BlocProvider<ForgotPasswordCubit> provider() {
    return BlocProvider(
      create: (context) => ForgotPasswordCubit(),
      child: ForgotPasswordMobileScreen(),
    );
  }

  const ForgotPasswordMobileScreen({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordMobileScreen> createState() =>
      _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordMobileScreen> {
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey();
  final GlobalKey<FormState> _formKey = GlobalKey();
  final _txtEmailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      appBar: CustomAppBar(
        title: 'forgot_password'.tr,
      ),
      body: SingleChildScrollView(
        child: Container(
          width: Get.width,
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                // /// Title
                // const SizedBox(height: 80),
                // Text(
                //   'forgot_password'.tr,
                //   style: GlobalStyles.boldStyle.copyWith(fontSize: 30),
                // ),
                // const SizedBox(height: 8.0),

                // /// Description
                // const SizedBox(height: 8.0),
                // Text(
                //   'forgot_password_description'.tr,
                //   textAlign: TextAlign.center,
                // ),

                /// Email Field
                // const SizedBox(height: 20),
                CustomTextField(
                  controller: _txtEmailController,
                  hintLabel: 'email_address'.tr,
                  keyboardKey: TextInputType.emailAddress,
                  validator: (value) {
                    if (value?.trim().isEmpty ?? true) {
                      return 'email_is_required'.tr;
                    }
                    return null;
                  },
                ),

                /// Button Send OTP
                const SizedBox(height: 20),
                ConstrainedBox(
                  constraints: BoxConstraints.tightFor(
                      height: 44, width: double.infinity),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: GlobalColors.primaryColor,
                    ),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        _globalKey.currentContext!
                            .read<ForgotPasswordCubit>()
                            .sendEmail(email: _txtEmailController.text);
                      }
                    },
                    child: Text(
                      'send_otp'.tr.toUpperCase(),
                      style:
                          GlobalStyles.boldStyle.copyWith(color: Colors.white),
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
