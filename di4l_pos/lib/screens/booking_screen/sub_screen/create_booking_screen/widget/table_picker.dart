import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:di4l_pos/common/global_styles.dart';
import 'package:di4l_pos/screens/contacts_screen/customers_screen/cubit/customers_cubit.dart';
import 'package:di4l_pos/screens/table_order_screen/cubit/table_order_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class TablePicker extends StatefulWidget {
  const TablePicker({Key? key, this.businessLocationId}) : super(key: key);
  final int? businessLocationId;
  static BlocProvider<TableCubit> provider({int? businessLocationId}) {
    return BlocProvider(
      create: (context) => TableCubit(),
      child: TablePicker(
        businessLocationId: businessLocationId,
      ),
    );
  }

  @override
  State<TablePicker> createState() => _TablePickerState();
}

class _TablePickerState extends State<TablePicker> with AfterLayoutMixin {
  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
    if (widget.businessLocationId != null) {
      context
          .read<TableCubit>()
          .getTablesByLocation(locationId: widget.businessLocationId!);
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TableCubit, TableState>(
      builder: (context, state) {
        final tablesList = state.data!.tables;
        return Container(
          height: MediaQuery.of(context).size.height * 0.8,
          padding: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
          ),
          child: widget.businessLocationId == null
              ? const Center(
                  child: Text('You did not choose a business location'),
                )
              : Column(
                  children: [
                    Text(
                      'table'.tr,
                      style: GlobalStyles.titleHeader(context),
                    ),
                    Expanded(
                      child: ListView.separated(
                        itemBuilder: (context, index) {
                          final table = tablesList[index];
                          return ListTile(
                            title: Text(
                              table.name ?? '',
                              style: GlobalStyles.robotoRegular(context),
                            ),
                            onTap: () {
                              navigator!.pop(table);
                            },
                          );
                        },
                        separatorBuilder: (context, index) => const Divider(),
                        itemCount: tablesList.length,
                      ),
                    ),
                  ],
                ),
        );
      },
    );
  }
}
