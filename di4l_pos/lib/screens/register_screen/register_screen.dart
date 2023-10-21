import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:di4l_pos/common/dimensions.dart';
import 'package:di4l_pos/common/global_images.dart';
import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/common/global_styles.dart';
import 'package:di4l_pos/common/ui_helpers.dart';
import 'package:di4l_pos/enums/register_type.dart';
import 'package:di4l_pos/route_generator.dart';
import 'package:di4l_pos/screens/register_screen/cubit/register_cubit.dart';
import 'package:di4l_pos/widgets/custom_textfield.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

import '../../widgets/socials_login/google_button.dart';

class RegisterScreen extends StatefulWidget {
  /// MARK: - Initials;
  final RegisterType? registerType;
  static BlocProvider<RegisterCubit> provider({RegisterType? registerType}) {
    return BlocProvider(
      create: (context) => RegisterCubit(),
      child: RegisterScreen(registerType: registerType),
    );
  }

  const RegisterScreen({
    Key? key,
    this.registerType,
  }) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> with AfterLayoutMixin {
  /// MARK: - Initials
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey();
  final TextEditingController _txtFirstName = TextEditingController();
  final TextEditingController _txtLastName = TextEditingController();
  final TextEditingController _txtEmail = TextEditingController();
  final TextEditingController _txtPassword = TextEditingController();
  final TextEditingController _txtConfirmPassword = TextEditingController();
  final TextEditingController _txtBusinessName = TextEditingController();
  final TextEditingController _txtBusinessContact = TextEditingController();

  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {}

  @override
  void dispose() {
    _txtFirstName.dispose();
    _txtLastName.dispose();
    _txtEmail.dispose();
    _txtPassword.dispose();
    _txtConfirmPassword.dispose();
    _txtBusinessName.dispose();
    _txtBusinessContact.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<RegisterCubit, RegisterState>(
      listener: (context, state) {
        if (state.data!.error != '') {
          if (state.data!.error.contains('Business') ||
              state.data!.error.contains('Phone') ||
              state.data!.error.contains('First') ||
              state.data!.error.contains('Last') ||
              state.data!.error.contains('Email') ||
              state.data!.error.contains('Required') ||
              state.data!.error.contains('Password') ||
              state.data!.error.contains('than 4') ||
              state.data!.error.contains('Confirm') ||
              state.data!.error.contains('Mismatched')) {
            UIHelpers.showSnackBar(
                message: state.data!.error, type: SnackBarType.ERROR);
          } else {
            if (state.data!.error.contains('Success')) {
              navigator!.pushNamedAndRemoveUntil(
                  // widget.registerType == RegisterType.REGISTER
                  // ?
                  RouteGenerator.switchAccount,
                  // : RouteGenerator.loginScreen,
                  (route) => false);
            } else {
              _txtFirstName.text = '';
              _txtLastName.text = '';
              _txtEmail.text = '';
              _txtPassword.text = '';
              _txtConfirmPassword.text = '';
              _txtBusinessName.text = '';
              _txtBusinessContact.text = '';
            }
          }
        }
      },
      child: Scaffold(
        key: _globalKey,
        appBar: AppBar(
          backgroundColor: GlobalColors.primaryColor,
          elevation: 0.0,
          title: Text('register'.tr),
        ),
        body: SingleChildScrollView(
          child: Container(
            width: Get.width,
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Form(
              // key: _formKey,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  /// Logo
                  // Center(
                  //   child:

                  //   Container(
                  //     width: 150,
                  //     height: 150,
                  //   ) 
                  //   // Image.asset(
                  //   //   GlobalImages.kAppIcon,
                  //   //   height: 150,
                  //   //   width: 150,
                  //   //),
                  // ),

                  /// Company Name
                  const SizedBox(height: 20),
                  CustomTextField(
                    controller: _txtBusinessName,
                    hintLabel: 'business_name'.tr,
                    textInputAction: TextInputAction.next,
                  ),

                  /// Email address
                  const SizedBox(height: 20),
                  CustomTextField(
                    controller: _txtBusinessContact,
                    hintLabel: 'business_contact'.tr,
                    textInputAction: TextInputAction.next,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                    ],
                    keyboardKey:
                        const TextInputType.numberWithOptions(signed: true),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: CustomTextField(
                          controller: _txtFirstName,
                          hintLabel: 'first_name'.tr,
                          textInputAction: TextInputAction.next,
                        ),
                      ),
                      const SizedBox(width: 20),
                      Expanded(
                        child: CustomTextField(
                          controller: _txtLastName,
                          hintLabel: 'last_name'.tr,
                          textInputAction: TextInputAction.next,
                        ),
                      ),
                    ],
                  ),

                  if (widget.registerType == RegisterType.REGISTER) ...[
                    /// Email
                    const SizedBox(height: 20),
                    CustomTextField(
                      controller: _txtEmail,
                      hintLabel: 'email'.tr,
                      textInputAction: TextInputAction.next,
                      // onEditingComplete: () => focus.nextFocus(),
                      keyboardKey: TextInputType.emailAddress,
                    ),

                    /// Password
                    const SizedBox(height: 20),
                    BlocBuilder<RegisterCubit, RegisterState>(
                      builder: (context, state) => CustomTextField(
                        controller: _txtPassword,
                        hintLabel: 'password'.tr,
                        textInputAction: TextInputAction.next,
                        //onEditingComplete: () => focus.nextFocus(),
                        isObscure: true,
                        onPressedObscure: () => _globalKey.currentContext!
                            .read<RegisterCubit>()
                            .showPass(!state.data!.showPass),
                        isShowPass: state.data!.showPass,
                      ),
                    ),

                    /// confirm Password
                    const SizedBox(height: 20),
                    BlocBuilder<RegisterCubit, RegisterState>(
                      builder: (context, state) => CustomTextField(
                        controller: _txtConfirmPassword,
                        hintLabel: 'confirm_password'.tr,
                        textInputAction: TextInputAction.done,
                        //onEditingComplete: () => focus.unfocus(),
                        isObscure: true,
                        isShowPass: state.data!.showConfirmPass,
                        onPressedObscure: () => _globalKey.currentContext!
                            .read<RegisterCubit>()
                            .showConfirmPass(!state.data!.showConfirmPass),
                      ),
                    ),
                  ],

                  BlocBuilder<RegisterCubit, RegisterState>(
                    builder: (context, state) => Column(
                      children: [
                        CheckboxListTile(
                          controlAffinity: ListTileControlAffinity.leading,
                          contentPadding: const EdgeInsets.all(0),
                          title: RichText(
                            text: TextSpan(
                                text: 'term_conditions'.tr,
                                style: const TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    decoration: TextDecoration.underline),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () => showCustomDialog(
                                      context, Dimensions.CONDITIONS)),
                          ),
                          value: state.data!.rules,
                          onChanged: (value) => _globalKey.currentContext!
                              .read<RegisterCubit>()
                              .changedRules(value!),
                        ),

                        /// Button Send OTP
                        const SizedBox(height: 20),
                        ConstrainedBox(
                          constraints: const BoxConstraints.tightFor(
                              height: 44, width: double.infinity),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: GlobalColors.primaryColor,
                            ),
                            onPressed: state.data!.rules
                                ? () {
                                    final businessName =
                                        _txtBusinessName.text.trim();
                                    final email = _txtEmail.text.trim();
                                    final contactNo =
                                        _txtBusinessContact.text.trim();
                                    final firstName = _txtFirstName.text.trim();
                                    final lastName = _txtLastName.text.trim();
                                    final password = _txtPassword.text.trim();
                                    final confirmPassword =
                                        _txtConfirmPassword.text.trim();
                                    widget.registerType == RegisterType.REGISTER
                                        ? _globalKey.currentContext!
                                            .read<RegisterCubit>()
                                            .register(
                                              businessName: businessName,
                                              email: email,
                                              contactNo: contactNo,
                                              firstName: firstName,
                                              lastName: lastName,
                                              password: password,
                                              confirmPassword: confirmPassword,
                                            )
                                        : _globalKey.currentContext!
                                            .read<RegisterCubit>()
                                            .addBusiness(
                                              businessName: businessName,
                                              contactNo: contactNo,
                                              firstName: firstName,
                                              lastName: lastName,
                                            );
                                  }
                                : null,
                            child: Text(
                              'register'.tr,
                              style: GlobalStyles.boldStyle
                                  .copyWith(color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  /// Login Button
                  if (widget.registerType == RegisterType.REGISTER) ...[
                    Column(
                      children: [
                        const SizedBox(height: 12.5),
                        const Center(
                          child: Text("OR"),
                        ),
                        const SizedBox(height: 12.5),
                        GoolgeButton(
                          onPressed: () => _globalKey.currentContext!
                        .read<RegisterCubit>()
                        .handleGoogleLogin(),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('already_have_an_account'.tr),
                            const SizedBox(width: Dimensions.BORDER_DEFAULT),
                            TextButton(
                              onPressed: () => navigator!.pop(),
                              child: Text(
                                'login'.tr,
                                style:
                                    GlobalStyles.boldStyle.copyWith(fontSize: 17),
                              ),
                            )
                          ],
                        ),
                        
                      ],
                    )
                  ],
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void showCustomDialog(BuildContext context, String message) async {
    await showDialog(
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding:
              const EdgeInsets.only(left: 15, right: 15, top: 20, bottom: 10),
          decoration: const BoxDecoration(color: Colors.white),
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              const Text("Terms & Conditions",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Flexible(
                child: SingleChildScrollView(
                  child: Text(message),
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: ElevatedButton(
                  onPressed: () => navigator!.pop(),
                  child: const Text("Close"),
                ),
              )
            ]),
          ),
        );
      },
    );
  }
}
