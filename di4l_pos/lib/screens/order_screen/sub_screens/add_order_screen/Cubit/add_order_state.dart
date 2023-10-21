part of 'add_order_cubit.dart';

@freezed
class AddOrderStateData with _$AddOrderStateData {
  const factory AddOrderStateData({
    @Default(StatusType.init) StatusType status,
    @Default([]) List<Product> productsSelected,
    @Default(0) num totalAmount,
    @Default(0) int countProductSelect,
    @Default(0) double shipping,
    @Default("pos") String shippingMethod,
    @Default(0) double discount,
    @Default("fixed") String discountType,
    DateTime? transactionDate,
    ContactModel? customerSelect,
    int? businessID,
    @Default([]) List<SellProductRequest> products,
    // @Default([]) List<AddProductRequest> product,
    // @Default([]) List<AddOrderRequest> orders,
  }) = _AddOrderStateData;
}

@freezed
class AddOrderState with _$AddOrderState {
  const factory AddOrderState.initial({
    AddOrderStateData? data,
  }) = Initial;
  const factory AddOrderState.status({
    AddOrderStateData? data,
  }) = Status;
  const factory AddOrderState.getOrder({
    AddOrderStateData? data,
  }) = GetOrder;

  const factory AddOrderState.setProductSelected(AddOrderStateData? data) =
      SetProductSelected;
  const factory AddOrderState.setProductSelectedAll(AddOrderStateData? data) =
      SetProductSelectedAll;
  const factory AddOrderState.setShipping(AddOrderStateData? data) =
      SetShipping;
  const factory AddOrderState.setDiscount(AddOrderStateData? data) =
      SetDiscount;
  const factory AddOrderState.setShippingMethod(AddOrderStateData? data) =
      SetShippingMethod;
  const factory AddOrderState.setTransactionDate(AddOrderStateData? data) =
      SetTransactionDate;
  const factory AddOrderState.setSustomerSelect(AddOrderStateData? data) =
      SetSustomerSelect;
  const factory AddOrderState.setBusinessID(AddOrderStateData? data) =
      SetBusinessID;
}
