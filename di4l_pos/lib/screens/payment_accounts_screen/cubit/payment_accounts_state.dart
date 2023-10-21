part of 'payment_accounts_cubit.dart';

@freezed
class PaymentAccountsStateData with _$PaymentAccountsStateData {
  const factory PaymentAccountsStateData({
    @Default(StatusType.init) StatusType status,
    @Default('') String error,
    @Default([]) List<PaymentAccount> paymentAccounts,
    @Default([]) List<PaymentAccount> paymentAccountsOriginal,
    @Default([]) List<PaymentDetail> paymentDetails,
    @Default([]) List<AccType> accountTypes,
    @Default([]) List<AccType> accountTypesOriginal,
    PaymentAccount? paymentAccount,
    PaymentAccount? paymentAccountFrom,
    PaymentAccount? paymentAccountTo,
    AccType? accountType,
    Acount? acount,
  }) = _PaymentAccountsStateData;
}

@freezed
class PaymentAccountsState with _$PaymentAccountsState {
  const factory PaymentAccountsState.initial({PaymentAccountsStateData? data}) =
      Initial;
  const factory PaymentAccountsState.status({PaymentAccountsStateData? data}) =
      Status;
  const factory PaymentAccountsState.error({PaymentAccountsStateData? data}) =
      Error;
  const factory PaymentAccountsState.getPaymentAccounts(
      {PaymentAccountsStateData? data}) = GetPaymentAccounts;
  const factory PaymentAccountsState.getPaymentAccount(
      {PaymentAccountsStateData? data}) = GetPaymentAccount;
}
