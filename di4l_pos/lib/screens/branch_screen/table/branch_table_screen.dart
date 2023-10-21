import 'package:di4l_pos/screens/branch_screen/cubit/branch_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BranchTableScreen extends StatefulWidget {
  /// MARK: - Initials;
  static BlocProvider<BranchCubit> provider() {
    return BlocProvider(
      create: (context) => BranchCubit(),
      child: const BranchTableScreen(),
    );
  }

  const BranchTableScreen({Key? key}) : super(key: key);

  @override
  State<BranchTableScreen> createState() => _BranchTableScreenState();
}

class _BranchTableScreenState extends State<BranchTableScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
