part of 'branch_cubit.dart';

@freezed
class BranchStateData with _$BranchStateData {
  const factory BranchStateData({
    @Default(StatusType.init) StatusType status,
    @Default([]) List<Branch> branches,
    Branch? branch,
    Branch? branchSelected,
    @Default([]) List<Branch> branchesOriginal,
  }) = _BranchStateData;
}

@freezed
class BranchState with _$BranchState {
  const factory BranchState.initial({BranchStateData? data}) = Initial;
  const factory BranchState.status({BranchStateData? data}) = Status;
  const factory BranchState.getBranch({BranchStateData? data}) = GetBranch;
  const factory BranchState.getOneBranch({BranchStateData? data}) =
      GetOneBranch;
  const factory BranchState.branchSelected({BranchStateData? data}) =
      BranchSelected;
}
