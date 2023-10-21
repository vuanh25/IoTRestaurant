part of 'price_cubit.dart';

@freezed
class PriceStateData with _$PriceStateData {
  const factory PriceStateData({
    @Default(StatusType.init) StatusType status,
    @Default([]) List<Price> prices,
    Price? price,
  }) = _PriceStateData;
}

@freezed
class PriceState with _$PriceState {
  const factory PriceState.initial({PriceStateData? data}) = Initial;
  const factory PriceState.status({PriceStateData? data}) = Status;
  const factory PriceState.getPrices({PriceStateData? data}) = GetPrices;
  const factory PriceState.getPrice({PriceStateData? data}) = GetPrice;
}
