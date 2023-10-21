part of 'kitchen_cubit.dart';

@freezed
class KitchenStateData with _$KitchenStateData {
  const factory KitchenStateData({
    @Default(StatusType.init) StatusType status,
    @Default([]) List<KitchenData> kitchens,
    @Default([]) List<KitchenData> kitchensOriginal,
    Sell? sells,
    PaymentTypes? paymentTypes,
    PosSettings? posSetTings,
    @Default([]) List<Activities> activities,
  }) = _KitchenStateData;
}

@freezed
class KitchenState with _$KitchenState {
  const factory KitchenState.initial({KitchenStateData? data}) = Initial;
  const factory KitchenState.status({KitchenStateData? data}) = Status;
  const factory KitchenState.getKitchens({KitchenStateData? data}) =
      GetKitchens;
  const factory KitchenState.getSells({KitchenStateData? data}) =
      GetSells;
  const factory KitchenState.getPaymentTypes({KitchenStateData? data}) =
      GetPaymentTypes;
  const factory KitchenState.getPosSetTings({KitchenStateData? data}) =
      GetPosSetTings;
  const factory KitchenState.getActivities({KitchenStateData? data}) =
      GetActivities;
}
