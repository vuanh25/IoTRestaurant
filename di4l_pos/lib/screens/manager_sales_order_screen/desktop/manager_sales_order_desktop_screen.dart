import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../order_screen/cubit/order_cubit.dart';

class ManagerSalesOrderDesktopScreen extends StatefulWidget {
  /// MARK: - Initials;
  static BlocProvider<SalesOrderCubit> provider() {
    return BlocProvider(
      create: (context) => SalesOrderCubit(),
      child: ManagerSalesOrderDesktopScreen(),
    );
  }

  const ManagerSalesOrderDesktopScreen({Key? key}) : super(key: key);

  @override
  State<ManagerSalesOrderDesktopScreen> createState() =>
      _ManagerSalesOrderDesktopScreenState();
}

class _ManagerSalesOrderDesktopScreenState
    extends State<ManagerSalesOrderDesktopScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
