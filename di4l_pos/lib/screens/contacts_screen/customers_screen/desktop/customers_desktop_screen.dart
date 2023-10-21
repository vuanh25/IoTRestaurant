// ignore_for_file: prefer_const_literals_to_create_immutables

import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:di4l_pos/models/contacts/response/contacts_response.dart';
import 'package:di4l_pos/screens/contacts_screen/customers_screen/cubit/customers_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';
import 'package:di4l_pos/widgets/data/app_loading_widget.dart';

class Customer {
  Customer({
    this.name,
    this.phone,
    this.email,
  });

  String? name;
  String? phone;
  String? email;

}

class CustomerDataSource extends DataGridSource {
  CustomerDataSource({required List<Customer> customerData}) {
    _customerData = customerData.map<DataGridRow>((e) => DataGridRow(cells: [
      DataGridCell<String>(columnName: 'name', value: e.name ?? ''),
      DataGridCell<String>(columnName: 'email', value: e.email ?? ''),
      DataGridCell<String>(columnName: 'phone', value: e.phone ?? ''),
    ])).toList();
  }

  List<DataGridRow> _customerData = [];

  @override
  List<DataGridRow> get rows => _customerData;

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

class CustomersDesktopScreen extends StatefulWidget {
  /// MARK: - Initials;
  static BlocProvider<CustomersCubit> provider() {
    return BlocProvider(
      create: (context) => CustomersCubit(),
      child: const CustomersDesktopScreen(),
    );
  }

  const CustomersDesktopScreen({Key? key}) : super(key: key);

  @override
  State<CustomersDesktopScreen> createState() => _CustomerTableScreenState();
}

class _CustomerTableScreenState extends State<CustomersDesktopScreen>
    with AfterLayoutMixin {
  /// MARK: - Initials;
  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
    context.read<CustomersCubit>().getContacts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<CustomersCubit, CustomersState>(
        builder: (context, state) {
          if(state.data!.customers.isEmpty){
            return const AppLoadingWidget(
              widget: null,
              text: 'Loading...',
            );
          }
          else {
            return SfDataGrid(
              source: CustomerDataSource(customerData: getCustomerData(state.data!.customers)),
              columnWidthMode: ColumnWidthMode.fill,
              columns: <GridColumn>[
                GridColumn(
                  columnName: 'name',
                  label: Container(
                    padding: const EdgeInsets.only(left: 24.0),
                    alignment: Alignment.centerLeft,
                    child: const Text('Name'))),
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
    );
  }

  List<Customer> getCustomerData(List<ContactModel> customerList) {
    return customerList
      .map((e) => Customer(
          name: e.name,
          email: e.email,
          phone: e.mobile))
      .toList();
  }
}
