import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:di4l_pos/screens/products_screen/cubit/products_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';
import 'package:di4l_pos/widgets/data/app_loading_widget.dart';
import 'package:di4l_pos/models/products/response/product_response.dart';

class ProductDataSource extends DataGridSource {
  ProductDataSource({required List<Product> productGroupData}) {
    _productGroupData = productGroupData.map<DataGridRow>((e) => DataGridRow(cells: [
      DataGridCell<String>(columnName: 'image', value: e.imageUrl ?? ''),
      DataGridCell<String>(columnName: 'name', value: e.name ?? ''),
      DataGridCell<String>(columnName: 'sku', value: e.sku ?? ''),
      DataGridCell<String>(columnName: 'defaultSellPrice', value: e.productVariations![0]!.variations![0]!.defaultSellPrice ?? ''),
      DataGridCell<String>(columnName: 'defaultPurchasePrice', value: e.productVariations![0]!.variations![0]!.defaultPurchasePrice ?? ''),
    ])).toList();
  }

  List<DataGridRow> _productGroupData = [];

  @override
  List<DataGridRow> get rows => _productGroupData;

  @override
  DataGridRowAdapter buildRow(DataGridRow row) {
    return DataGridRowAdapter(
        cells: row.getCells().map<Widget>((e) {
      return e.columnName=='image'
      ?Container(
        padding: const EdgeInsets.symmetric(horizontal: 38.0, vertical: 4.0),
        child: Image.network(
          e.value,
          fit: BoxFit.contain
        )
      )
      :Container(
        alignment: Alignment.centerLeft,
        padding: const EdgeInsets.only(left: 24.0),
        child: Text(e.value.toString()),
      );
    }).toList());
  }
}

class ProductsDesktopScreen extends StatefulWidget {
  /// MARK: - Initials;
  static BlocProvider<ProductsCubit> provider() {
    return BlocProvider(
      create: (context) => ProductsCubit(),
      child: const ProductsDesktopScreen(),
    );
  }

  const ProductsDesktopScreen({Key? key}) : super(key: key);

  @override
  State<ProductsDesktopScreen> createState() => _ProductsDesktopScreenState();
}

class _ProductsDesktopScreenState extends State<ProductsDesktopScreen>
    with AfterLayoutMixin {
  /// MARK: - Initials;
  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
    context.read<ProductsCubit>().getProducts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<ProductsCubit, ProductsState>(
        builder: (context, state) {
          if(state.data!.products.isEmpty){
            return const AppLoadingWidget(
              widget: null,
              text: 'Loading...',
            );
          }
          else {
            return SfDataGrid(
              source: ProductDataSource(productGroupData: state.data!.products),
              columnWidthMode: ColumnWidthMode.fill,
              columns: <GridColumn>[
                GridColumn(
                  columnName: 'image',
                  label: Container(
                    padding: const EdgeInsets.only(left: 24.0),
                    alignment: Alignment.centerLeft,
                    child: const Text('Image'))),
                GridColumn(
                  columnName: 'name',
                  label: Container(
                    padding: const EdgeInsets.only(left: 24.0),
                    alignment: Alignment.centerLeft,
                    child: const Text('Name'))),
                GridColumn(
                  columnName: 'sku',
                  label: Container(
                    padding: const EdgeInsets.only(left: 24.0),
                    alignment: Alignment.centerLeft,
                    child: const Text('sku'))),
                GridColumn(
                  columnName: 'defaultSellPrice',
                  label: Container(
                    padding: const EdgeInsets.only(left: 24.0),
                    alignment: Alignment.centerLeft,
                    child: const Text('Sell Price'))),
                GridColumn(
                  columnName: 'defaultPurchasePrice',
                  label: Container(
                    padding: const EdgeInsets.only(left: 24.0),
                    alignment: Alignment.centerLeft,
                    child: const Text('Purchase Price'))),
              ],
            );
          }
        },
      )
    );
  }
}
