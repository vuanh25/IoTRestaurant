part of 'add_product_stock_cubit.dart';

@freezed
class AddProductStockStateData with _$AddProductStockStateData {
  const factory AddProductStockStateData({
    @Default(StatusType.init) StatusType status,
    BusinessLocation? location,
    @Default("") String error,
    // @Default([]) List<Product> products,
    // @Default([]) List<Product> productsOriginal,
    // @Default([]) List<Product> productsSelected,
    // Product? product,
    // Product? productSelected,
    // @Default(-1) int showValue,
    // @Default([]) List<ProductVariation?>? productVariations,
    // ProductVariation? productVariation,
    // @Default(1) int quantity,
    // @Default(0) num totalAmount,
    // @Default(0) int countProductSelect,
  }) = _AddProductStockStateData;
}

@freezed
class AddProductStockState with _$AddProductStockState {
  const factory AddProductStockState.initial({AddProductStockStateData? data}) =
      Initial;
  const factory AddProductStockState.status({AddProductStockStateData? data}) =
      Status;
  const factory AddProductStockState.getBusinessLocation(
      {AddProductStockStateData? data}) = GetBusinessLocation;

  // const factory AddProductStockState.error({AddProductStockStateData? data}) = Error;

  // const factory AddProductStockState.getProducts(
  //     {AddProductStockStateData? data}) = GetProducts;
  // const factory AddProductStockState.getProductVariations(
  //     {AddProductStockStateData? data}) = GetProductVariations;
  // const factory ProductsState.getProductVariation({ProductsStateData? data}) =
  //     GetProductVariation;
  // const factory ProductsState.isCategoryScreen({ProductsStateData? data}) =
  //     IsCategoryScreen;
  // const factory ProductsState.minusQuantity(ProductsStateData? data) =
  //     MinusQuantity;
  // const factory ProductsState.plusQuantity(ProductsStateData? data) =
  //     PlusQuantity;
  // const factory ProductsState.calculationTotalAmount(ProductsStateData? data) =
  //     CalculationTotalAmount;
  // const factory ProductsState.setProductSelected(ProductsStateData? data) =
  //     SetProductSelected;
  // const factory ProductsState.addProductSelected({ProductsStateData? data}) =
  //     AddProductSelected;
  // const factory ProductsState.productSelected({ProductsStateData? data}) =
  //     ProductSelected;
  // const factory ProductsState.showValue({ProductsStateData? data}) = ShowValue;
}
