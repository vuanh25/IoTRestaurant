part of 'customer_group_cubit.dart';

@freezed
class CustomerGroupStateData with _$CustomerGroupStateData {
  const factory CustomerGroupStateData({
    @Default(StatusType.init) StatusType status,
    @Default([]) List<CustomerGroupModel>? customerGroups,
    @Default([]) List<CustomerGroupModel>? customerGroupsOriginal,
    CustomerGroupModel? customerGroup,
  }) = _CustomerGroupStateData;
}

@freezed
class CustomerGroupState with _$CustomerGroupState {
  const factory CustomerGroupState.initial({CustomerGroupStateData? data}) =
      Initial;
  const factory CustomerGroupState.status({CustomerGroupStateData? data}) =
      Status;
  const factory CustomerGroupState.getCustomerGroups(
      {CustomerGroupStateData? data}) = GetCustomerGroups;
  const factory CustomerGroupState.getCustomerGroup(
      {CustomerGroupStateData? data}) = GetCustomerGroup;
}
