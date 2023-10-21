part of 'payment_account_cubit.dart';

@freezed
class PaymentAccountData with _$PaymentAccountData {
  const factory PaymentAccountData({
    @Default([]) List<PaymentAccount> paymentAccounts,
    @Default([]) List<PaymentAccount> originalPaymentAccounts,
    @Default([]) List<PaymentAccount?> businessPaymentAccountsList,
    PaymentAccount? paymentAccount,
    @Default(StatusType.init) StatusType status,
  }) = _PaymentAccountData;
}

@freezed
class PaymentAccountState with _$PaymentAccountState {
  const factory PaymentAccountState.initial({PaymentAccountData? data}) = Initial;
  const factory PaymentAccountState.status({PaymentAccountData? data}) = Status;
  const factory PaymentAccountState.getPaymentAccounts({PaymentAccountData? data}) = GetPaymentAccounts;
  const factory PaymentAccountState.getPaymentAccount({PaymentAccountData? data}) = GetPaymentAccount;
}
