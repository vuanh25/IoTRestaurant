import 'package:di4l_pos/common/global_images.dart';
import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/common/global_styles.dart';
import 'package:di4l_pos/screens/login_screen/cubit/login_cubit.dart';
import 'package:di4l_pos/screens/login_screen/desktop/widgets/social_button_desktop.dart';
import 'package:di4l_pos/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:di4l_pos/common/ui_helpers.dart';
import 'package:di4l_pos/route_generator.dart';

class LoginDesktopScreen extends StatefulWidget {
  /// MARK: - Initials;
  static BlocProvider<LoginCubit> provider() {
    return BlocProvider(
      create: (context) => LoginCubit(),
      child:const LoginDesktopScreen(),
    );
  }

  const LoginDesktopScreen({Key? key}) : super(key: key);

  @override
  State<LoginDesktopScreen> createState() => _LoginDesktopScreenState();
}

class _LoginDesktopScreenState extends State<LoginDesktopScreen> {
  /// MARK: - Initials;
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey();
  final TextEditingController _txtUsername = TextEditingController();
  final TextEditingController _txtPassword = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey();
  final TextEditingController _txtEmailRegister = TextEditingController();
  final TextEditingController _txtPhoneNumberRegister = TextEditingController();
  final TextEditingController _txtPasswordRegister = TextEditingController();
  bool isShowPass = false;
  bool isFormLogin = true;

