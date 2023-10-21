part of 'connect_ghtk_cubit.dart';

@freezed
class ConnectGhtkStateData with _$ConnectGhtkStateData {
  const factory ConnectGhtkStateData({
    @Default(StatusType.init) StatusType status,
    @Default('') String error,
    @Default([]) List<LocationGHTK> locationsGHTK,
    // @Default([]) List<Transaction> transactions,

    LocationGHTK? locationGHTK,
  }) = _ConnectGhtkStateData;
}

@freezed
class ConnectGhtkState with _$ConnectGhtkState {
  const factory ConnectGhtkState.initial({ConnectGhtkStateData? data}) =
      Initial;
  const factory ConnectGhtkState.error({ConnectGhtkStateData? data}) = Error;
  const factory ConnectGhtkState.status({ConnectGhtkStateData? data}) = Status;
  const factory ConnectGhtkState.getLocations({ConnectGhtkStateData? data}) =
      GetLocationsGHTK;
}
