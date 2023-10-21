part of 'products_cubit.dart';

@freezed
class ProductsStateData with _$ProductsStateData {
  const factory ProductsStateData({
    @Default(StatusType.init) StatusType status,
    @Default([]) List<Product> products,
    @Default([]) List<Product> productsOriginal,
    @Default([]) List<Product> productsSelected,
    Product? product,
    Product? productSelected,
    @Default(-1) int showValue,
    @Default([]) List<ProductVariation?>? productVariations,
    @Default([]) List<Variation> variations,
    ProductVariation? productVariation,
    Variation? variation,
    @Default(true) bool isGrid,
    @Default(false) bool isOpenSearch,
    @Default(false) bool isCategoryScreen,
    @Default(1) int quantity,
    @Default(0) num totalAmount,
    @Default(0) int countProductSelect,
  }) = _ProductsStateData;
}

@freezed
class ProductsState with _$ProductsState {
  const factory ProductsState.initial({ProductsStateData? data}) = Initial;
  const factory ProductsState.status({ProductsStateData? data}) = Status;
  const factory ProductsState.getProducts({ProductsStateData? data}) =
      GetProducts;
  const factory ProductsState.getProduct({ProductsStateData? data}) =
      GetProduct;
  const factory ProductsState.getProductVariations({ProductsStateData? data}) =
      GetProductVariations;
  const factory ProductsState.getProductVariation({ProductsStateData? data}) =
      GetProductVariation;
  const factory ProductsState.isGrid({ProductsStateData? data}) = IsGrid;
  const factory ProductsState.isOpenSearch({ProductsStateData? data}) =
      IsOpenSearch;
  const factory ProductsState.isCategoryScreen({ProductsStateData? data}) =
      IsCategoryScreen;

  const factory ProductsState.minusQuantity(ProductsStateData? data) =
      MinusQuantity;
  const factory ProductsState.plusQuantity(ProductsStateData? data) =
      PlusQuantity;
  const factory ProductsState.calculationTotalAmount(ProductsStateData? data) =
      CalculationTotalAmount;
  const factory ProductsState.setProductSelected(ProductsStateData? data) =
      SetProductSelected;
  const factory ProductsState.addProductSelected({ProductsStateData? data}) =
      AddProductSelected;
  const factory ProductsState.productSelected({ProductsStateData? data}) =
      ProductSelected;
  const factory ProductsState.showValue({ProductsStateData? data}) = ShowValue;
}
