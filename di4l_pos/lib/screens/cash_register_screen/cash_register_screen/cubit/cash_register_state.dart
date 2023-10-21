part of 'cash_register_cubit.dart';

@freezed
class CashRegisterStateData with _$CashRegisterStateData {
  const factory CashRegisterStateData({
    @Default([]) List<CashResgisterData> listCashRegisterData,
  }) = _CashRegisteStateData;
}

@freezed
class CashRegisterState with _$CashRegisterState {
  const factory CashRegisterState.initial({CashRegisterStateData? data}) =
      Initial;
  const factory CashRegisterState.getCashRegister(
      {CashRegisterStateData? data}) = GetCashRegister;
}
