// ignore_for_file: no_leading_underscores_for_local_identifiers, depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:di4l_pos/common/helpers.dart';
import 'package:di4l_pos/common/ui_helpers.dart';
import 'package:di4l_pos/enums/status_type.dart';
import 'package:di4l_pos/get_it.dart';
import 'package:di4l_pos/models/contacts/request/get_contacts_request.dart';
import 'package:di4l_pos/models/contacts/response/contacts_response.dart';
import 'package:di4l_pos/models/pagination/response/meta.dart';
import 'package:di4l_pos/models/sell/response/sell_response.dart';
import 'package:di4l_pos/repositories/data_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';
import 'package:tiengviet/tiengviet.dart';

part 'customers_state.dart';
part 'customers_cubit.freezed.dart';

class CustomersCubit extends Cubit<CustomersState> {
  /// MARK: - Initials;
  final _dataRepository = getIt<DataRepository>();

  CustomersCubit()
      : super(const CustomersState.initial(data: CustomersStateData()));

  /// Get Contacts
  ///
  ///
  Future<void> loadContact() async {
    int page = 1;
    try {
      emit(CustomersState.status(
          data: state.data?.copyWith(
        status: StatusType.loading,
      )));
      final _response =
          await _dataRepository.getContacts(type: 'customer', page: page);
      emit(CustomersState.getCustomers(
          data: state.data?.copyWith(
              status: StatusType.loaded,
              page: _response.meta!.currentPage,
              customers: _response.data ?? [],
              customersOriginal: _response.data ?? [])));
    } catch (error) {
      emit(CustomersState.status(
          data: state.data?.copyWith(status: StatusType.error)));
      Helpers.handleErrorApp(error: error);
    } finally {
      UIHelpers.dismissLoading();
    }
  }

  Future<void> getContacts() async {
    List<ContactModel> _customers = [...state.data!.customers];
    int page = state.data!.page! + 1;
    try {
      emit(CustomersState.status(
          data: state.data?.copyWith(
        status: StatusType.loading,
      )));
      final _response =
          await _dataRepository.getContacts(type: 'customer', page: page);
      emit(CustomersState.getCustomers(
          data: state.data?.copyWith(
              status: StatusType.loaded,
              page: _response.meta!.currentPage,
              customers: _response.data ?? [],
              customersOriginal: _response.data ?? [])));
      emit(CustomersState.status(
          data: state.data?.copyWith(status: StatusType.loading)));
      _customers.addAll(state.data!.customers);
      emit(CustomersState.getCustomers(
          data: state.data?.copyWith(
              status: StatusType.loaded,
              customers: _customers,
              customersOriginal: _customers)));
    } catch (error) {
      emit(CustomersState.status(
          data: state.data?.copyWith(status: StatusType.error)));
      Helpers.handleErrorApp(error: error);
    } finally {
      UIHelpers.dismissLoading();
    }
  }

  Future<List<ContactModel>> getAllContacts() async {
    List<ContactModel> _customers = [];

    final _response =
        await _dataRepository.getAllContacts(type: 'customer', perPage: 1000);
    _response.meta!.perPage = 1000;
    _customers = [..._response.data!];

    return _customers;
  }

  Future<void> getOrdersById(
      {required int id, String? startDate, String? endDate}) async {
    try {
      final _response = await _dataRepository.getSellById(
          contactId: id, startDate: startDate, endDate: endDate);
      emit(CustomersState.getOrdersById(
          data: state.data?.copyWith(orders: _response.data ?? [])));
    } catch (error) {
      Helpers.handleErrorApp(error: error);
    }
  }

  // Future<void> getTransactionContactByStatus() async {
  //   try {
  //     emit(CustomersState.transactions(
  //         data: state.data?.copyWith(status: StatusType.loading)));
  //     final _response =
  //         await _dataRepository.transactionContactByStatus(status: "pending");
  //     emit(CustomersState.transactions(
  //         data: state.data?.copyWith(
  //             status: StatusType.loaded, transactions: _response.data ?? [])));
  //   } catch (error) {
  //     Helpers.handleErrorApp(error: error);
  //   }
  // }

  // Future<void> getTransactionContactByPaymentStatus() async {
  //   try {
  //     emit(CustomersState.transactions(
  //         data: state.data?.copyWith(status: StatusType.loading)));
  //     final _response = await _dataRepository.transactionContactByPaymentStatus(
  //         status: "due");
  //     emit(CustomersState.transactions(
  //         data: state.data?.copyWith(
  //             status: StatusType.loaded, transactions: _response.data ?? [])));
  //   } catch (error) {
  //     Helpers.handleErrorApp(error: error);
  //   }
  // }

  /// Refresh List Contact
  Future<void> refreshContacts({ContactModel? contactModel}) async {
    List<ContactModel> _contacts = [...state.data!.customers];
    final _index =
        _contacts.indexWhere((element) => element.id == contactModel?.id);
    if (_index != -1) {
      _contacts[_index] = contactModel!;
      emit(CustomersState.getCustomers(
          data: state.data?.copyWith(customers: _contacts)));
    }
  }

  void getCustomer(ContactModel? contactModel) {
    emit(CustomersState.getCustomer(
        data: state.data?.copyWith(contactModel: contactModel)));
  }

  ///Search Supplier
  Future<void> searchCustomer({required String searchText}) async {
    List<ContactModel> _customersOriginal = [...state.data!.customersOriginal];
    emit(CustomersState.status(
        data: state.data?.copyWith(status: StatusType.loading)));
    if (searchText.isEmpty) {
      emit(CustomersState.getCustomers(
          data: state.data?.copyWith(
              status: StatusType.loaded, customers: _customersOriginal)));
    } else {
      final searchTextVN = TiengViet.parse(searchText.toLowerCase());
      final _customerItems = _customersOriginal
          .where((ContactModel element) =>
              element.getFullName().toLowerCase().contains(searchTextVN))
          .toList();
      emit(CustomersState.getCustomers(
          data: state.data?.copyWith(
              status: StatusType.loaded, customers: _customerItems)));
    }
  }

  void isOpenSearch(bool value) {
    emit(CustomersState.isOpenSearch(
        data: state.data!.copyWith(isOpenSearch: value)));
  }

  void delete(int id) => UIHelpers.showCustomDialog(
        context: Get.context!,
        message: 'are_you_sure'.tr,
        onComfirm: () async {
          try {
            await _dataRepository.deleteContact(id: id);
            await Future.delayed(
                const Duration(microseconds: 500), () => navigator!.pop());
          } catch (error) {
            debugPrint('Delete Contact Error: $error');
            Helpers.handleErrorApp(error: error);
          } finally {
            Future.delayed(const Duration(seconds: 2), () => navigator!.pop());
          }
        },
        isShowClose: true,
      );
}
