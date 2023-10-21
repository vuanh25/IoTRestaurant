part of 'add_contact_cubit.dart';

@freezed
class AddContactStateData with _$AddContactStateData {
  const factory AddContactStateData({
    @Default('') String error,
    @Default(StatusType.init) StatusType status,
    @Default('days') String payType,
    @Default(TypeCustomer.individual) TypeCustomer type,
    @Default([]) List<Transaction> transactionsOrder,
    @Default([]) List<Transaction> transactionsDebt,
    Transaction? transaction,
  }) = _AddContactStateData;
}

@freezed
class AddContactState with _$AddContactState {
  const factory AddContactState.initial({AddContactStateData? data}) = Initial;
  const factory AddContactState.error({AddContactStateData? data}) = Error;
  const factory AddContactState.status({AddContactStateData? data}) = Status;
  const factory AddContactState.payType({AddContactStateData? data}) = PayType;
  const factory AddContactState.type({AddContactStateData? data}) = Type;
  const factory AddContactState.transactions({AddContactStateData? data}) =
      GetTransactions;
}
