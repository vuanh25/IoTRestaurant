import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:di4l_pos/common/helpers.dart';
import 'package:di4l_pos/common/ui_helpers.dart';
import 'package:di4l_pos/enums/status_type.dart';
import 'package:di4l_pos/get_it.dart';
import 'package:di4l_pos/models/branch/response/branch_response.dart';
import 'package:di4l_pos/repositories/data_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';
import 'package:tiengviet/tiengviet.dart';

part 'branch_state.dart';
part 'branch_cubit.freezed.dart';

class BranchCubit extends Cubit<BranchState> {
  /// MARK: - Initials;
  final _dataRepository = getIt<DataRepository>();

  BranchCubit() : super(const BranchState.initial(data: BranchStateData()));

  /// Get Branches
  Future<List<Branch>> getBranch() async {
    try {
      emit(BranchState.status(
          data: state.data?.copyWith(status: StatusType.loading)));
      final branchResponse = await _dataRepository.getBranch();
      emit(BranchState.getBranch(
          data: state.data?.copyWith(
              status: StatusType.loaded,
              branches: branchResponse.data ?? [],
              branchesOriginal: branchResponse.data ?? [])));
      return branchResponse.data ?? [];
    } catch (error) {
      emit(BranchState.status(
          data: state.data?.copyWith(status: StatusType.error)));
      Helpers.handleErrorApp(error: error);
      return [];
    } finally {
      UIHelpers.dismissLoading();
    }
  }

  void getOneBranch(Branch branch) {
    emit(BranchState.getOneBranch(data: state.data?.copyWith(branch: branch)));
  }

  void branchSelected(Branch branch) {
    emit(BranchState.branchSelected(
        data: state.data?.copyWith(branchSelected: branch)));
  }

  Future<void> deleteBrand({required int id}) async {
    UIHelpers.showCustomDialog(
      context: Get.context!,
      message: 'are_you_sure'.tr,
      onComfirm: () async {
        UIHelpers.showLoading();
        try {
          await _dataRepository.deleteBrand(id: id);
          await Future.delayed(const Duration(microseconds: 200), () {
            navigator!.pop();
            getBranch();
          });
        } catch (error) {
          debugPrint('Delete Branch Error: $error');
          Helpers.handleErrorApp(error: error);
        } finally {
          UIHelpers.dismissLoading();
        }
      },
      isShowClose: true,
    );
  }

  Future<void> searchBranch({required String searchText}) async {
    emit(BranchState.status(
        data: state.data!.copyWith(
      status: StatusType.loading,
    )));
    List<Branch> branchOriginal = [...state.data!.branchesOriginal];
    if (searchText.isEmpty) {
      emit(BranchState.getBranch(
          data: state.data?.copyWith(
              branches: branchOriginal, status: StatusType.loaded)));
    } else {
      final searchTextVN = TiengViet.parse(searchText.toLowerCase());
      final branch = branchOriginal
          .where((Branch element) => TiengViet.parse(element.name!)
              .toLowerCase()
              .contains(searchTextVN))
          .toList();
      emit(BranchState.getBranch(
          data: state.data
              ?.copyWith(branches: branch, status: StatusType.loaded)));
    }
  }
}
