part of 'delivery_cubit.dart';

@freezed
class DeliveryStateData with _$DeliveryStateData {
  const factory DeliveryStateData({
    @Default(StatusType.init) StatusType status,
    @Default([]) List<DeliveryPartner> deliveryPartners,
    @Default([]) List<DeliveryPartner> deliveryPartnersOriginal,
    // @Default([]) List<Transaction> transactions,

    DeliveryPartner? deliveryPartner,
  }) = _DeliveryStateData;
}

@freezed
class DeliveryState with _$DeliveryState {
  const factory DeliveryState.initial({DeliveryStateData? data}) = Initial;
  const factory DeliveryState.status({DeliveryStateData? data}) = Status;
  const factory DeliveryState.getDeliveryPartners({DeliveryStateData? data}) =
      GetDeliveryPartners;
  const factory DeliveryState.getDeliveryPartner({DeliveryStateData? data}) =
      GetDeliveryPartner;
}
