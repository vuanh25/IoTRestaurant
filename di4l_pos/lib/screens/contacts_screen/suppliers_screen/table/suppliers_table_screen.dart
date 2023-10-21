import 'package:di4l_pos/screens/contacts_screen/suppliers_screen/cubit/suppliers_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SuppliersTableScreen extends StatefulWidget {
  /// MARK: - Initials;
  static BlocProvider<SuppliersCubit> provider() {
    return BlocProvider(
      create: (context) => SuppliersCubit(),
      child: const SuppliersTableScreen(),
    );
  }

  const SuppliersTableScreen({Key? key}) : super(key: key);

  @override
  State<SuppliersTableScreen> createState() => _SuppliersDesktopScreenState();
}

class _SuppliersDesktopScreenState extends State<SuppliersTableScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
