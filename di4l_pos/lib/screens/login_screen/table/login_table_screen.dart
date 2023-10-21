import 'dart:async';

import 'package:di4l_pos/common/dimensions.dart';
import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/common/global_styles.dart';
import 'package:di4l_pos/common/ui_helpers.dart';
import 'package:di4l_pos/enums/register_type.dart';
import 'package:di4l_pos/route_generator.dart';
import 'package:di4l_pos/screens/login_screen/cubit/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:after_layout/after_layout.dart';
import 'package:get/get.dart';
import 'package:di4l_pos/widgets/custom_textfield.dart';
import 'package:di4l_pos/widgets/socials_login/apple_button.dart';
import 'package:di4l_pos/widgets/socials_login/google_button.dart';

class LoginTableScreen extends StatefulWidget {
  /// MARK: - Initials;
  static BlocProvider<LoginCubit> provider() {
    return BlocProvider(
      create: (context) => LoginCubit(),
      child: const LoginTableScreen(),
    );
  }

  const LoginTableScreen({Key? key}) : super(key: key);

  @override
  State<LoginTableScreen> createState() => _LoginTableScreenState();
}

class _LoginTableScreenState extends State<LoginTableScreen> with AfterLayoutMixin {
  /// MARK: - Initials
  final TextEditingController _txtEmail = TextEditingController();
  final TextEditingController _txtPassword = TextEditingController();
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey();
  final _formKey = GlobalKey<FormState>();

  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {}

  // @override
  // void initState() {
  //   super.initState();
  //   _txtEmail.text = 'restaurantdi4l';
  //   _txtPassword.text = 'Abc@123456';
  // }

  @override
  void dispose() {
    _txtEmail.dispose();
    _txtPassword.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state.data!.error != '') {
          if (state.data!.error!.contains('Email') ||
              state.data!.error!.contains('Password')) {
            UIHelpers.showSnackBar(
                message: state.data!.error!, type: SnackBarType.ERROR);
          } else {
            if (state.data!.error!.contains('Success')) {
              navigator!.pushNamedAndRemoveUntil(
                  RouteGenerator.switchAccount, (route) => false);
            } else {
              UIHelpers.showSnackBar(
                message: 'email_or_password_is_incorrect'.tr, type: SnackBarType.ERROR);
            }
          }
        }
      },
      child: Scaffold(
        key: _globalKey,
        body: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  /// Logo
                  const SizedBox(height: 40),

                  Padding(
                    padding: const EdgeInsets.only(
                        top: 40.0, right: 100.0, bottom: 30),
                    child: Container(
                      child: Text(
                        "welcome_to".tr + " Di4l",
                        style: TextStyle(fontSize: 45),
                      ),
                      height: 100,
                      width: 300,
                    ),

                    //Image.asset(
                    //   GlobalImages.kAppIcon,
                    //   height: 150,
                    //   width: 150,
                    // ),
                  ),

                  /// Email
                  const SizedBox(height: 35.0),
                  CustomTextField(
                    hintLabel: 'username_or_email'.tr,
                    controller: _txtEmail,
                  ),

                  /// Password
                  const SizedBox(height: 16.0),
                  BlocBuilder<LoginCubit, LoginState>(
                    builder: (context, state) => CustomTextField(
                      controller: _txtPassword,
                      isShowPass: state.data!.showPass,
                      hintLabel: 'password'.tr,
                      isObscure: true,
                      onPressedObscure: () => _globalKey.currentContext!
                          .read<LoginCubit>()
                          .showPass(!state.data!.showPass),
                    ),
                  ),

                  /// Forgot button
                  Container(
                    width: Get.width,
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () => navigator!
                          .pushNamed(RouteGenerator.forgotPasswordScreen),
                      child: Text(
                        'forgot_password'.tr,
                      ),
                    ),
                  ),

                  /// Button Login
                  ConstrainedBox(
                    constraints: const BoxConstraints.tightFor(
                        height: 44, width: double.infinity),
                    child: ElevatedButton(
                      onPressed: () {
                        FocusManager.instance.primaryFocus?.unfocus();
                        _globalKey.currentContext!
                          .read<LoginCubit>()
                          .login(
                              email: _txtEmail.text,
                              password: _txtPassword.text);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: GlobalColors.primaryColor,
                      ),
                      child: Text(
                        'login'.tr,
                        style: GlobalStyles.boldStyle
                            .copyWith(color: Colors.white),
                      ),
                    ),
                  ),

                  /// Socilas Login
                  const SizedBox(height: 16),
                  //Text('or'.tr, style: GlobalStyles.titleHeader(context)),

                  /// Google Login
                  const SizedBox(height: 53),
                  GoolgeButton(
                    onPressed: () => _globalKey.currentContext!
                        .read<LoginCubit>()
                        .handleGoogleLogin(),
                  ),

                  /// Check ios and show button login apple
                  if (GetPlatform.isIOS) ...[
                    const SizedBox(height: 16),
                    AppleButton(
                      onPressed: () => _globalKey.currentContext!
                          .read<LoginCubit>()
                          .handleAppleLogin(),
                    ),
                  ],

                  /// Register button
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('have_not_any_account'.tr),
                      const SizedBox(width: Dimensions.BORDER_DEFAULT),
                      TextButton(
                        onPressed: () => navigator!.pushNamed(
                          RouteGenerator.registerScreen,
                          arguments: {
                            'REGISTER_TYPE': RegisterType.REGISTER,
                          },
                        ),
                        child: Text(
                          'register'.tr,
                          style: GlobalStyles.boldStyle.copyWith(fontSize: 17),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
