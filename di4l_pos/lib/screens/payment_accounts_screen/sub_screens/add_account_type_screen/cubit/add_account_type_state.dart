part of 'add_account_type_cubit.dart';

@freezed
class AddAccountTypeStateData with _$AddAccountTypeStateData {
  const factory AddAccountTypeStateData({
    @Default('') String error,
    @Default(StatusType.init) StatusType status,
  }) = _AddAccountTypeStateData;
}

@freezed
class AddAccountTypeState with _$AddAccountTypeState {
  const factory AddAccountTypeState.initial({AddAccountTypeStateData? data}) =
      Initial;
  const factory AddAccountTypeState.error({AddAccountTypeStateData? data}) =
      Error;
  const factory AddAccountTypeState.status({AddAccountTypeStateData? data}) =
      Status;
}
