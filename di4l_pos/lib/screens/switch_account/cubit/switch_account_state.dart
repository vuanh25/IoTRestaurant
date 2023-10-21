part of 'switch_account_cubit.dart';

@freezed
class SwitchAccountStateData with _$SwitchAccountStateData {
  const factory SwitchAccountStateData({
    @Default([]) List<Account> accounts,
  }) = _SwitchAccountStateData;
}

@freezed
class SwitchAccountState with _$SwitchAccountState {
  const factory SwitchAccountState.initial({SwitchAccountStateData? data}) =
      Initial;
  const factory SwitchAccountState.getAccounts({SwitchAccountStateData? data}) =
      GetAccounts;
}
