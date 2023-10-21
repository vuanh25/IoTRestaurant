part of 'sell_return_cubit.dart';

@freezed
class SellReturnStateData with _$SellReturnStateData {
  const factory SellReturnStateData({
    @Default(StatusType.init) StatusType status,
    @Default([]) List<SellData> sells,
  }) = _SellReturnStateData;
}

@freezed
class SellReturnState with _$SellReturnState {
  const factory SellReturnState.initial({SellReturnStateData? data}) = Initial;
  const factory SellReturnState.status({SellReturnStateData? data}) = Status;
  const factory SellReturnState.getSells({SellReturnStateData? data}) =
      GetSells;
}
