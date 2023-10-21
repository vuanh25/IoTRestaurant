// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:di4l_pos/common/global_images.dart';
import 'package:di4l_pos/common/storage/app_prefs.dart';
import 'package:di4l_pos/get_it.dart';
import 'package:di4l_pos/models/manage/response/ManageMenu.dart';
import 'package:di4l_pos/route_generator.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';

part 'manage_state.dart';
part 'manage_cubit.freezed.dart';

class ManageCubit extends Cubit<ManageState> {
  final _appPrefs = getIt<AppPref>();
  ManageCubit() : super(const ManageState.initial(ManageStateData()));

  Future<void> getListinfoToday() async {
    final menu = [
      ManageMenu(
        '0',
        'listinfo1',
        GlobalImages.revenueCircle,
        GlobalImages.coin,
        'gross_profit',
        false,
        'list_info_today',
      ),
      ManageMenu(
        '0',
        'listinfo2',
        GlobalImages.ordersCircle,
        GlobalImages.baolixi,
        'orders',
        false,
        'list_info_today',
      ),
      ManageMenu(
        '0',
        'listinfo3',
        GlobalImages.incomeCircle,
        GlobalImages.dolar,
        'netProfit',
        false,
        'list_info_today',
      ),
    ];
    emit(ManageState.getListinfoToday(state.data
        ?.copyWith(listInfoToday: menu, listSliceshowOriginal: menu)));
  }

  Future<void> getlistQuickMenu1() async {
    final menu = [
      ManageMenu(
        null,
        'QuickMenuButton1',
        GlobalImages.createOrder,
        GlobalImages.transparent,
        "create_order",
        false,
        'Quick_menu',
      ),
      ManageMenu(null, 'QuickMenuButton2', GlobalImages.warehouses,
          GlobalImages.transparent, "stock", false, 'Quick_menu'),
    ];
    emit(ManageState.getlistQuickMenu1(state.data
        ?.copyWith(listQuickMenu1: menu, listQuickMenu1Original: menu)));
  }

  Future<void> getlistQuickMenu2() async {
    final menu = [
      ManageMenu(
        null,
        'QuickMenuButton3',
        GlobalImages.ordersSvg,
        null,
        "orders",
        false,
        'Quick_menu',
      ),
      ManageMenu(null, 'QuickMenuButton4', GlobalImages.productSvg, null,
          "products_bottom_bar", false, 'Quick_menu'),
      ManageMenu(
        null,
        'QuickMenuButton5',
        GlobalImages.report,
        null,
        "reports",
        false,
        'Quick_menu',
      ),
      ManageMenu(null, 'QuickMenuButton6', GlobalImages.payIcon, null,
          "expense", false, 'Quick_menu'),
    ];
    emit(ManageState.getlistQuickMenu1(state.data
        ?.copyWith(listQuickMenu2: menu, listQuickMenu2Original: menu)));
  }

  Future<void> getOrderButton() async {
    final menu = [
      ManageMenu("0", 'Order_status1', GlobalImages.waiting, null,
          "waiting_for_confirmation", false, 'Order_status'),
      ManageMenu("0", 'Order_status2', GlobalImages.inprocess, null,
          "inprocess", false, 'Order_status'),
    ];
    emit(ManageState.getlistOrderStatus(state.data
        ?.copyWith(listOrderStatus: menu, listOrderStatusOriginal: menu)));
  }

  void handlePressedMenu({required ManageMenu? manageMenu}) {
    debugPrint('Menu Code: ${manageMenu?.key}');
    switch (manageMenu?.key ?? '') {
      case 'QuickMenuButton1':
        navigator!.pushNamed(RouteGenerator.selectPorductForOrder);
        return;
      case 'QuickMenuButton2':
        navigator!.pushNamed(RouteGenerator.stockManege);
        return;
      // case 'QuickMenuButton2':
      //   navigator!.pushNamed(RouteGenerator.stockScreen);
      //   return;
      case 'QuickMenuButton4':
        navigator!.pushNamed(RouteGenerator.productsScreen);
        return;
      case 'Order_status2':
        navigator!.pushNamed(RouteGenerator.orderScreen);
        return;
      case 'QuickMenuButton3':
        navigator!.pushNamed(RouteGenerator.orderScreen);
        return;
      case 'QuickMenuButton5':
        navigator!.pushNamed(RouteGenerator.reportScreen);
        return;
      case 'QuickMenuButton6':
        navigator!.pushNamed(RouteGenerator.revenueExpensePage);
        return;
      case 'listinfo1':
        navigator!.pushNamed(RouteGenerator.reportScreen);
        return;
      case 'listinfo2':
        navigator!.pushNamed(RouteGenerator.orderScreen);
        return;
      case 'listinfo3':
        navigator!.pushNamed(RouteGenerator.reportScreen);
        return;
      case 'Order_status1':
        navigator!.pushNamed(RouteGenerator.orderScreen);
        return;
    }
  }
}
