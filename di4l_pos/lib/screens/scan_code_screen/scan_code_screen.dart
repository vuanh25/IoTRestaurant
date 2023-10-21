import 'package:di4l_pos/screens/scan_code_screen/cubit/scan_code_cubit.dart';
import 'package:di4l_pos/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class ScanCodeScreen extends StatefulWidget {
  /// MARK: - Initials;
  static BlocProvider<ScanCodeCubit> provider() {
    return BlocProvider(
      create: (context) => ScanCodeCubit(),
      child: ScanCodeScreen(),
    );
  }

  ScanCodeScreen({Key? key}) : super(key: key);

  @override
  State<ScanCodeScreen> createState() => _ScanCodeScreenState();
}

class _ScanCodeScreenState extends State<ScanCodeScreen> {
  /// MARK: - Initials;
  final _cameraController = MobileScannerController();

  @override
  void dispose() {
    _cameraController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'scan_barcode'.tr,
      ),
      body: MobileScanner(
        controller: _cameraController,
        allowDuplicates: false,
        onDetect: (barcode, args) {
          if (barcode.rawValue == null) {
            debugPrint('Failed to scan Barcode');
          } else {
            final String code = barcode.rawValue!;
            debugPrint('Barcode found! $code');
          }
        },
      ),
    );
  }
}
