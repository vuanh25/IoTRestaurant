import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../order_screen/cubit/order_cubit.dart';

class ManagerSalesOrderTableScreen extends StatefulWidget {
  /// MARK: - Initials;
  static BlocProvider<SalesOrderCubit> provider() {
    return BlocProvider(
      create: (context) => SalesOrderCubit(),
      child: const ManagerSalesOrderTableScreen(),
    );
  }

  const ManagerSalesOrderTableScreen({Key? key}) : super(key: key);

  @override
  State<ManagerSalesOrderTableScreen> createState() =>
      _ManagerSalesOrderTableScreenState();
}

class _ManagerSalesOrderTableScreenState
    extends State<ManagerSalesOrderTableScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
