// ignore_for_file: curly_braces_in_flow_control_structures

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:di4l_pos/common/helpers.dart';
import 'package:di4l_pos/common/ui_helpers.dart';
import 'package:di4l_pos/enums/add_type.dart';
import 'package:di4l_pos/enums/status_type.dart';
import 'package:di4l_pos/get_it.dart';
import 'package:di4l_pos/models/variants/request/add_variantion_request.dart';
import 'package:di4l_pos/models/variants/response/variants_response.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:di4l_pos/repositories/data_repository.dart';
import 'package:get/get.dart';
part 'add_variantion_state.dart';
part 'add_variantion_cubit.freezed.dart';

class AddVariantionCubit extends Cubit<AddVariantionState> {
  final _dataRepository = getIt<DataRepository>();
  AddVariantionCubit()
      : super(AddVariantionState.initial(data: AddVariantionStateData()));

  Future<void> addVariantion({
    required String name,
  }) async {
    try {
      if (await checkEmpty(
            name,
            AddType.NEW,
            null,
          ) !=
          '') {
        emit(AddVariantionState.error(
            data: state.data!.copyWith(
                error: await checkEmpty(
                  name,
                  AddType.UPDATE,
                  null,
                ),
                status: StatusType.error)));
        await Future<void>.delayed(const Duration(seconds: 1));
        //emit(AddVariantionState.error(data: state.data!.copyWith(error: '')));
      } else {
        emit(AddVariantionState.status(
            data: state.data!
                .copyWith(status: StatusType.loading, error: 'Loading...')));
        final request =
            AddVariantRequest(name: name, values: variationValues());
        final response = await _dataRepository.addVariantion(request: request);
        if (response.success == 1) {
          await Future.delayed(
              const Duration(seconds: 1), () => navigator!.pop());
          emit(AddVariantionState.status(
              data: state.data!
                  .copyWith(status: StatusType.loaded, error: response.msg!)));
        }
      }
    } catch (error) {
      emit(AddVariantionState.status(
          data: state.data!.copyWith(
              status: StatusType.error, error: 'Something went wrong!')));
      Helpers.handleErrorApp(error: error, isShowDialog: true);
    } finally {
      UIHelpers.dismissLoading();
    }
  }

  Future<void> updateVariantion({
    required int id,
    required String name,
    List<VariantionValue>? editValues,
  }) async {
    try {
      if (await checkEmpty(name, AddType.UPDATE, editValues) != '') {
        emit(AddVariantionState.error(
            data: state.data!.copyWith(
                error: await checkEmpty(
                  name,
                  AddType.UPDATE,
                  editValues,
                ),
                status: StatusType.error)));
        await Future<void>.delayed(const Duration(seconds: 1));
        //emit(AddVariantionState.error(data: state.data!.copyWith(error: '')));
      } else {
        emit(AddVariantionState.status(
            data: state.data!
                .copyWith(status: StatusType.loading, error: 'Loading...')));
        List<String>? values = [];
        List<VariantionValue>? editList = [];
        for (var element in editValues!) {
          if (element.id == null) {
            values.add('${element.name}');
          } else {
            editList.add(VariantionValue(id: element.id, name: element.name));
          }
        }
        final request = AddVariantRequest(
          id: id,
          name: name,
          values: values.isNotEmpty ? values : variationValues(),
          editVariationValues: editList,
        );
        final response =
            await _dataRepository.updateVariantion(request: request, id: id);
        if (response.success == 1) {
          await Future.delayed(
              const Duration(seconds: 1), () => navigator!.pop());
          emit(AddVariantionState.status(
              data: state.data!
                  .copyWith(status: StatusType.loaded, error: response.msg!)));
        }
      }
    } catch (error) {
      emit(AddVariantionState.status(
          data: state.data!.copyWith(
              status: StatusType.error, error: 'Something went wrong!')));
      Helpers.handleErrorApp(error: error, isShowDialog: true);
    } finally {
      UIHelpers.dismissLoading();
    }
  }

  /// List data variation Values
  List<String> variationValues() {
    List<String> values = [];
    for (var i = 0; i < state.data!.valuesAdd.length; i++) {
      values.add(state.data!.valuesAdd[i].text);
    }
    return values;
  }

  /// Get data variation Values
  void getValueEdits(List<ValueVariant> values) {
    emit(AddVariantionState.getValuesEdit(
        data: state.data!.copyWith(valuesEdit: values)));
  }

  void addValue() {
    List<TextEditingController> controllers = [...state.data!.valuesAdd];
    controllers.add(TextEditingController());

    emit(AddVariantionState.getValuesAdd(
        data: state.data!.copyWith(valuesAdd: controllers)));
  }

  void isAddNewValue(bool value) {
    emit(AddVariantionState.isAddNewValue(
        data: state.data!.copyWith(isAddNewValue: value)));
  }

  void removeValue(int index) {
    final data = [...state.data!.valuesAdd];
    data.removeAt(index);
    emit(AddVariantionState.getValuesAdd(
        data: state.data!.copyWith(valuesAdd: data)));
  }

  Future<String> checkEmpty(
    String name,
    AddType? type,
    List<VariantionValue>? editValues,
  ) async {
    String result = '';
    if (name.isEmpty) {
      emit(AddVariantionState.error(
          data: state.data!.copyWith(error: ' Name is required')));
      return ' Name is required';
    } else {
      if (type == AddType.NEW)
        for (var element in state.data!.valuesAdd) {
          if (element.text.isEmpty) {
            result = "Value is required";
          }
        }
      if (type == AddType.UPDATE)
        for (var element in editValues!) {
          if (element.name!.isEmpty) {
            result = "Value is required";
          }
        }
    }

    return result;
  }
}
