part of 'add_branch_cubit.dart';

@freezed
class AddBranchStateData with _$AddBranchStateData {
  const factory AddBranchStateData({
    @Default('') String error,
    @Default(StatusType.init) StatusType status,
  }) = _AddBranchStateData;
}

@freezed
class AddBranchState with _$AddBranchState {
  const factory AddBranchState.initial({AddBranchStateData? data}) = Initial;
  const factory AddBranchState.error({AddBranchStateData? data}) = Error;
  const factory AddBranchState.status({AddBranchStateData? data}) = Status;
}
