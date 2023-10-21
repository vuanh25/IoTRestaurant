// ignore_for_file: prefer_const_literals_to_create_immutables

import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:di4l_pos/screens/contacts_screen/customers_screen/cubit/customers_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';
import 'package:di4l_pos/widgets/data/app_loading_widget.dart';
import 'package:di4l_pos/screens/contacts_screen/customer_group/cubit/customer_group_cubit.dart';
import 'package:di4l_pos/models/customer-group/response/customer_group_response.dart';

class CustomerGroup {
  CustomerGroup({
    this.name,
    this.priceCalculationType,
    this.sellingPriceGroup,
    this.amount
  });

  String? name;
  String? priceCalculationType;
  dynamic sellingPriceGroup;
  dynamic amount;
}

class CustomerGroupDataSource extends DataGridSource {
  CustomerGroupDataSource({required List<CustomerGroup> customerGroupData}) {
    _customerGroupData = customerGroupData.map<DataGridRow>((e) => DataGridRow(cells: [
      DataGridCell<String>(columnName: 'name', value: e.name ?? ''),
      DataGridCell<String>(columnName: 'type', value: e.priceCalculationType ?? ''),
      DataGridCell<String>(columnName: 'price',value: e.priceCalculationType == 'selling_price_group' 
                                                      ? 'Group ${e.sellingPriceGroup}' ?? '' : '${e.amount.toString()} %'),
    ])).toList();
  }

  List<DataGridRow> _customerGroupData = [];

  @override
  List<DataGridRow> get rows => _customerGroupData;

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

class CustomersGroupDesktopScreen extends StatefulWidget {
  /// MARK: - Initials;
  static BlocProvider<CustomerGroupCubit> provider() {
    return BlocProvider(
      create: (context) => CustomerGroupCubit(),
      child: const CustomersGroupDesktopScreen(),
    );
  }

  const CustomersGroupDesktopScreen({Key? key}) : super(key: key);

  @override
  State<CustomersGroupDesktopScreen> createState() => _CustomerTableScreenState();
}

class _CustomerTableScreenState extends State<CustomersGroupDesktopScreen>
    with AfterLayoutMixin {
  /// MARK: - Initials;
  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
    context.read<CustomerGroupCubit>().getCustomerGroups();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<CustomerGroupCubit, CustomerGroupState>(
        builder: (context, state) {
          if(state.data!.customerGroups!.isEmpty){
            return const AppLoadingWidget(
              widget: null,
              text: 'Loading...',
            );
          }
          else {
            return SfDataGrid(
              source: CustomerGroupDataSource(customerGroupData: getCustomerGroupData(state.data!.customerGroups!)),
              columnWidthMode: ColumnWidthMode.fill,
              columns: <GridColumn>[
                GridColumn(
                  columnName: 'name',
                  label: Container(
                    padding: const EdgeInsets.only(left: 24.0),
                    alignment: Alignment.centerLeft,
                    child: const Text('Name'))),
                GridColumn(
                  columnName: 'type',
                  label: Container(
                    padding: const EdgeInsets.only(left: 24.0),
                    alignment: Alignment.centerLeft,
                    child: const Text('Group type'))),
                GridColumn(
                  columnName: 'price',
                  label: Container(
                    padding: const EdgeInsets.only(left: 24.0),
                    alignment: Alignment.centerLeft,
                    child: const Text('Price gourp (percentage)'))),
              ],
            );
          }
        },
      )
    );
  }

  List<CustomerGroup> getCustomerGroupData(List<CustomerGroupModel> customerList) {
    return customerList
      .map((e) => CustomerGroup(
          name: e.name,
          priceCalculationType: e.priceCalculationType,
          sellingPriceGroup: e.sellingPriceGroup,
          amount: e.amount,
        ))
      .toList();
  }
}
