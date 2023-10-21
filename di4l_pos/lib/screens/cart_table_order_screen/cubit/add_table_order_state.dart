part of 'add_table_order_cubit.dart';

@freezed
class AddTableOrderStateData with _$AddTableOrderStateData {
  const factory AddTableOrderStateData({
    @Default(StatusType.init) StatusType status,
    @Default([]) List<ItemProduct> productsSelected,
    // int? tableId,
    // String? note,
    // @Default(0) double discount,
    // @Default("fixed") String discountType,
    // DateTime? transactionDate,
    // ContactModel? customerSelect,
    // int? businessId,
    // int? changeReturn
    // @Default([]) List<SellProductRequest> products,
  }) = _AddTableOrderStateData;
}

@freezed
class AddTableOrderState with _$AddTableOrderState {
  const factory AddTableOrderState.initial({
    AddTableOrderStateData? data,
  }) = Initial;
  const factory AddTableOrderState.status({
    AddTableOrderStateData? data,
  }) = Status;
  const factory AddTableOrderState.addOrder({
    AddTableOrderStateData? data,
  }) = AddOrder;
  // const factory AddTableOrderState.setProductSelected(
  //     AddTableOrderStateData? data) = SetProductSelected;
  // const factory AddTableOrderState.setProductSelectedAll(
  //     AddTableOrderStateData? data) = SetProductSelectedAll;
  // const factory AddTableOrderState.setDiscount(AddTableOrderStateData? data) =
  //     SetDiscount;
  // const factory AddTableOrderState.setTransactionDate(
  //     AddTableOrderStateData? data) = SetTransactionDate;
  // const factory AddTableOrderState.setCustomerSelect(
  //     AddTableOrderStateData? data) = SetCustomerSelect;
  // const factory AddTableOrderState.setBusinessId(AddTableOrderStateData? data) =
  //     SetBusinessId;
  // const factory AddTableOrderState.setTableId(AddTableOrderStateData? data) =
  //     SetTableId;
  // const factory AddTableOrderState.setNote(AddTableOrderStateData? data) =
  //     SetNote;
}
