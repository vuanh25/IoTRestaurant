import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:di4l_pos/common/storage/app_prefs.dart';
import 'package:di4l_pos/get_it.dart';
import 'package:di4l_pos/models/cart_table_order/cart_model.dart';
import 'package:di4l_pos/screens/table_order_screen/mobile/table_order_mobile_screen.dart';
import 'package:di4l_pos/screens/table_order_screen/tablet/table_order_tablet_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

class TableOrderScreen extends StatefulWidget {
  const TableOrderScreen({Key? key}) : super(key: key);

  @override
  State<TableOrderScreen> createState() => _TableOrderScreenState();
}

class _TableOrderScreenState extends State<TableOrderScreen>
    with AfterLayoutMixin {
  @override
  FutureOr<void> afterFirstLayout(BuildContext context) async {
    tableOrder.productsInCart.value =
        ItemProduct.decode((await _appPrefs.getCart()) ?? "");
    tableOrder.noteOrder.value = await _appPrefs.getNote() ?? "";
    tableOrder.selectedTable.value = await _appPrefs.getTable() ?? "";
    tableOrder.amountCart.value = 0;
    for (int i = 0; i < tableOrder.productsInCart.length; i++) {
      tableOrder.amountCart.value += tableOrder.productsInCart[i].quantity!;
    }
  }

  final tableOrder = Get.put(TableOrderController());
  final _appPrefs = getIt<AppPref>();
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (context) => TableOrderMobileScreen.provider(),
      tablet: (context) => const TableOrderTabletScreen(),
    );
  }
}
