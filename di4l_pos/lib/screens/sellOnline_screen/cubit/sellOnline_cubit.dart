import 'package:di4l_pos/common/global_images.dart';
import 'package:di4l_pos/models/manage/response/ManageMenu.dart';
import 'package:di4l_pos/route_generator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';

part 'sellOnline_cubit.freezed.dart';
part 'sellOnline_state.dart';

class SellOnlineCubit extends Cubit<SellOnlineState>{
  SellOnlineCubit() : super(SellOnlineState.initial(SellOnlineStateData()));

  Future<void> getReviewProduct() async{
    final _menu = [
      ManageMenu(
        '0',
        'ReviewProduct1',
        GlobalImages.test,
        GlobalImages.coin,
        'income'.tr,
        false,
        'ReviewProduct',
      ),
      ManageMenu(
        '0',
        'ReviewProduct2',
        GlobalImages.test,
        GlobalImages.baolixi,
        'orders'.tr,
        false,
        'ReviewProduct',
      ),
      ManageMenu(
        '0',
        'ReviewProduct13',
        GlobalImages.test,
        GlobalImages.dolar,
        'sell_return_due'.tr,
        false,
        'ReviewProduct',
      ),
    ];
    emit(SellOnlineState.getReviewProduct(state.data?.copyWith(listReviewProduct: _menu, listReviewProductOriginal: _menu)));
  }
    Future<void> getTodaynButton() async{
    final _menu = [
      ManageMenu(
        '0',
        'ReviewProduct1',
        GlobalImages.chartSmall,
        "#d5f0df",
        'income_online'.tr,
        false,
        'ReviewProduct',
      ),
      ManageMenu(
        '0',
        'ReviewProduct2',
        GlobalImages.eyeSmall,
        "#d5f0df",
        'view_count'.tr,
        false,
        'ReviewProduct',
      ),
      ManageMenu(
        '0',
        'ReviewProduct13',
        GlobalImages.clockSmall,
        "#fceeeb",
        'waiting_for_comfirmation'.tr,
        false,
        'ReviewProduct',
      ),
      ManageMenu(
        '0',
        'ReviewProduct13',
        GlobalImages.shippingSmall,
        "#fff3e5",
        'inprocess'.tr,
        false,
        'ReviewProduct',
      ),
    ];
    emit(SellOnlineState.getTodaynButton(state.data?.copyWith(listTodaynButton: _menu, listTodaynButtonOriginal: _menu)));
  }
  Future<void> getManageSellOnline() async{
    final _menu = [
      ManageMenu(
        null,
        'ManageSellOnline1',
        GlobalImages.shopSettings,
        null,
        'settings'.tr,
        false,
        'ManageSellOnline',
      ),
      ManageMenu(
        null,
        'ManageSellOnline2',
        GlobalImages.cardBussiness,
        null,
        'cardbussiness'.tr,
        false,
        'ManageSellOnline',
      ),
      ManageMenu(
        null,
        'ManageSellOnline3',
        GlobalImages.ui,
        null,
        'UI'.tr,
        false,
        'ManageSellOnline',
      ),
    ];
    emit(SellOnlineState.getManageSellOnline(state.data?.copyWith(listManageSellOnline: _menu, listManageSellOnlineOriginal: _menu)));
  }
  Future<void> getSellMarket() async{
    final _menu = [
      ManageMenu(
        null,
        'ReviewProduct1',
        GlobalImages.sellonline,
        null,
        'sellonline'.tr,
        false,
        'ReviewProduct',
      ),
      ManageMenu(
        null,
        'ReviewProduct2',
        GlobalImages.shopee,
        null,
        'shopee'.tr,
        false,
        'ReviewProduct',
      ),
      ManageMenu(
        null,
        'ReviewProduct13',
        GlobalImages.lazada,
        null,
        'lazada'.tr,
        false,
        'ReviewProduct',
      ),
      ManageMenu(
        null,
        'ReviewProduct1',
        GlobalImages.tiktok,
        null,
        'tiktok'.tr,
        false,
        'ReviewProduct',
      ),
    ];
    emit(SellOnlineState.getSellMarket(state.data?.copyWith(listSellMarket: _menu, listSellMarketOriginal: _menu)));
  }
  Future<void> getlistSliceshow() async{
    final _menu = [
      ManageMenu(
        null,
        'slice1',
        GlobalImages.slideshow1,
        null,
        null,
        false,
        'slice_show',
      ),
      ManageMenu(
        null,
        'slice2',
        GlobalImages.slideshow2,
        null,
        null,
        false,
        'slice_show',
      ),
      ManageMenu(
        null,
        'slice3',
        GlobalImages.slideshow1,
        null,
        null,
        false,
        'slice_show',
      )
    ];
    emit(SellOnlineState.getlistSliceshow(state.data?.copyWith(listSliceshow: _menu, listSliceshowOriginal: _menu)));
  }
  Future<void> getlistSliceshowTab1() async{
    final _menu = [
      ManageMenu(
        null,
        'slice1',
        GlobalImages.slideshow1,
        null,
        null,
        false,
        'slice_show',
      ),
      ManageMenu(
        null,
        'slice2',
        GlobalImages.slideshow2,
        null,
        null,
        false,
        'slice_show',
      ),
      ManageMenu(
        null,
        'slice3',
        GlobalImages.slideshow1,
        null,
        null,
        false,
        'slice_show',
      )
    ];
    emit(SellOnlineState.getlistSliceshowTab1(state.data?.copyWith(listSliceshowTab1: _menu, listSliceshowTab1Original: _menu)));
  }
  Future<void> getlistSliceshowTab2() async{
    final _menu = [
      ManageMenu(
        null,
        'slice1',
        GlobalImages.slideshow1,
        null,
        null,
        false,
        'slice_show',
      ),
      ManageMenu(
        null,
        'slice2',
        GlobalImages.slideshow2,
        null,
        null,
        false,
        'slice_show',
      ),
      ManageMenu(
        null,
        'slice3',
        GlobalImages.slideshow1,
        null,
        null,
        false,
        'slice_show',
      )
    ];
    emit(SellOnlineState.getlistSliceshowTab2(state.data?.copyWith(listSliceshowTab2: _menu, listSliceshowTab2Original: _menu)));
  }
  Future<void> getlistSliceshowTab3() async{
    final _menu = [
      ManageMenu(
        null,
        'slice1',
        GlobalImages.slideshow1,
        null,
        null,
        false,
        'slice_show',
      ),
      ManageMenu(
        null,
        'slice2',
        GlobalImages.slideshow2,
        null,
        null,
        false,
        'slice_show',
      ),
      ManageMenu(
        null,
        'slice3',
        GlobalImages.slideshow1,
        null,
        null,
        false,
        'slice_show',
      )
    ];
    emit(SellOnlineState.getlistSliceshowTab3(state.data?.copyWith(listSliceshowTab3: _menu, listSliceshowTab3Original: _menu)));
  }

  void handlePressedMenu({required ManageMenu? manageMenu}) {
    debugPrint('Menu Code: ${manageMenu?.key}');
    switch (manageMenu?.key ?? '') {
      case 'products':
        navigator!.pushNamed(RouteGenerator.productsScreen);
        return;
    }
  }
}