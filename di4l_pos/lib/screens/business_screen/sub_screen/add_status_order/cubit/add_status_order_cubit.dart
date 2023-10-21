import 'package:bloc/bloc.dart';
import 'package:di4l_pos/enums/status_type.dart';
import 'package:di4l_pos/get_it.dart';
import 'package:di4l_pos/models/add_status_order/request/add_status_order_request.dart';
import 'package:di4l_pos/repositories/data_repository.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';

part 'add_status_order_state.dart';
part 'add_status_order_cubit.freezed.dart';

class AddStatusOrderCubit extends Cubit<AddStatusOrderState> {
  final _dataRepository = getIt<DataRepository>();

  AddStatusOrderCubit()
      : super(
            const AddStatusOrderState.initial(data: AddStatusOrderStateData()));

  Future<void> addStatusOrder({
    required String value,
  }) async {
    try {
      if (value.isEmpty) {
        emit(AddStatusOrderState.error(
            data: state.data!.copyWith(error: 'Value is Required')));
        await Future<void>.delayed(const Duration(seconds: 1));
        emit(AddStatusOrderState.error(data: state.data!.copyWith(error: '')));
      } else {
        emit(AddStatusOrderState.status(
            data: state.data!
                .copyWith(status: StatusType.loading, error: 'Loading...')));
        final _request = AddStatusOrderRequest(value: value);
        final _response =
            await _dataRepository.addStatusOrder(request: _request);
        if (_response.data != null) {
          await Future.delayed(
              const Duration(seconds: 1), () => navigator!.pop());
          emit(AddStatusOrderState.status(
              data: state.data!.copyWith(
                  status: StatusType.loaded,
                  error: 'add_status_order_success'.tr)));
        }
      }
    } catch (error) {
      emit(AddStatusOrderState.status(
          data: state.data!.copyWith(
              status: StatusType.error, error: 'Something went wrong!')));
      debugPrint('Add Status Order: $error');
    } finally {
      Future.delayed(const Duration(seconds: 2), () => navigator!.pop());
    }
  }

  Future<void> updateStatusOrder(
      {required String value, required int id}) async {
    try {
      if (value.isEmpty) {
        emit(AddStatusOrderState.error(
            data: state.data!.copyWith(error: 'Value is Required')));
        await Future<void>.delayed(const Duration(seconds: 1));
        emit(AddStatusOrderState.error(data: state.data!.copyWith(error: '')));
      } else {
        emit(AddStatusOrderState.status(
            data: state.data!
                .copyWith(status: StatusType.loading, error: 'Loading...')));
        final _request = AddStatusOrderRequest(value: value);
        final _response =
            await _dataRepository.updateStatusOrder(request: _request, id: id);
        if (_response.data != null) {
          await Future.delayed(
              const Duration(seconds: 1), () => navigator!.pop());
          emit(AddStatusOrderState.status(
              data: state.data!.copyWith(
                  status: StatusType.loaded,
                  error: 'update_status_order_success'.tr)));
        }
      }
    } catch (error) {
      emit(AddStatusOrderState.status(
          data: state.data!.copyWith(
              status: StatusType.error, error: 'Something went wrong!')));
      debugPrint('Update Status Order: $error');
    } finally {
      Future.delayed(const Duration(seconds: 2), () => navigator!.pop());
    }
  }
}
