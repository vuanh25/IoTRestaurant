part of 'add_price_cubit.dart';

@freezed
class AddPriceStateData with _$AddPriceStateData {
  const factory AddPriceStateData({
    @Default('') String error,
    @Default(StatusType.init) StatusType status,
  }) = _AddPriceStateData;
}

@freezed
class AddPriceState with _$AddPriceState {
  const factory AddPriceState.initial({AddPriceStateData? data}) = Initial;
  const factory AddPriceState.error({AddPriceStateData? data}) = Error;
  const factory AddPriceState.status({AddPriceStateData? data}) = Status;
}
