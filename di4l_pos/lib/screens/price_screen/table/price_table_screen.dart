import 'package:di4l_pos/screens/price_screen/cubit/price_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PriceTableScreen extends StatefulWidget {
  /// MARK: - Initials;
  static BlocProvider<PriceCubit> provider() {
    return BlocProvider(
      create: (context) => PriceCubit(),
      child: PriceTableScreen(),
    );
  }

  const PriceTableScreen({Key? key}) : super(key: key);

  @override
  State<PriceTableScreen> createState() => _PriceTableScreenState();
}

class _PriceTableScreenState extends State<PriceTableScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
