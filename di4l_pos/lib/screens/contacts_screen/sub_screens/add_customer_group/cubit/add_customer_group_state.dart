part of 'add_customer_group_cubit.dart';

@freezed
class AddCustomerGroupStateData with _$AddCustomerGroupStateData {
  const factory AddCustomerGroupStateData({
    @Default('') String error,
    @Default(StatusType.init) StatusType status,
    @Default('Percentage') String type,
  }) = _AddCustomerGroupStateData;
}

@freezed
class AddCustomerGroupState with _$AddCustomerGroupState {
  const factory AddCustomerGroupState.initial(
      {AddCustomerGroupStateData? data}) = Initial;
  const factory AddCustomerGroupState.error({AddCustomerGroupStateData? data}) =
      Error;
  const factory AddCustomerGroupState.status(
      {AddCustomerGroupStateData? data}) = Status;
  const factory AddCustomerGroupState.type({AddCustomerGroupStateData? data}) =
      Type;
}
