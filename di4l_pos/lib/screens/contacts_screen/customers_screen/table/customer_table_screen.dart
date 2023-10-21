import 'package:di4l_pos/screens/contacts_screen/customers_screen/cubit/customers_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomerTableScreen extends StatefulWidget {
  /// MARK: - Initials;
  static BlocProvider<CustomersCubit> provider() {
    return BlocProvider(
      create: (context) => CustomersCubit(),
      child: const CustomerTableScreen(),
    );
  }

  const CustomerTableScreen({Key? key}) : super(key: key);

  @override
  State<CustomerTableScreen> createState() => _CustomerTableScreenState();
}

class _CustomerTableScreenState extends State<CustomerTableScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
