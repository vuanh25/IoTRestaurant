import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:di4l_pos/screens/return_products_screen/cubit/return_products_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ReturnProductsScreen extends StatefulWidget {
  /// MARK: - Initials;
  static BlocProvider<ReturnProductsCubit> provider() {
    return BlocProvider(
      create: (context) => ReturnProductsCubit(),
      child: Container(),
    );
  }

  const ReturnProductsScreen({Key? key}) : super(key: key);

  @override
  State<ReturnProductsScreen> createState() => _ReturnProductsScreenState();
}

class _ReturnProductsScreenState extends State<ReturnProductsScreen>
    with AfterLayoutMixin {
  /// MARK: - Initials;
  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {}

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
