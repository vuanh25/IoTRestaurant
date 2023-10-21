part of 'sellOnline_cubit.dart';

@freezed
class SellOnlineStateData with _$SellOnlineStateData{
  const factory SellOnlineStateData([
    @Default([]) List<ManageMenu> listReviewProduct,
    @Default([]) List<ManageMenu> listTodaynButton,
    @Default([]) List<ManageMenu> listManageSellOnline,
    @Default([]) List<ManageMenu> listSellMarket,
    @Default([]) List<ManageMenu> listSliceshow,
    @Default([]) List<ManageMenu> listSliceshowTab1,
    @Default([]) List<ManageMenu> listSliceshowTab2,
    @Default([]) List<ManageMenu> listSliceshowTab3,

    @Default([]) List<ManageMenu> listReviewProductOriginal,
    @Default([]) List<ManageMenu> listTodaynButtonOriginal,
    @Default([]) List<ManageMenu> listManageSellOnlineOriginal,
    @Default([]) List<ManageMenu> listSellMarketOriginal,
    @Default([]) List<ManageMenu> listSliceshowOriginal,
    @Default([]) List<ManageMenu> listSliceshowTab1Original,
    @Default([]) List<ManageMenu> listSliceshowTab2Original,
    @Default([]) List<ManageMenu> listSliceshowTab3Original,
    ManageMenu? manageMenuSelected,
  ]) = _SellOnlineStateData;
}

@freezed
class SellOnlineState with _$SellOnlineState {
  const factory SellOnlineState.initial(SellOnlineStateData? data) = Initial;
  const factory SellOnlineState.getReviewProduct(SellOnlineStateData? data) = ReviewProduct;
  const factory SellOnlineState.getTodaynButton(SellOnlineStateData? data) = TodaynButton;
  const factory SellOnlineState.getManageSellOnline(SellOnlineStateData? data) = ManageSellOnline;
  const factory SellOnlineState.getSellMarket(SellOnlineStateData? data) = SellMarket;
  const factory SellOnlineState.getlistSliceshow(SellOnlineStateData? data) = listSliceshow;
  const factory SellOnlineState.getlistSliceshowTab1(SellOnlineStateData? data) = listSliceshowTab1;
  const factory SellOnlineState.getlistSliceshowTab2(SellOnlineStateData? data) = listSliceshowTab2;
  const factory SellOnlineState.getlistSliceshowTab3(SellOnlineStateData? data) = listSliceshowTab3;
}