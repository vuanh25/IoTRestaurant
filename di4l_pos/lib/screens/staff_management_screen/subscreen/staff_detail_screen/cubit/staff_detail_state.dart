part of 'staff_detail_cubit.dart';

@freezed
class StaffDetailStateData with _$StaffDetailStateData {
  const factory StaffDetailStateData({
    @Default(StatusType.init) StatusType status,
    StaffDetailResponse? staffDetail,
    BusinessLocationResponse? businesslocations,
    Map<String, dynamic>? staffRoles,
    StaffCreateResponse? staffCreateInfomation,
  }) = _StaffDetailStateData;
}

@freezed
class StaffDetailState with _$StaffDetailState {
  const factory StaffDetailState.initial({StaffDetailStateData? data}) = Initial;
  const factory StaffDetailState.status({StaffDetailStateData? data}) = Status;
  const factory StaffDetailState.getStaffDetail({StaffDetailStateData? data}) = GetStaffDetail;
  const factory StaffDetailState.getBusinessLocation({StaffDetailStateData? data}) = GetBusinessLocation;
  const factory StaffDetailState.getStaffRoles({StaffDetailStateData? data}) = GetStaffRoles;
  const factory StaffDetailState.getStaffInformation({StaffDetailStateData? data}) = GetStaffCreateInformation;
}
