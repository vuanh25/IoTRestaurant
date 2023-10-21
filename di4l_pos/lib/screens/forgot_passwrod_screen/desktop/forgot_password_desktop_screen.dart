import 'package:di4l_pos/screens/forgot_passwrod_screen/cubit/forgot_password_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ForgotPasswordDesktopScreen extends StatefulWidget {
  /// MARK: - Initials;
  static BlocProvider<ForgotPasswordCubit> provider() {
    return BlocProvider(
      create: (context) => ForgotPasswordCubit(),
      child: ForgotPasswordDesktopScreen(),
    );
  }

  const ForgotPasswordDesktopScreen({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordDesktopScreen> createState() =>
      _ForgotPasswordDesktopScreenState();
}

class _ForgotPasswordDesktopScreenState
    extends State<ForgotPasswordDesktopScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
