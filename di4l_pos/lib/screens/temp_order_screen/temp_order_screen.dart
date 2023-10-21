import 'package:di4l_pos/screens/temp_order_screen/cubit/temp_order_cubit.dart';
import 'package:di4l_pos/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class TempOrderScreen extends StatefulWidget {
  /// MARK: - Initials;
  static BlocProvider<TempOrderCubit> provider() {
    return BlocProvider(
      create: (context) => TempOrderCubit(),
      child: TempOrderScreen(),
    );
  }

  const TempOrderScreen({Key? key}) : super(key: key);

  @override
  State<TempOrderScreen> createState() => _TempOrderScreenState();
}

class _TempOrderScreenState extends State<TempOrderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'temp_order'.tr,
      ),
    );
  }
}
