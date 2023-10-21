// ignore_for_file: no_leading_underscores_for_local_identifiers, depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:di4l_pos/common/helpers.dart';
import 'package:di4l_pos/enums/customer_type.dart';
import 'package:di4l_pos/enums/status_type.dart';
import 'package:di4l_pos/get_it.dart';
import 'package:di4l_pos/models/contacts/request/add_contact_request.dart';
import 'package:di4l_pos/models/transaction/response/transaction_response.dart';
import 'package:di4l_pos/repositories/data_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';

part 'add_contact_state.dart';
part 'add_contact_cubit.freezed.dart';

class AddContactCubit extends Cubit<AddContactState> {
  /// MARK: - Initials;
  final _dataRepository = getIt<DataRepository>();

  AddContactCubit()
      : super(const AddContactState.initial(data: AddContactStateData()));

  /// Add Customer
  Future<void> addCustomer({
    required int customerGroupId,
    required String firstName,
    required String lastName,
    required String supplierBusinessName,
    required String phoneNumber,
    required String email,
    required String dob,
    // required String taxNumber,
    // required dynamic openingBalance,
    // required dynamic payTermNumber,
    // required String addressLine1,
    String? shippingAddress,
  }) async {
    try {
      String check = await checkEmpty(
          firstName, lastName, email, phoneNumber, supplierBusinessName);
      if (check.isNotEmpty) {
        emit(AddContactState.error(data: state.data!.copyWith(error: check)));
        await Future<void>.delayed(const Duration(seconds: 1));
        emit(AddContactState.error(data: state.data!.copyWith(error: '')));
      } else {
        emit(AddContactState.status(
            data: state.data!
                .copyWith(status: StatusType.loading, error: 'Loading...')));
        final _request = AddContactRequest(
            type: 'customer',
            customerGroupId: customerGroupId,
            firstName: firstName,
            lastName: lastName,
            supplierBusinessName: supplierBusinessName,
            mobile: phoneNumber,
            email: email,
            dob: dob,
            // taxNumber: taxNumber,
            // openingBalance: openingBalance,
            // payTermNumber: payTermNumber,
            // payTermType: state.data!.payType,
            // addressLine1: addressLine1,
            shippingAddress: shippingAddress);
        final _response = await _dataRepository.addContact(request: _request);
        if (_response.data != null) {
          await Future.delayed(
              const Duration(seconds: 1), () => navigator!.pop());
          emit(AddContactState.status(
              data: state.data!.copyWith(
                  status: StatusType.loaded,
                  error: 'add_customer_success'.tr)));
        }
      }
    } catch (error) {
      emit(AddContactState.status(
          data: state.data!.copyWith(
              status: StatusType.error, error: 'Something went wrong')));
      Helpers.handleErrorApp(error: error);
    } finally {
      Future.delayed(const Duration(seconds: 2), () => navigator!.pop());
    }
  }

  /// Update Customer
  Future<void> updateCustomer({
    required int contactId,
    required int customerGroupId,
    required String firstName,
    required String lastName,
    required String supplierBusinessName,
    required String phoneNumber,
    required String email,
    required String dob,
    // required String taxNumber,
    // required dynamic openingBalance,
    // required dynamic payTermNumber,
    // required String addressLine1,
    String? shippingAddress,
  }) async {
    try {
      String check = await checkEmpty(
          firstName, lastName, email, phoneNumber, supplierBusinessName);
      if (check.isNotEmpty) {
        emit(AddContactState.error(data: state.data!.copyWith(error: check)));
        await Future<void>.delayed(const Duration(seconds: 1));
        emit(AddContactState.error(data: state.data!.copyWith(error: '')));
      } else {
        emit(AddContactState.status(
            data: state.data!
                .copyWith(status: StatusType.loading, error: 'Loading...')));
        final _request = AddContactRequest(
            type: 'customer',
            customerGroupId: customerGroupId,
            firstName: firstName,
            lastName: lastName,
            supplierBusinessName: supplierBusinessName,
            mobile: phoneNumber,
            email: email,
            dob: dob,
            // taxNumber: taxNumber,
            // openingBalance: openingBalance,
            // payTermNumber: payTermNumber,
            // payTermType: state.data!.payType,
            // addressLine1: addressLine1,
            shippingAddress: shippingAddress);
        final _response = await _dataRepository.updateContact(
            request: _request, id: contactId);
        if (_response.data != null) {
          await Future.delayed(
              const Duration(seconds: 1), () => navigator!.pop());
          emit(AddContactState.status(
              data: state.data!.copyWith(
                  status: StatusType.loaded,
                  error: 'update_customer_success'.tr)));
        }
      }
    } catch (error) {
      emit(AddContactState.status(
          data: state.data!.copyWith(
              status: StatusType.error, error: 'Something went wrong')));
      Helpers.handleErrorApp(error: error);
    } finally {
      Future.delayed(const Duration(seconds: 2), () => navigator!.pop());
    }
  }

