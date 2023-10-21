// ignore_for_file: no_leading_underscores_for_local_identifiers, depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:di4l_pos/common/helpers.dart';
import 'package:di4l_pos/common/ui_helpers.dart';
import 'package:di4l_pos/enums/status_type.dart';
import 'package:di4l_pos/get_it.dart';
import 'package:di4l_pos/models/customer-group/response/customer_group_response.dart';
import 'package:di4l_pos/repositories/data_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';
import 'package:tiengviet/tiengviet.dart';

part 'customer_group_state.dart';
part 'customer_group_cubit.freezed.dart';

class CustomerGroupCubit extends Cubit<CustomerGroupState> {
  /// MARK: - Initials;
  final _dataRepository = getIt<DataRepository>();

  CustomerGroupCubit()
      : super(const CustomerGroupState.initial(data: CustomerGroupStateData()));

  /// Get Branches
  Future<void> getCustomerGroups() async {
    try {
      emit(CustomerGroupState.getCustomerGroups(
          data: state.data?.copyWith(status: StatusType.loading)));
      final _customerGroups = await _dataRepository.getCustomerGroups();
      emit(CustomerGroupState.getCustomerGroups(
          data: state.data?.copyWith(
        status: StatusType.loaded,
        customerGroups: _customerGroups.data ?? [],
        customerGroupsOriginal: _customerGroups.data ?? [],
      )));
    } catch (error) {
      emit(CustomerGroupState.getCustomerGroups(
          data: state.data?.copyWith(status: StatusType.error)));
      Helpers.handleErrorApp(error: error);
    } finally {
      UIHelpers.dismissLoading();
    }
  }

  Future<void> getCustomerGroupById({required int id}) async {
    try {
      final _response = await _dataRepository.getCustomerGroup(id: id);
      emit(CustomerGroupState.getCustomerGroup(
          data: state.data?.copyWith(customerGroup: _response.data!.first)));
    } catch (error) {
      emit(CustomerGroupState.status(
          data: state.data?.copyWith(status: StatusType.error)));
      Helpers.handleErrorApp(error: error);
    } finally {
      UIHelpers.dismissLoading();
    }
  }

  void getCustomerGroup(CustomerGroupModel? customerGroupModel) {
    emit(CustomerGroupState.getCustomerGroup(
        data: state.data?.copyWith(customerGroup: customerGroupModel)));
  }

  ///Search customer Group
  Future<void> searchCustomerGroup({required String searchText}) async {
    List<CustomerGroupModel> _customerGroupsOriginal = [
      ...state.data!.customerGroupsOriginal!
    ];
    emit(CustomerGroupState.status(
        data: state.data?.copyWith(status: StatusType.loading)));
    if (searchText.isEmpty) {
      emit(CustomerGroupState.getCustomerGroups(
          data: state.data?.copyWith(
              status: StatusType.loaded,
              customerGroups: _customerGroupsOriginal)));
    } else {
      final searchTextVN = TiengViet.parse(searchText.toLowerCase());
      final _customerGroups = _customerGroupsOriginal
          .where((CustomerGroupModel element) =>
              element.name!.toLowerCase().contains(searchTextVN))
          .toList();
      emit(CustomerGroupState.getCustomerGroups(
          data: state.data?.copyWith(
              status: StatusType.loaded, customerGroups: _customerGroups)));
    }
  }

  Future<void> delete(int id) async => UIHelpers.showCustomDialog(
        context: Get.context!,
        message: 'message_confirm_delete_customer_group'.tr,
        onComfirm: () async {
          try {
            await _dataRepository.deleteCustomerGroup(id: id);
            getCustomerGroups();
            await Future.delayed(
                const Duration(microseconds: 500), () => navigator!.pop());
          } catch (error) {
            debugPrint('Delete Customer Group Error: $error');
          } finally {
            Future.delayed(const Duration(seconds: 2), () => navigator!.pop());
          }
        },
        isShowClose: true,
      );
}
