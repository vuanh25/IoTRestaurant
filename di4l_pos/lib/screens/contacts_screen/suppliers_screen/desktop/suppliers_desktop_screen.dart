import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:di4l_pos/models/contacts/response/contacts_response.dart';
import 'package:di4l_pos/screens/contacts_screen/suppliers_screen/cubit/suppliers_cubit.dart';
import 'package:di4l_pos/widgets/data/app_loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

class Supplier {
  Supplier({
    this.supplierBusinessName,
    this.name,
    this.phone,
    this.email,
  });

  String? supplierBusinessName;
  String? name;
  String? phone;
  String? email;
}

class SupplierDataSource extends DataGridSource {
  SupplierDataSource({required List<Supplier> SupplierData}) {
    _supplierData = SupplierData.map<DataGridRow>((e) => DataGridRow(cells: [
          DataGridCell<String>(columnName: 'name', value: e.name ?? ''),
          DataGridCell<String>(columnName: 'supplierBusinessName', value: e.supplierBusinessName ?? ''),
          DataGridCell<String>(columnName: 'email', value: e.email ?? ''),
          DataGridCell<String>(columnName: 'phone', value: e.phone ?? ''),
        ])).toList();
  }

  List<DataGridRow> _supplierData = [];

  @override
  List<DataGridRow> get rows => _supplierData;

  @override
  DataGridRowAdapter buildRow(DataGridRow row) {
    return DataGridRowAdapter(
        cells: row.getCells().map<Widget>((e) {
      return Container(
        alignment: Alignment.centerLeft,
        padding: const EdgeInsets.only(left: 24.0),
        child: Text(e.value.toString()),
      );
    }).toList());
  }
}

class SuppliersDesktopScreen extends StatefulWidget {
  /// MARK: - Initials;
  static BlocProvider<SuppliersCubit> provider() {
    return BlocProvider(
      create: (context) => SuppliersCubit(),
      child: const SuppliersDesktopScreen(),
    );
  }

  const SuppliersDesktopScreen({Key? key}) : super(key: key);

  @override
  State<SuppliersDesktopScreen> createState() => _SuppliersDesktopScreenState();
}

class _SuppliersDesktopScreenState extends State<SuppliersDesktopScreen>
    with AfterLayoutMixin {
  /// MARK: - Initials;

  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
    context.read<SuppliersCubit>().getContacts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: BlocBuilder<SuppliersCubit, SuppliersState>(
      builder: (context, state) {
        if(state.data!.suppliers.isEmpty){
          return const AppLoadingWidget(
            widget: null,
            text: 'Loading...',
          );
        }
        else {
          return SfDataGrid(
            source: SupplierDataSource(SupplierData: getSupplierData(state.data!.suppliers)),
            columnWidthMode: ColumnWidthMode.fill,
            columns: <GridColumn>[
              GridColumn(
                columnName: 'name',
                label: Container(
                  padding: const EdgeInsets.only(left: 24.0),
                  alignment: Alignment.centerLeft,
                  child: const Text('Name'))),
              GridColumn(
                columnName: 'supplierBusinessName',
                label: Container(
                  padding: const EdgeInsets.only(left: 24.0),
                  alignment: Alignment.centerLeft,
                  child: const Text('Business Name'),
                ),
              ),
              GridColumn(
                columnName: 'email',
                label: Container(
                  padding: const EdgeInsets.only(left: 24.0),
                  alignment: Alignment.centerLeft,
                  child: const Text('Email'))),
              GridColumn(
                columnName: 'phone',
                label: Container(
                  padding: const EdgeInsets.only(left: 24.0),
                  alignment: Alignment.centerLeft,
                  child: const Text('Phone'))),
            ],
          );
        }
      },
    )
        // body: Container(
        //   margin: const EdgeInsets.all(8.0),
        //   padding: const EdgeInsets.all(8.0),
        //   decoration: BoxDecoration(
        //     border: Border.all(
        //       width: 1.0,
        //       color: GlobalColors.borderWebColor,
        //     ),
        //     borderRadius: BorderRadius.all(
        //       Radius.circular(8.0),
        //     ),
        //   ),
        //   child: Column(
        //     children: [
        //       ListTile(
        //         onTap: null,
        //         leading: null,
        //         title: Row(
        //           children: <Widget>[
        //             Expanded(
        //               child: Text(
        //                 "supplier_name".tr.toUpperCase(),
        //                 style: GlobalStyles.boldStyle.copyWith(fontSize: 17),
        //               ),
        //             ),
        //             Expanded(
        //               child: Text(
        //                 "supplier_phone".tr.toUpperCase(),
        //                 style: GlobalStyles.boldStyle.copyWith(fontSize: 17),
        //               ),
        //             ),
        //           ],
        //         ),
        //       ),
        //       const Divider(height: 1, color: GlobalColors.borderWebColor),
        //       Expanded(
        //         child: BlocBuilder<SuppliersCubit, SuppliersState>(
        //           builder: (context, state) {
        //             final _suppliers = state.data?.suppliers ?? [];
        //             return ListView.separated(
        //               itemBuilder: (context, index) {
        //                 return ListTile(
        //                   onTap: null,
        //                   leading: null,
        //                   title: Row(
        //                     children: <Widget>[
        //                       Expanded(child: Text("First Name")),
        //                       Expanded(child: Text("Last Name")),
        //                     ],
        //                   ),
        //                 );
        //               },
        //               separatorBuilder: (context, index) {
        //                 return const Divider(
        //                     height: 1, color: GlobalColors.borderWebColor);
        //               },
        //               itemCount: 100,
        //             );
        //           },
        //         ),
        //       ),
        //     ],
        //   ),
        // ),
        );
  }

  List<Supplier> getSupplierData(List<ContactModel> suppliersList) {
    return suppliersList
        .map((e) => Supplier(
            name: e.name,
            supplierBusinessName: e.supplierBusinessName,
            email: e.email,
            phone: e.mobile))
        .toList();
  }
}
