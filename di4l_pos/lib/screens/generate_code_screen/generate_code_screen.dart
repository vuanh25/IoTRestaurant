import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:barcode_widget/barcode_widget.dart';
import 'package:di4l_pos/screens/generate_code_screen/cubit/generate_code_cubit.dart';
import 'package:di4l_pos/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class GenerateCodeScreen extends StatefulWidget {
  /// MARK: - Initials;
  static BlocProvider<GenerateCodeCubit> provide() {
    return BlocProvider(
      create: (context) => GenerateCodeCubit(),
      child: GenerateCodeScreen(),
    );
  }

  const GenerateCodeScreen({Key? key}) : super(key: key);

  @override
  State<GenerateCodeScreen> createState() => _GenerateCodeScreenState();
}

class _GenerateCodeScreenState extends State<GenerateCodeScreen>
    with AfterLayoutMixin {
  /// MARK: - Initials;
  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'generate_barcode'.tr,
      ),
      body: Center(
        child: BarcodeWidget(
          height: 150,
          width: Get.width - 100,
          barcode: Barcode.code128(),
          data: 'Hello',
        ),
      ),
    );
  }
}
