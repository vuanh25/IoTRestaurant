part of 'create_order_cubit.dart';

@freezed
class CreateOrderStateData with _$CreateOrderStateData {
  const factory CreateOrderStateData({
    @Default('fixed') String discountType,
  }) = _CreateOrderStateData;
}

@freezed
class CreateOrderState with _$CreateOrderState {
  const factory CreateOrderState.initial({CreateOrderStateData? data}) =
      Initial;
  const factory CreateOrderState.getDiscountType({CreateOrderStateData? data}) =
      GetDiscountType;
}
