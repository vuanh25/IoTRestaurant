// ignore_for_file: no_leading_underscores_for_local_identifiers

// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:di4l_pos/enums/status_type.dart';
import 'package:di4l_pos/get_it.dart';
import 'package:di4l_pos/models/customer-group/request/add_customer_group_request.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:di4l_pos/repositories/data_repository.dart';
import 'package:get/get.dart';

part 'add_customer_group_state.dart';
part 'add_customer_group_cubit.freezed.dart';

class AddCustomerGroupCubit extends Cubit<AddCustomerGroupState> {
  final _dataRepository = getIt<DataRepository>();
  AddCustomerGroupCubit()
      : super(const AddCustomerGroupState.initial(data: AddCustomerGroupStateData()));

  Future<void> addCustomerGroup({
    required String name,
    required String amount,
    int? sellingPriceGroupId,
  }) async {
    try {
      if (name.isEmpty) {
        emit(AddCustomerGroupState.error(
            data: state.data!.copyWith(error: 'Name is Required')));
        await Future<void>.delayed(const Duration(seconds: 1));
        emit(
            AddCustomerGroupState.error(data: state.data!.copyWith(error: '')));
      } else {
        emit(AddCustomerGroupState.status(
            data: state.data!
                .copyWith(status: StatusType.loading, error: 'Loading...')));
        final _request = AddCustomerGroupRequest(
          name: name,
          priceCalculationType: state.data!.type == 'Percentage'
              ? 'percentage'
              : 'selling_price_group',
          amount: amount,
          sellingPriceGroupId: sellingPriceGroupId,
        );
        final _response =
            await _dataRepository.addCustomerGroup(request: _request);
        if (_response.data != null) {
          await Future.delayed(const Duration(seconds: 1), () => navigator!.pop());
          emit(AddCustomerGroupState.status(
              data: state.data!.copyWith(
                  status: StatusType.loaded,
                  error: 'add_customer_group_success'.tr)));
        }
      }
    } catch (error) {
      emit(AddCustomerGroupState.status(
          data: state.data!.copyWith(
              status: StatusType.error, error: 'Something went wrong!')));
      debugPrint('Add Customer Group Error: $error');
    } finally {
      Future.delayed(const Duration(seconds: 2), () => navigator!.pop());
    }
  }

  Future<void> updateCustomerGroup({
    required int customerGroupId,
    required String name,
    required String amount,
    int? sellingPriceGroupId,
  }) async {
    try {
      if (name.isEmpty) {
        emit(AddCustomerGroupState.error(
            data: state.data!.copyWith(error: 'Name is Required')));
        await Future<void>.delayed(const Duration(seconds: 1));
        emit(
            AddCustomerGroupState.error(data: state.data!.copyWith(error: '')));
      } else {
        emit(AddCustomerGroupState.status(
            data: state.data!
                .copyWith(status: StatusType.loading, error: 'Loading...')));
        final _request = AddCustomerGroupRequest(
          name: name,
          priceCalculationType: state.data!.type == 'Percentage'
              ? 'percentage'
              : 'selling_price_group',
          amount: amount,
          sellingPriceGroupId: sellingPriceGroupId,
        );
        final _response = await _dataRepository.updateCustomerGroup(
            request: _request, id: customerGroupId);
        if (_response.data != null) {
          await Future.delayed(const Duration(seconds: 1), () => navigator!.pop());
          emit(AddCustomerGroupState.status(
              data: state.data!.copyWith(
                  status: StatusType.loaded,
                  error: 'update_customer_group_success'.tr)));
        }
      }
    } catch (error) {
      emit(AddCustomerGroupState.status(
          data: state.data!.copyWith(
              status: StatusType.error, error: 'Something went wrong!')));
      debugPrint('Update Customer Group Error: $error');
    } finally {
      Future.delayed(const Duration(seconds: 2), () => navigator!.pop());
    }
  }

  void getType(String type) {
    emit(AddCustomerGroupState.type(data: state.data!.copyWith(type: type)));
  }
}
