part of 'add_cash_cubit.dart';

@freezed
class AddCashStateData with _$AddCashStateData {
  const factory AddCashStateData({
    @Default('open') String type,
  }) = _AddCashStateData;
}

@freezed
class AddCashRegisterState with _$AddCashRegisterState {
  const factory AddCashRegisterState.initial({AddCashStateData? data}) =
      Initial;
  const factory AddCashRegisterState.getType({AddCashStateData? data}) =
      GetType;
}
