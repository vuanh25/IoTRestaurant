part of 'staff_management_cubit.dart';

@freezed
class StaffManagementStateData with _$StaffManagementStateData {
  const factory StaffManagementStateData({
    @Default(StatusType.init) StatusType status,
    @Default([]) List<Staff> staffs,
    @Default([]) List<Staff> staffsOriginal,
    StaffDetailResponse? staffDetail,
  }) = _StaffManagementStateData;
}

@freezed
class StaffManagementState with _$StaffManagementState {
  const factory StaffManagementState.initial({StaffManagementStateData? data}) = Initial;
  const factory StaffManagementState.status({StaffManagementStateData? data}) = Status;
  const factory StaffManagementState.getStaffs({StaffManagementStateData? data}) = GetStaffs;
  const factory StaffManagementState.getStaffDetail({StaffManagementStateData? data}) = GetStaffDetail;
}
