part of 'cart_table_order_cubit.dart';

@freezed
class CartStateData with _$CartStateData {
  const factory CartStateData({
    @Default(StatusType.init) StatusType status,
    @Default(<ItemProduct>[]) List<ItemProduct> listItemProduct,
  }) = _CartStateData;
}

@freezed
class CartState with _$CartState {
  const factory CartState.initial({CartStateData? data}) = Initial;
  const factory CartState.status({CartStateData? data}) = Status;
  const factory CartState.getCart({CartStateData? data}) = GetCart;
  const factory CartState.addCart({CartStateData? data}) = AddCart;
  const factory CartState.removeAll({CartStateData? data}) = RemoveAll;
  const factory CartState.removeProductAt({CartStateData? data}) =
      RemoveProductAt;
}
