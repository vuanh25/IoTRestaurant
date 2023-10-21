import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:di4l_pos/common/helpers.dart';
import 'package:di4l_pos/enums/status_type.dart';
import 'package:di4l_pos/get_it.dart';
import 'package:di4l_pos/models/branch/add_branch_request.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:di4l_pos/repositories/data_repository.dart';
import 'package:get/get.dart';

import '../../../../common/ui_helpers.dart';
part 'add_branch_state.dart';
part 'add_branch_cubit.freezed.dart';

class AddBranchCubit extends Cubit<AddBranchState> {
  final _dataRepository = getIt<DataRepository>();
  AddBranchCubit()
      : super(const AddBranchState.initial(data: AddBranchStateData()));

  ///
  Future<void> addBranch(
      {required String name, required String description}) async {
    try {
      if (name.isEmpty) {
        emit(AddBranchState.error(
            data: state.data!.copyWith(error: 'Name is Required')));
        await Future<void>.delayed(const Duration(seconds: 1));
        //emit(AddBranchState.error(data: state.data!.copyWith(error: '')));
      } else {
        emit(AddBranchState.status(
            data: state.data!.copyWith(status: StatusType.loading)));
        final request = AddBranchRequest(
          name: name,
          description: description,
        );
        final response = await _dataRepository.addBranch(request: request);
        if (response.data != null) {
          //await Future.delayed(Duration(seconds: 1), () => navigator!.pop());
          emit(AddBranchState.status(
              data: state.data!.copyWith(
                  status: StatusType.loaded, error: 'add_branch_success'.tr)));
        }
      }
    } catch (error) {
      emit(AddBranchState.status(
          data: state.data!.copyWith(
              status: StatusType.error, error: 'Something went wrong!')));
      Helpers.handleErrorApp(error: error, isShowDialog: true);
    } finally {
      //Future.delayed(Duration(seconds: 2), () => navigator!.pop());
    }
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
            emit(AddBranchState.status(
                data: state.data!.copyWith(
                    status: StatusType.loaded,
                    error: 'detle_branch_success'.tr)));
          });
        } catch (error) {
          debugPrint('Delete Branch Error: $error');
          emit(AddBranchState.status(
              data: state.data!.copyWith(
                  status: StatusType.error,
                  error: 'Something went wrong!'.tr)));
        } finally {
          UIHelpers.dismissLoading();
        }
      },
      isShowClose: true,
    );
  }

  Future<void> updateBranch(
      {required int brandId,
      required String name,
      required String description}) async {
    try {
      if (name.isEmpty) {
        emit(AddBranchState.error(
            data: state.data!.copyWith(error: 'Name is Required')));
        await Future<void>.delayed(const Duration(seconds: 1));
        emit(AddBranchState.error(data: state.data!.copyWith(error: '')));
      } else {
        emit(AddBranchState.status(
            data: state.data!
                .copyWith(status: StatusType.loading, error: 'Loading...')));
        final request = AddBranchRequest(
          name: name,
          description: description,
        );
        final response =
            await _dataRepository.updateBranch(request: request, id: brandId);
        if (response.data != null) {
          await Future.delayed(
              const Duration(seconds: 1), () => navigator!.pop());
          emit(AddBranchState.status(
              data: state.data!.copyWith(
                  status: StatusType.loaded,
                  error: 'update_branch_success'.tr)));
        }
      }
    } catch (error) {
      emit(AddBranchState.status(
          data: state.data!.copyWith(
              status: StatusType.error, error: 'Something went wrong!')));
      Helpers.handleErrorApp(error: error, isShowDialog: true);
    } finally {
      Future.delayed(const Duration(seconds: 2), () => navigator!.pop());
    }
  }
}
