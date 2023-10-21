import 'package:di4l_pos/screens/forgot_passwrod_screen/cubit/forgot_password_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ForgotPasswordTableScreen extends StatefulWidget {
  /// MARK: - Initials;
  static BlocProvider<ForgotPasswordCubit> provider() {
    return BlocProvider(
      create: (context) => ForgotPasswordCubit(),
      child: ForgotPasswordTableScreen(),
    );
  }

  const ForgotPasswordTableScreen({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordTableScreen> createState() =>
      _ForgotPasswordDesktopScreenState();
}

class _ForgotPasswordDesktopScreenState
    extends State<ForgotPasswordTableScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
