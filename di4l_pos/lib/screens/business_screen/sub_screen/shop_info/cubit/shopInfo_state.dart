// ignore_for_file: file_names

part of 'shopInfo_cubit.dart';

@freezed
class ShopInfoData with _$ShopInfoData {
  const factory ShopInfoData({
    @Default('') String error,
    @Default(StatusType.init) StatusType status,
    @Default([]) List<String> listTimeZone,
    @Default([]) List<Currency> listCurrency,
    @Default([]) List<TaxData> listTax,
    TaxData? tax,
    Location? locations,
    ShopSettingRp? shopInfo,
    DefaultUnitRp? listDFUnit,
    File? image,
    @Default('') String smsService,
  }) = _ShopInfoData;
}

@freezed
class ShopInfoState with _$ShopInfoState {
  const factory ShopInfoState.initial({ShopInfoData? data}) = Initial;
  const factory ShopInfoState.status({ShopInfoData? data}) = Status;
  const factory ShopInfoState.errors({ShopInfoData? data}) = Errors;
  const factory ShopInfoState.getListTimeZone({ShopInfoData? data}) =
      getListTimeZone;
  const factory ShopInfoState.getListCurrency({ShopInfoData? data}) =
      getListCurrency;
  const factory ShopInfoState.getListDefaultUnitRp({ShopInfoData? data}) =
      getListDefaultUnitRp;
  const factory ShopInfoState.getshopInfo({ShopInfoData? data}) = GetshopInfo;
  const factory ShopInfoState.getImage({ShopInfoData? data}) = GetImage;
}
