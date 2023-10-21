part of 'connect_ghn_cubit.dart';

@freezed
class ConnectGhnStateData with _$ConnectGhnStateData {
  const factory ConnectGhnStateData({
    @Default(StatusType.init) StatusType status,
    @Default('') String error,
    @Default([]) List<Shop> locationsGhn,
    // @Default([]) List<Transaction> transactions,

    Shop? locationGHN,
  }) = _ConnectGhnStateData;
}

@freezed
class ConnectGhnState with _$ConnectGhnState {
  const factory ConnectGhnState.initial({ConnectGhnStateData? data}) = Initial;
  const factory ConnectGhnState.error({ConnectGhnStateData? data}) = Error;
  const factory ConnectGhnState.status({ConnectGhnStateData? data}) = Status;
  const factory ConnectGhnState.getLocationsGhn({ConnectGhnStateData? data}) =
      GetLocationsGhn;
}
