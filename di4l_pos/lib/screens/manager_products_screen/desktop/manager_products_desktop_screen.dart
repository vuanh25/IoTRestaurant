import 'package:di4l_pos/screens/products_screen/cubit/products_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ManagerProductsDesktopScreen extends StatefulWidget {
  /// MARK: - Initials;
  static BlocProvider<ProductsCubit> provider() {
    return BlocProvider(
      create: (context) => ProductsCubit(),
      child: ManagerProductsDesktopScreen(),
    );
  }

  const ManagerProductsDesktopScreen({Key? key}) : super(key: key);

  @override
  State<ManagerProductsDesktopScreen> createState() =>
      _ManagerProductsDesktopScreenState();
}

class _ManagerProductsDesktopScreenState
    extends State<ManagerProductsDesktopScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
