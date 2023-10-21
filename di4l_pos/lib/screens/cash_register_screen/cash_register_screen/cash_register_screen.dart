// ignore_for_file: use_build_context_synchronously

import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:di4l_pos/route_generator.dart';
import 'package:di4l_pos/screens/cash_register_screen/cash_register_screen/cubit/cash_register_cubit.dart';
import 'package:di4l_pos/screens/cash_register_screen/cash_register_screen/widgets/cash_register_widget.dart';
import 'package:di4l_pos/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class CashRegisterScreen extends StatefulWidget {
  /// MARK: - Initials;
  static BlocProvider<CashRegisterCubit> provider() {
    return BlocProvider(
      create: (context) => CashRegisterCubit(),
      child: const CashRegisterScreen(),
    );
  }

  const CashRegisterScreen({Key? key}) : super(key: key);

  @override
  State<CashRegisterScreen> createState() => _CashRegisterScreenState();
}

class _CashRegisterScreenState extends State<CashRegisterScreen>
    with AfterLayoutMixin {
  /// MARK: - Initials;
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey();
  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
    context.read<CashRegisterCubit>().getCashRegister();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      appBar: CustomAppBar(
        title: 'cash_register'.tr,
        actions: [
          IconButton(
            onPressed: () async {
              final cash = await navigator!
                  .pushNamed(RouteGenerator.addCashRegisterScreen);
              if (cash != null) {
                _globalKey.currentContext!
                    .read<CashRegisterCubit>()
                    .getCashRegister();
              }
            },
            icon:const Icon(Icons.add),
          ),
        ],
      ),
      body: BlocBuilder<CashRegisterCubit, CashRegisterState>(
        builder: (context, state) {
          final listCashRegisterData = state.data?.listCashRegisterData ?? [];
          return ListView.separated(
            padding: const EdgeInsets.all(8.0),
            itemBuilder: (context, index) {
              final cashRegister = listCashRegisterData.elementAt(index);
              return CashReigsterWidget(
                cashResgisterData: cashRegister,
                index: index + 1,
              );
            },
            separatorBuilder: (context, index) {
              return const SizedBox();
            },
            itemCount: listCashRegisterData.length,
          );
        },
      ),
    );
  }
}
