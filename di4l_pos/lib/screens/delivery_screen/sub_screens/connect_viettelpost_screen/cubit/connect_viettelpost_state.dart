part of 'connect_viettelpost_cubit.dart';

@freezed
class ConnectViettelpostStateData with _$ConnectViettelpostStateData {
  const factory ConnectViettelpostStateData({
    @Default(StatusType.init) StatusType status,
    @Default('') String error,
    @Default([]) List<LocationViettelPost> locationsViettelPost,
    @Default('') String token,

    // @Default([]) List<Transaction> transactions,

    LocationViettelPost? locationViettelPost,
  }) = _ConnectViettelpostStateData;
}

@freezed
class ConnectViettelpostState with _$ConnectViettelpostState {
  const factory ConnectViettelpostState.initial(
      {ConnectViettelpostStateData? data}) = Initial;
  const factory ConnectViettelpostState.error(
      {ConnectViettelpostStateData? data}) = Error;
  const factory ConnectViettelpostState.status(
      {ConnectViettelpostStateData? data}) = Status;
  const factory ConnectViettelpostState.getLocations(
      {ConnectViettelpostStateData? data}) = GetLocationsViettelPost;
}