  @override
  void dispose() {
    _txtUsername.dispose();
    _txtPassword.dispose();
    _txtEmailRegister.dispose();
    _txtPhoneNumberRegister.dispose();
    _txtPasswordRegister.dispose();
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
          body: Row(
            children: [
              Expanded(
                flex: 5,
                child: Stack(
                  children: [
                    Container(
                      height: Get.height,
                      color: GlobalColors.primaryColor.withOpacity(0.3),
                      child: Image.asset(
                        GlobalImages.onboard3,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 7,
                child: Column(
                  children: [
                    /// Register Button
                    const SizedBox(height: 8.0),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            isFormLogin
                                ? 'have_not_any_account'.tr
                                : 'already_have_an_account'.tr,
                            style: GlobalStyles.titilliumItalic(context),
                          ),
                          const SizedBox(width: 8.0),
                          OutlinedButton(
                            onPressed: () {
                              setState(() {
                                isFormLogin = !isFormLogin;
                              });
                            },
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                ),
                              ),
                            ),
                            child: Text(
                              isFormLogin ? 'register'.tr : 'login'.tr,
                              style: const TextStyle(
                                color: GlobalColors.primaryColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
    
                    isFormLogin ? _buildFormLogin() : _buildFormRegister()
                  ],
                ),
              )
            ],
          ),
        ),
    );
  }

  Widget _buildFormLogin() {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Title
            const SizedBox(height: 100),
            Text(
              'welcome_to_di4l_sell'.tr,
              style: GlobalStyles.boldStyle.copyWith(fontSize: 30),
            ),
            const SizedBox(height: 4.0),
            Text('login_your_account'.tr),

            /// Form Login
            const SizedBox(height: 30),
            Form(
              key: _formKey,
              child: SizedBox(
                width: Get.width / 2,
                child: Column(
                  children: [
                    /// User name
                    CustomTextField(
                      validator: (value) {
                        if (value?.isEmpty ?? false) {
                          return 'username_or_email_invalid'.tr;
                        }
                        if (value?.contains('@') ?? false) {
                          if (!(value?.isEmail ?? false)) {
                            return 'email_invalid'.tr;
                          }
                        }
                        return null;
                      },
                      controller: _txtUsername,
                      hintLabel: 'username_or_email'.tr,
                    ),

                    /// Password
                    const SizedBox(height: 22),
                    CustomTextField(
                      controller: _txtPassword,
                      isObscure: true,
                      hintLabel: 'password'.tr,
                      isShowPass: isShowPass,
                      validator: (value) {
                        if (value?.isEmpty ?? false) {
                          return 'password_is_empty'.tr;
                        }
                        return null;
                      },
                      onPressedObscure: () {
                        setState(() {
                          isShowPass = !isShowPass;
                        });
                      },
                    ),

                    /// Button
                    const SizedBox(height: 40),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            final email = _txtUsername.text.trim();
                            final password = _txtPassword.text.trim();
                            _globalKey.currentContext!
                                .read<LoginCubit>()
                                .login(email: email, password: password);
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: GlobalColors.primaryColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                        child: Text(
                          'login'.tr,
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),

                    /// Google Login
                    const SizedBox(height: 22),
                    Row(
                      children: [
                        Text('sign_in_with'.tr),

                        /// Google
                        const SizedBox(width: 22),
                        SocialButtonDesktop(
                          logo: GlobalImages.logoGoogle,
                          onPressed: () {
                            _globalKey.currentContext!
                                .read<LoginCubit>()
                                .handleGoogleLogin();
                          },
                        ),

                        /// Apple
                        const SizedBox(width: 22),
                        SocialButtonDesktop(
                          logo: GlobalImages.logoApple,
                          onPressed: () {
                            _globalKey.currentContext!
                                .read<LoginCubit>()
                                .handleGoogleLogin();
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildFormRegister() {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Title
            const SizedBox(height: 100),
            Text(
              'welcome_to_di4l_sell'.tr,
              style: GlobalStyles.boldStyle.copyWith(fontSize: 30),
            ),
            const SizedBox(height: 4.0),
            Text('register_your_account'.tr),

            /// Form Login
            const SizedBox(height: 30),
            Form(
              key: _formKey,
              child: SizedBox(
                width: Get.width / 2,
                child: Column(
                  children: [
                    /// User name
                    CustomTextField(
                      validator: (value) {
                        if (value?.isEmpty ?? false) {
                          return 'username_or_email_invalid'.tr;
                        }
                        if (value?.contains('@') ?? false) {
                          if (!(value?.isEmail ?? false)) {
                            return 'email_invalid'.tr;
                          }
                        }
                        return null;
                      },
                      controller: _txtEmailRegister,
                      hintLabel: 'username_or_email'.tr,
                    ),

                    /// Password
                    const SizedBox(height: 22),
                    CustomTextField(
                      controller: _txtPhoneNumberRegister,
                      hintLabel: 'phone_number'.tr,
                      validator: (value) {
                        if (value?.isEmpty ?? false) {
                          return 'phone_number_is_required'.tr;
                        }
                        return null;
                      },
                    ),

                    /// Password
                    const SizedBox(height: 22),
                    CustomTextField(
                      controller: _txtPasswordRegister,
                      isObscure: true,
                      hintLabel: 'password'.tr,
                      isShowPass: isShowPass,
                      validator: (value) {
                        if (value?.isEmpty ?? false) {
                          return 'password_is_empty'.tr;
                        }
                        return null;
                      },
                      onPressedObscure: () {
                        setState(() {
                          isShowPass = !isShowPass;
                        });
                      },
                    ),

                    /// Button
                    const SizedBox(height: 40),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            // final _email = _txtEmailRegister.text.trim();
                            // final _phoneNumber =
                            //     _txtPhoneNumberRegister.text.trim();
                            // final _password = _txtPasswordRegister.text.trim();
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: GlobalColors.primaryColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                        child: Text(
                          'register'.tr,
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),

                    /// Google Login
                    const SizedBox(height: 22),
                    Row(
                      children: [
                        Text('sign_in_with'.tr),

                        /// Google
                        const SizedBox(width: 22),
                        SocialButtonDesktop(
                          logo: GlobalImages.logoGoogle,
                          onPressed: () {
                            _globalKey.currentContext!
                                .read<LoginCubit>()
                                .handleGoogleLogin();
                          },
                        ),

                        /// Apple
                        const SizedBox(width: 22),
                        SocialButtonDesktop(
                          logo: GlobalImages.logoApple,
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
