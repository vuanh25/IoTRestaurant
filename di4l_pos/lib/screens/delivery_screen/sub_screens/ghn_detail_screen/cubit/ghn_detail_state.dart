part of 'ghn_detail_cubit.dart';

@freezed
class GhnDetailStateData with _$GhnDetailStateData {
  const factory GhnDetailStateData({
    @Default(StatusType.init) StatusType status,
    @Default('') String error,
    @Default([]) List<OrderElement> orders,
    // @Default([]) List<Transaction> transactions,

    OrderElement? order,
  }) = _GhnDetailStateData;
}

@freezed
class GhnDetailState with _$GhnDetailState {
  const factory GhnDetailState.initial({GhnDetailStateData? data}) = Initial;
  const factory GhnDetailState.error({GhnDetailStateData? data}) = Error;
  const factory GhnDetailState.status({GhnDetailStateData? data}) = Status;
  const factory GhnDetailState.getDetailsGhn({GhnDetailStateData? data}) =
      GetDetailsGhn;
}
