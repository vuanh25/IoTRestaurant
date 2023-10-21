part of 'get_link_cubit.dart';

@freezed
class GetLinkStateData with _$GetLinkStateData {
  const factory GetLinkStateData({
    @Default(StatusType.init) StatusType status,
    @Default([]) List<Link> links,
    @Default('') String html,

    // @Default([]) List<Transaction> transactions,

    Link? link,
  }) = _GetLinkStateData;
}

@freezed
class GetLinkState with _$GetLinkState {
  const factory GetLinkState.initial({GetLinkStateData? data}) = Initial;
  const factory GetLinkState.status({GetLinkStateData? data}) = Status;
  const factory GetLinkState.getLinks({GetLinkStateData? data}) = GetLinks;
  const factory GetLinkState.getLink({GetLinkStateData? data}) = GetLink;
}
