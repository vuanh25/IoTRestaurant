import 'package:di4l_pos/screens/products_screen/cubit/products_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ManagerProductsTableScreen extends StatefulWidget {
  /// MARK: - Initials;
  static BlocProvider<ProductsCubit> provider() {
    return BlocProvider(
      create: (context) => ProductsCubit(),
      child: ManagerProductsTableScreen(),
    );
  }

  const ManagerProductsTableScreen({Key? key}) : super(key: key);

  @override
  State<ManagerProductsTableScreen> createState() =>
      _ManagerProductsTableScreenState();
}

class _ManagerProductsTableScreenState
    extends State<ManagerProductsTableScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
