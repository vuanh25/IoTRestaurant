part of 'edit_order_cubit.dart';

@freezed
class EditOrderData with _$EditOrderData {
  const factory EditOrderData({
    
    @Default(StatusType.init) StatusType status,
    @Default([]) List<TableModel> tables,
    @Default([]) List<Product> productsSelected,
    TableModel? table,
    @Default([]) List<SellData> sells,
    @Default([]) List<SellData> sellsOriginal,
    @Default(0) int? page,
    SellResponse? response,
    @Default([]) List<SellProductRequest> products,
    @Default([]) List<VariantsResponse> variant,
    @Default([]) List<ProductResponse> listProductResponse,
    @Default(0) num totalAmount,
    @Default(0) int countProductSelect,
    @Default(0) int? shippedOrder,
    @Default(0) int? orderedOrder,
    @Default(0) double shipping,
    @Default("pos") String shippingMethod,
    @Default(0) double discount,
    @Default("fixed") String discountType,
    ContactModel? customerSelect,
    int? businessID,
  }) = _EditOrderData;
}

@freezed
class EditOrderState with _$EditOrderState {
  const factory EditOrderState.initial({EditOrderData? data}) = Initial;

  const factory EditOrderState.status({EditOrderData? data}) = Status;

  const factory EditOrderState.getTable({EditOrderData? data}) = GetTable;

  const factory  EditOrderState.getCart({ EditOrderData? data}) = GetCart;
  const factory  EditOrderState.addCart({ EditOrderData? data}) = AddCart;
   const factory EditOrderState.getProduct({
    EditOrderData? data,
  }) = GetProductById;
  const factory EditOrderState.getProducts({
    EditOrderData? data,
  }) = GetProducts;
   const factory EditOrderState.setProductSelected(EditOrderData? data) =
      SetProductSelected;
  const factory EditOrderState.setProductSelectedAll(EditOrderData? data) =
      SetProductSelectedAll;
  const factory EditOrderState.setShipping(EditOrderData? data) =
      SetShipping;
  const factory EditOrderState.setDiscount(EditOrderData? data) =
      SetDiscount;
  const factory EditOrderState.setShippingMethod(EditOrderData? data) =
      SetShippingMethod;
        const factory EditOrderState.setSustomerSelect(EditOrderData? data) =
      SetSustomerSelect;
  const factory EditOrderState.setBusinessID(EditOrderData? data) =
      SetBusinessID;
}
