part of 'ghtk_detail_cubit.dart';

@freezed
class GhtkDetailStateData with _$GhtkDetailStateData {
  const factory GhtkDetailStateData({
    @Default(StatusType.init) StatusType status,
    @Default('') String error,
    @Default([]) List<OrderElement> orders,
    // @Default([]) List<Transaction> transactions,

    OrderElement? order,
  }) = _GhtkDetailStateData;
}

@freezed
class GhtkDetailState with _$GhtkDetailState {
  const factory GhtkDetailState.initial({GhtkDetailStateData? data}) = Initial;
  const factory GhtkDetailState.error({GhtkDetailStateData? data}) = Error;
  const factory GhtkDetailState.status({GhtkDetailStateData? data}) = Status;
  const factory GhtkDetailState.getDetailsGhtk({GhtkDetailStateData? data}) =
      GetDetailsGhtk;
}
