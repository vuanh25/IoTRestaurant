part of 'affiliate_marketing_cubit.dart';

@freezed
class AffiliateMarketingStateData with _$AffiliateMarketingStateData {
  const factory AffiliateMarketingStateData({
    @Default(StatusType.init) StatusType status,
    @Default(StatusType.init) StatusType referralUsersStatus,
    @Default(StatusType.init) StatusType withdrawRequestsStatus,
    @Default([]) List<AffiliateUser> affiliateUsers,
    @Default([]) List<AffiliateUser> affiliateUsersOriginal,
    @Default([]) List<AffiliateReferralUser> affiliateReferralUsers,
    @Default([]) List<AffiliateReferralUser> affiliateReferralUsersOriginal,
    @Default([]) List<AffiliateWithdrawRequest> affiliatewithdrawRequests,
    @Default([]) List<AffiliateWithdrawRequest> affiliatewithdrawRequestsOriginal,
    @Default([]) List<AffiliatePayment> affiliatePayments,
    @Default([]) List<AffiliatePayment> affiliatePaymentsOriginal,
  }) = _AffiliateMarketingStateData;
}

@freezed
class AffiliateMarketingState with _$AffiliateMarketingState {
  const factory AffiliateMarketingState.initial({AffiliateMarketingStateData? data}) = Initial;
  const factory AffiliateMarketingState.status({AffiliateMarketingStateData? data}) = Status;
  const factory AffiliateMarketingState.getAffiliateUsers({AffiliateMarketingStateData? data}) = GetAffiliateUsers;
  const factory AffiliateMarketingState.getAffiliateReferralUsers({AffiliateMarketingStateData? data}) = GetAffiliateReferralUsers;
  const factory AffiliateMarketingState.getAffiliateWithdrawRequest({AffiliateMarketingStateData? data}) = GetAffiliateWithdrawRequest;
  const factory AffiliateMarketingState.getAffiliatePayments({AffiliateMarketingStateData? data}) = GetAffiliatePayments;
}
