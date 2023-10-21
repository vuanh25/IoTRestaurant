import 'package:di4l_pos/models/delete_response/delete_response.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:di4l_pos/common/helpers.dart';
import 'package:di4l_pos/common/ui_helpers.dart';
import 'package:di4l_pos/enums/status_type.dart';
import 'package:di4l_pos/get_it.dart';
import 'package:di4l_pos/models/unit/response/unit_response.dart';
import 'package:di4l_pos/repositories/data_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';
import 'package:tiengviet/tiengviet.dart';

part 'unit_state.dart';
part 'unit_cubit.freezed.dart';

class UnitCubit extends Cubit<UnitState> {
  /// MARK: - Initials;
  final _dataRepository = getIt<DataRepository>();

  UnitCubit() : super(const UnitState.initial(data: UnitStateData()));

  /// Get Units
  Future<List<Unit>> getUnits() async {
    try {
      emit(UnitState.status(
          data: state.data!.copyWith(status: StatusType.loading)));
      final unitResponse = await _dataRepository.getUnits();
      emit(UnitState.getUnits(
          data: state.data!.copyWith(
        status: StatusType.loaded,
        units: unitResponse.data ?? [],
        unitOriginal: unitResponse.data ?? [],
      )));
      return unitResponse.data ?? [];
    } catch (error) {
      emit(UnitState.status(
          data: state.data!.copyWith(status: StatusType.error)));

      Helpers.handleErrorApp(error: error);
      return [];
    } finally {
      UIHelpers.dismissLoading();
    }
  }

  void getUnit(Unit? unit) {
    emit(UnitState.getUnit(data: state.data?.copyWith(unit: unit)));
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
            UIHelpers.showDialogDefaultBloc(
                status: StatusType.error, text: a.data!.message!);
          } else {
            // navigator!.pop();
            // navigator!.pop();
            
            UIHelpers.showDialogDefaultBloc(
                status: StatusType.loaded, text: a.data!.message!);
            await Future.delayed(const Duration(microseconds: 200), () {});
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

  void setUnitSelect(Unit? unit) {
    emit(UnitState.setUnitSelect(data: state.data?.copyWith(unitSelect: unit)));
  }

  Future<void> searchUnit({required String searchText}) async {
    emit(UnitState.status(
        data: state.data!.copyWith(status: StatusType.loading)));
    List<Unit> unitOriginal = [...state.data!.unitOriginal];
    if (searchText.isEmpty) {
      emit(UnitState.getUnits(
          data: state.data
              ?.copyWith(units: unitOriginal, status: StatusType.loaded)));
    } else {
      final searchTextVN = TiengViet.parse(searchText.toLowerCase());
      final units = unitOriginal
          .where((Unit element) => TiengViet.parse(element.actualName!)
              .toLowerCase()
              .contains(searchTextVN))
          .toList();
      emit(UnitState.getUnits(
          data: state.data?.copyWith(units: units, status: StatusType.loaded)));
    }
  }
}
