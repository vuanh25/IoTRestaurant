part of 'add_status_order_cubit.dart';

@freezed
class AddStatusOrderStateData with _$AddStatusOrderStateData {
  const factory AddStatusOrderStateData({
    @Default('') String error,
    @Default(StatusType.init) StatusType status,
  }) = _AddStatusOrderStateData;
}

@freezed
class AddStatusOrderState with _$AddStatusOrderState {
  const factory AddStatusOrderState.initial({AddStatusOrderStateData? data}) =
      Initial;
  const factory AddStatusOrderState.error({AddStatusOrderStateData? data}) =
      Error;
  const factory AddStatusOrderState.status({AddStatusOrderStateData? data}) =
      Status;
}
