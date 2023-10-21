import 'package:di4l_pos/screens/onboard_screen/cubit/onboard_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnboardTableScreen extends StatefulWidget {
  /// MARK: - Initials;
  static BlocProvider<OnboardCubit> provider() {
    return BlocProvider(
      create: (context) => OnboardCubit(),
      child: OnboardTableScreen(),
    );
  }

  const OnboardTableScreen({Key? key}) : super(key: key);

  @override
  State<OnboardTableScreen> createState() => _OnboardTableScreenState();
}

class _OnboardTableScreenState extends State<OnboardTableScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
