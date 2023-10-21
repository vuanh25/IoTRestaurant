import 'package:di4l_pos/screens/profile_screen/cubit/profile_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileDesktopScreen extends StatefulWidget {
  /// MARK: - Initials;
  static BlocProvider<ProfileCubit> provider() {
    return BlocProvider(
      create: (context) => ProfileCubit(),
      child: ProfileDesktopScreen(),
    );
  }

  const ProfileDesktopScreen({Key? key}) : super(key: key);

  @override
  State<ProfileDesktopScreen> createState() => _ProfileDesktopScreenState();
}

class _ProfileDesktopScreenState extends State<ProfileDesktopScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
