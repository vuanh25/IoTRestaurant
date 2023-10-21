import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:di4l_pos/common/global_images.dart';
import 'package:di4l_pos/models/home/item_main.dart';
import 'package:di4l_pos/route_generator.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:di4l_pos/get_it.dart';
import 'package:di4l_pos/common/storage/app_prefs.dart';
import 'package:get/get.dart';

part 'main_state.dart';
part 'main_cubit.freezed.dart';

class MainCubit extends Cubit<MainState> {
  final _appPrefs = getIt<AppPref>();

  MainCubit() : super(const MainState.initial(data: MainStateData()));

  void getMenu() async {
    final menu = await _appPrefs.getMenuData();
    final menuDefault = [
      Item(GlobalImages.booking, 'bookings'.tr, RouteGenerator.bookingScreen),
      Item(GlobalImages.calendar, 'calendar'.tr, RouteGenerator.calendarScreen),
      Item(GlobalImages.customer, 'contacts'.tr, RouteGenerator.contactsScreen),
      // Item(GlobalImages.stock, 'stock'.tr, null),
      // Item(
      //     GlobalImages.storeOnline, 'saleOnline'.tr, RouteGenerator.sellOnline),
      Item(GlobalImages.ordersSvg, 'orders'.tr, RouteGenerator.orderScreen),
      Item(GlobalImages.report, 'reports'.tr, RouteGenerator.reportScreen),
      // Item(GlobalImages.persent, 'Quà tặng', null),
      // Item(GlobalImages.digitalMarket, 'Chợ sổ', null),
      // Item(
      //     GlobalImages.ordersCircle, 'debt'.tr, RouteGenerator.detailDebtsScreen),
      // Item(GlobalImages.message, 'Tin nhắn', null),
      Item(GlobalImages.kitchen, 'kitchen'.tr, RouteGenerator.kitchenScreen),
      Item(GlobalImages.fastFood, 'table_order'.tr,
          RouteGenerator.tableOrderScreen),
      Item(GlobalImages.stock, 'stock_transfers'.tr,
          RouteGenerator.stockTransfersScreen),
      Item(GlobalImages.delivery, 'delivery', RouteGenerator.deliveryScreen),
      // Item(GlobalImages.earth, 'Link', RouteGenerator.getLinkScreen),

      Item(GlobalImages.downloadIcon, 'stock_purchases',
          RouteGenerator.stockPurchasesScreen),

      Item(GlobalImages.staffManagement, 'staff_management',
          RouteGenerator.staffManagmentScreen),
      
      Item(GlobalImages.affiliateMarketing, 'affiliate_marketing',
          RouteGenerator.affiliateMarketingScreen),
      Item(GlobalImages.colectMoney, 'payment_account',
          RouteGenerator.paymentAccountsScreen),
    ];
    final _menus =
        menu != '' ? MenuData.fromRawJson(menu!) : MenuData(items: menuDefault);
    emit(
      MainState.getMenu(
          data: state.data?.copyWith(
        menuData: _menus,
        menuDataOriginal: _menus,
      )),
    );
  }

  void update(oldIndex, newIndex) {
    if (oldIndex < newIndex) {
      newIndex -= 1;
    }
    final item = state.data!.menuDataOriginal!.items[oldIndex];
    final reOrderedList = List.of(state.data!.menuDataOriginal!.items)
      ..removeWhere((element) => element == item)
      ..insert(newIndex, item);

    emit(
      MainState.getMenuOriginal(
          data: state.data
              ?.copyWith(menuDataOriginal: MenuData(items: reOrderedList))),
    );
  }

  void cancel() async {
    emit(
      MainState.getMenuOriginal(
          data: state.data?.copyWith(menuDataOriginal: state.data!.menuData)),
    );
    navigator!.pop();
  }

  void saveMenu() async {
    emit(MainState.getMenuOriginal(
        data: state.data?.copyWith(menuData: state.data!.menuDataOriginal)));
    await _appPrefs.setMenuData(
        menu: state.data!.menuDataOriginal!.toRawJson());
    navigator!.pop();
  }
}
