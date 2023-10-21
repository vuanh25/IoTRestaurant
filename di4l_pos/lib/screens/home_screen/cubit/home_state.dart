part of 'home_cubit.dart';

@freezed
class HomeStateData with _$HomeStateData {
  const factory HomeStateData({
    @Default([]) List<HomeMenu> productMenus,
    @Default([]) List<HomeMenu> importMenus,
    @Default([]) List<HomeMenu> sellMenus,
    @Default([]) List<HomeMenu> contactMenus,
    @Default([]) List<HomeMenu> productMenusOriginal,
    @Default([]) List<HomeMenu> importMenusOriginal,
    @Default([]) List<HomeMenu> sellMenusOriginal,
    @Default([]) List<HomeMenu> contactMenusOriginal,
    @Default([]) List<HomeMenu> reportMenus,
    @Default([]) List<HomeMenu> reportMenusOriginal,
    HomeMenu? homeMenuSelected,
  }) = _HomeStateData;
}

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial({HomeStateData? data}) = Initial;
  const factory HomeState.getProductMenus({HomeStateData? data}) =
      GetProductMenus;
  const factory HomeState.getImportMenus({HomeStateData? data}) =
      GetImportMenus;
  const factory HomeState.getSellMenus({HomeStateData? data}) = GetSellMenus;
  const factory HomeState.getContactMenus({HomeStateData? data}) =
      GetContactMenus;
  const factory HomeState.getReportMenus({HomeStateData? data}) =
      GetReportMenus;
  const factory HomeState.changeHomeMenuSelected({HomeStateData? data}) =
      ChangeHomeMenuSelected;
}
