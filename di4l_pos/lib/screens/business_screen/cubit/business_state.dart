part of 'business_cubit.dart';

@freezed
class BusinessData with _$BusinessData {
  const factory BusinessData({
    @Default(StatusType.init) StatusType status,
    @Default('') String error,
    @Default([]) List<BusinessLocation> businesss,
    BusinessLocation? business,
    BusinessLocation? businessTo,
    BusinessSettings? businessSetting,
    @Default([]) List<Account> accounts,
  }) = _BusinessData;
}

@freezed
class BusinessState with _$BusinessState {
  const factory BusinessState.initial({BusinessData? data}) = Initial;
  const factory BusinessState.status({BusinessData? data}) = Status;
  const factory BusinessState.getBusinesss({BusinessData? data}) = GetBusinesss;
  const factory BusinessState.getBusiness({BusinessData? data}) = GetBusiness;
  const factory BusinessState.getAccounts({BusinessData? data}) = GetAccounts;
}