  /// Add Supplier
  Future<void> addSupplier({
    required String supplierBusinessName,
    String? prefix,
    required String firstName,
    String? middleName,
    required String lastName,
    required String phoneNumber,
    String? alternateNumber,
    String? landline,
    required String email,
    String? addressLine1,
  }) async {
    try {
      String check = await checkEmpty(
          firstName, lastName, email, phoneNumber, supplierBusinessName);
      if (check.isNotEmpty) {
        emit(AddContactState.error(data: state.data!.copyWith(error: check)));
        await Future<void>.delayed(const Duration(seconds: 1));
        emit(AddContactState.error(data: state.data!.copyWith(error: '')));
      } else {
        emit(AddContactState.status(
            data: state.data!
                .copyWith(status: StatusType.loading, error: 'Loading...')));
        final _request = AddContactRequest(
            type: 'supplier',
            firstName: firstName,
            lastName: lastName,
            supplierBusinessName: supplierBusinessName,
            mobile: phoneNumber,
            email: email,
            addressLine1: addressLine1);
        final _response = await _dataRepository.addContact(request: _request);
        if (_response.data != null) {
          await Future.delayed(
              const Duration(seconds: 1), () => navigator!.pop());
          emit(AddContactState.status(
              data: state.data!.copyWith(
                  status: StatusType.loaded,
                  error: 'add_supplier_success'.tr)));
        }
      }
    } catch (error) {
      emit(AddContactState.status(
          data: state.data!.copyWith(
              status: StatusType.error, error: 'Something went wrong!')));
      debugPrint('Get Business Location Error: $error');
      Helpers.handleErrorApp(error: error);
    } finally {
      Future.delayed(const Duration(seconds: 2), () => navigator!.pop());
    }
  }

  /// Update Customer
  Future<void> updateSupplier({
    required int contactId,
    required String firstName,
    required String lastName,
    required String supplierBusinessName,
    required String phoneNumber,
    required String email,
    String? addressLine1,
  }) async {
    try {
      String check = await checkEmpty(
          firstName, lastName, email, phoneNumber, supplierBusinessName);
      if (check.isNotEmpty) {
        emit(AddContactState.error(data: state.data!.copyWith(error: check)));
        await Future<void>.delayed(const Duration(seconds: 1));
        emit(AddContactState.error(data: state.data!.copyWith(error: '')));
      } else {
        emit(AddContactState.status(
            data: state.data!
                .copyWith(status: StatusType.loading, error: 'Loading...')));
        final _request = AddContactRequest(
            type: 'supplier',
            firstName: firstName,
            lastName: lastName,
            supplierBusinessName: supplierBusinessName,
            mobile: phoneNumber,
            email: email,
            addressLine1: addressLine1);
        final _response = await _dataRepository.updateContact(
            request: _request, id: contactId);
        if (_response.data != null) {
          await Future.delayed(
              const Duration(seconds: 1), () => navigator!.pop());
          emit(AddContactState.status(
              data: state.data!.copyWith(
                  status: StatusType.loaded,
                  error: 'update_supplier_success'.tr)));
        }
      }
    } catch (error) {
      emit(AddContactState.status(
          data: state.data!.copyWith(
              status: StatusType.error, error: 'Something went wrong!')));
      Helpers.handleErrorApp(error: error, isShowDialog: true);
    } finally {
      Future.delayed(const Duration(seconds: 2), () => navigator!.pop());
    }
  }

  Future<String> checkEmpty(
    String firstName,
    String lastName,
    String email,
    String phoneNumber,
    String businessName,
  ) async {
    if (state.data!.type == TypeCustomer.individual) {
      if (firstName.isEmpty) {
        return 'First Name is Required';
      } else if (lastName.isEmpty) {
        return 'Last Name is Required';
      } else {
        return '';
      }
    } else if (state.data!.type == TypeCustomer.business) {
      if (businessName.isEmpty) {
        return 'Business Name is Required';
      } else {
        return '';
      }
    } else if (email.isEmpty) {
      return 'Email is Required';
    } else if (phoneNumber.isEmpty) {
      return 'Phone number is Required';
    } else {
      return '';
    }
  }

  void getType(String value) {
    emit(AddContactState.payType(data: state.data!.copyWith(payType: value)));
  }

  void changedType(TypeCustomer type) {
    emit(AddContactState.type(data: state.data!.copyWith(type: type)));
  }

  Future<void> getTransactions({required int id}) async {
    try {
      final _response =
          await _dataRepository.transactionByContact(contactId: id);
      emit(AddContactState.transactions(
          data: state.data?.copyWith(transactionsOrder: _response.data ?? [])));
    } catch (error) {
      Helpers.handleErrorApp(error: error);
    }
  }

  Future<void> getTransactionOfContactWithPaymentStatus(
      {required int id, required String timeRange}) async {
    try {
      final _response =
          await _dataRepository.transactionOfContactWithPaymentStatus(
              contactId: id, timeRange: timeRange, status: 'due');
      emit(AddContactState.transactions(
          data: state.data?.copyWith(transactionsDebt: _response.data ?? [])));
    } catch (error) {
      Helpers.handleErrorApp(error: error);
    }
  }
}
