import 'package:bloc/bloc.dart';
import 'package:di4l_pos/enums/status_type.dart';
import 'package:di4l_pos/get_it.dart';
import 'package:di4l_pos/models/unit/add_unit_request.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:di4l_pos/repositories/data_repository.dart';
import 'package:get/get.dart';

import '../../../../common/helpers.dart';
import '../../../../common/ui_helpers.dart';
import '../../../../models/delete_response/delete_response.dart';
part 'add_unit_state.dart';
part 'add_unit_cubit.freezed.dart';

class AddUnitCubit extends Cubit<AddUnitState> {
  final _dataRepository = getIt<DataRepository>();
  AddUnitCubit() : super(const AddUnitState.initial(data: AddUnitStateData()));

  Future<void> addUnit({
    required String actualName,
    required String shortName,
    required int? baseUnitId,
    required dynamic baseUnitMultiplier,
  }) async {
    try {
      String check = await checkEmptyUnit(
          actualName, shortName, state.data!.baseUnit, baseUnitId);
      if (check.isNotEmpty) {
        emit(AddUnitState.error(data: state.data!.copyWith(error: check)));
        await Future<void>.delayed(const Duration(seconds: 1));
        emit(AddUnitState.error(data: state.data!.copyWith(error: '')));
      } else {
        emit(AddUnitState.status(
            data: state.data!
                .copyWith(status: StatusType.loading, error: 'Loading...')));
        final request = AddUnitRequest(
          actualName: actualName,
          shortName: shortName,
          allowDecimal: state.data!.allowDecimal == true ? 1 : 0,
          defineBaseUnit: state.data!.baseUnit,
          baseUnitId: baseUnitId,
          baseUnitMultiplier: baseUnitMultiplier,
        );
        final response = await _dataRepository.addUnit(request: request);
        if (response.data != null) {
          await Future.delayed(
              const Duration(seconds: 1), () => navigator!.pop());
          emit(AddUnitState.status(
              data: state.data!.copyWith(
                  status: StatusType.loaded, error: 'add_unit_success'.tr)));
        }
      }
    } catch (error) {
      emit(AddUnitState.status(
          data: state.data!.copyWith(
              status: StatusType.error, error: 'Something went wrong!')));
    } finally {}
  }

  Future<void> deleteUnit({required int id, context}) async {
    UIHelpers.showCustomDialog(
      context: Get.context!,
      message: 'message_confirm_delete_unit'.tr,
      onComfirm: () async {
        UIHelpers.showLoading();
        try {
          DeteleResponse a = await _dataRepository.deleteUnit(id: id);
          print(a.data!.success);
          if (!a.data!.success!) {
            navigator!.pop();
            emit(AddUnitState.status(
                data: state.data!.copyWith(
                    status: StatusType.error, error: a.data!.message!)));
          } else {
            // navigator!.pop();
            // navigator!.pop();

            await Future.delayed(const Duration(microseconds: 200), () {
              navigator!.pop();
            });
            emit(AddUnitState.status(
                data: state.data!.copyWith(
                    status: StatusType.loaded,
                    error: 'detele_unit_success'.tr)));
          }
        } catch (error) {
          debugPrint('Delete Units Error: $error');
          Helpers.handleErrorApp(error: error);
        } finally {
          UIHelpers.dismissLoading();
        }
      },
      isShowClose: true,
    );
  }

  Future<void> updateUnit({
    required int unitId,
    required String actualName,
    required String shortName,
    required int? baseUnitId,
    required dynamic baseUnitMultiplier,
  }) async {
    try {
      String check = await checkEmptyUnit(
          actualName, shortName, state.data!.baseUnit, baseUnitId);
      if (check.isNotEmpty) {
        emit(AddUnitState.error(data: state.data!.copyWith(error: check)));
        await Future<void>.delayed(const Duration(seconds: 1));
        emit(AddUnitState.error(data: state.data!.copyWith(error: '')));
      } else {
        emit(AddUnitState.status(
            data: state.data!
                .copyWith(status: StatusType.loading, error: 'Loading...')));
        final request = AddUnitRequest(
          actualName: actualName,
          shortName: shortName,
          allowDecimal: state.data!.allowDecimal == true ? 1 : 0,
          defineBaseUnit: state.data!.baseUnit,
          baseUnitId: baseUnitId,
          baseUnitMultiplier: baseUnitMultiplier,
        );
        final response =
            await _dataRepository.updateUnit(request: request, id: unitId);
        if (response.data != null) {
          await Future.delayed(
              const Duration(seconds: 1), () => navigator!.pop());
          emit(AddUnitState.status(
              data: state.data!.copyWith(
                  status: StatusType.loaded, error: 'update_unit_success'.tr)));
          await Future.delayed(
              const Duration(seconds: 1), () => navigator!.pop());
        }
      }
    } catch (error) {
      emit(AddUnitState.status(
          data: state.data!.copyWith(
              status: StatusType.error, error: 'Something went wrong!')));
    } finally {
      // Future.delayed(Duration(seconds: 2), () => navigator!.pop());
    }
  }

  Future<String> checkEmptyUnit(
    String actualName,
    String shortName,
    bool defineBaseUnit,
    int? baseUnitId,
  ) async {
    if (actualName.isEmpty) {
      return 'Name is Empty';
    } else if (shortName.isEmpty) {
      return 'ShortName is Empty';
    } else if (defineBaseUnit == true) {
      if (baseUnitId == null) {
        return 'Please Selected Unit';
      }
      return '';
    } else {
      return '';
    }
  }

  void changeBaseUnit(bool value) {
    emit(AddUnitState.baseUnit(data: state.data!.copyWith(baseUnit: value)));
  }

  void changedAllowDecimal(bool value) {
    emit(AddUnitState.allowDecimal(
        data: state.data!.copyWith(allowDecimal: value)));
  }
}
