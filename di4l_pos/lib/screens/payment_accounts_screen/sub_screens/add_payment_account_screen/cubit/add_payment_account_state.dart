part of 'add_payment_account_cubit.dart';

@freezed
class AddPaymentAccountStateData with _$AddPaymentAccountStateData {
  const factory AddPaymentAccountStateData({
    @Default('') String error,
    @Default(StatusType.init) StatusType status,
  }) = _AddPaymentAccountStateData;
}

@freezed
class AddPaymentAccountState with _$AddPaymentAccountState {
  const factory AddPaymentAccountState.initial(
      {AddPaymentAccountStateData? data}) = Initial;
  const factory AddPaymentAccountState.error(
      {AddPaymentAccountStateData? data}) = Error;
  const factory AddPaymentAccountState.status(
      {AddPaymentAccountStateData? data}) = Status;
}
