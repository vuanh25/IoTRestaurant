import 'dart:async';
import 'package:di4l_pos/common/dimensions.dart';
import 'package:di4l_pos/common/global_images.dart';
import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/common/global_styles.dart';
import 'package:di4l_pos/common/storage/app_prefs.dart';
import 'package:di4l_pos/common/ui_helpers.dart';
import 'package:di4l_pos/enums/register_type.dart';
import 'package:di4l_pos/get_it.dart';
import 'package:di4l_pos/models/introduction/introduction_response.dart';
import 'package:di4l_pos/route_generator.dart';
import 'package:di4l_pos/screens/login_screen/cubit/login_cubit.dart';
import 'package:di4l_pos/widgets/custom_textfield.dart';
import 'package:di4l_pos/widgets/socials_login/apple_button.dart';
import 'package:di4l_pos/widgets/socials_login/google_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:nb_utils/nb_utils.dart';

class LoginMobileScreen extends StatefulWidget {
  /// MARK: - Initials;
  static BlocProvider<LoginCubit> provider() {
    return BlocProvider(
      create: (context) => LoginCubit(),
      child: const LoginMobileScreen(),
    );
  }

  const LoginMobileScreen({Key? key}) : super(key: key);

  @override
  State<LoginMobileScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginMobileScreen> with AfterLayoutMixin {
  /// MARK: - Initials
  final TextEditingController _txtEmail = TextEditingController();
  final TextEditingController _txtPassword = TextEditingController();
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey();
  final _formKey = GlobalKey<FormState>();
  List<IntroductionModel> list = [];
  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
    context.read<LoginCubit>().getIntroduction().then((value) {
      setState(() {
        list = value;
      });
    });

    getLoginInput();
  }

  // @override
  // void initState() {
  //   super.initState();
  //   _txtEmail.text = 'restaurantdi4l';
  //   _txtPassword.text = 'Abc@123456';
  // }

  // @override
  // void initState() {
  //   super.initState();
  //   _txtEmail.text = 'contact@di4l.vn';
  //   _txtPassword.text = '1!zZ2@xX3#cC';
  // }

  // @override
  // void initState() {
  //   super.initState();
  //   _txtEmail.text = '0306201552@caothang.edu.vn';
  //   _txtPassword.text = 'Abc@123456';
  // }
  int _current = 0;
  final CarouselController _controller = CarouselController();
  @override
  void dispose() {
    _txtEmail.dispose();
    _txtPassword.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    DateTime? currentBackPressTime;
    var size = MediaQuery.of(context).size;
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
                message: 'email_or_password_is_incorrect'.tr,
                type: SnackBarType.ERROR,
              );
            }
          }
        }
      },
      child: WillPopScope(
        onWillPop: () {
          DateTime now = DateTime.now();
          if (currentBackPressTime == null ||
              now.difference(currentBackPressTime ?? now) >
                  Duration(seconds: 2)) {
            currentBackPressTime = now;
            Fluttertoast.showToast(msg: "exit_warning".tr);
            return Future.value(false);
          }
          return Future.value(true);
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
                    (list.isNotEmpty)
                        ? Column(
                            children: [
                              CarouselSlider(
                                carouselController: _controller,
                                options: CarouselOptions(
                                    aspectRatio: 2.0,
                                    enlargeCenterPage: true,
                                    scrollDirection: Axis.horizontal,
                                    autoPlay: true,
                                    height: size.height * 0.46,
                                    autoPlayInterval:
                                        const Duration(seconds: 5),
                                    autoPlayCurve: Curves.linear,
                                    viewportFraction: 1,
                                    onPageChanged: (index, reason) {
                                      setState(() {
                                        _current = index;
                                      });
                                    }),
                                items: list
                                    .map(
                                      (item) => Container(
                                        height: size.height * 0.46,
                                        width: size.width,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image:
                                                    NetworkImage(item.imagUrl!),
                                                fit: BoxFit.cover)),
                                      ),
                                    )
                                    .toList(),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: list.asMap().entries.map((entry) {
                                  return GestureDetector(
                                    onTap: () =>
                                        _controller.animateToPage(entry.key),
                                    child: Container(
                                      width: 12.0,
                                      height: 12.0,
                                      margin: const EdgeInsets.symmetric(
                                          vertical: 8.0, horizontal: 4.0),
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: (Theme.of(context)
                                                          .brightness ==
                                                      Brightness.dark
                                                  ? Colors.white
                                                  : Colors.black)
                                              .withOpacity(_current == entry.key
                                                  ? 0.9
                                                  : 0.4)),
                                    ),
                                  );
                                }).toList(),
                              ),
                            ],
                          )
                        : SizedBox(
                            height: size.height * 0.46,
                            child: const Center(
                              child: CircularProgressIndicator(),
                            ),
                          ),
                    // Image.asset(
                    //   GlobalImages.kAppIcon,
                    //   height: 150,
                    //   width: 150,
                    // ),
                    // ),

                    /// Email
                    const SizedBox(height: 10.0),
                    CustomTextField(
                      hintLabel: 'username_or_email'.tr,
                      controller: _txtEmail,
                    ),

                    /// Password
                    const SizedBox(height: 10.0),
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
                        onPressed: () async {
                          FocusManager.instance.primaryFocus?.unfocus();
                          await getIt<AppPref>().saveLoginInput(
                              username: _txtEmail.text,
                              password: _txtPassword.text);
                          _globalKey.currentContext!.read<LoginCubit>().login(
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

                    // /// Socilas Login
                    // const SizedBox(height: 16),
                    // //Text('or'.tr, style: GlobalStyles.titleHeader(context)),

                    /// Google Login
                    const SizedBox(height: 20),
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
                            style:
                                GlobalStyles.boldStyle.copyWith(fontSize: 17),
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
      ),
    );
  }

  void getLoginInput() async {
    _txtEmail.text = await getIt<AppPref>().getUsernameInput();
    _txtPassword.text = await getIt<AppPref>().getPasswordInput();
  }
}
