// ignore_for_file: no_leading_underscores_for_local_identifiers, depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:di4l_pos/common/helpers.dart';
import 'package:di4l_pos/common/ui_helpers.dart';
import 'package:di4l_pos/enums/status_type.dart';
import 'package:di4l_pos/get_it.dart';
import 'package:di4l_pos/models/contacts/request/get_contacts_request.dart';
import 'package:di4l_pos/models/contacts/response/contacts_response.dart';
import 'package:di4l_pos/repositories/data_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';
import 'package:tiengviet/tiengviet.dart';

part 'suppliers_state.dart';
part 'suppliers_cubit.freezed.dart';

class SuppliersCubit extends Cubit<SuppliersState> {
  /// MARK: - Initials;
  final _dataRepository = getIt<DataRepository>();

  SuppliersCubit()
      : super(const SuppliersState.initial(data: SuppliersStateData()));

  /// Get Contacts
  Future<void> loadContact() async {
    int page = 1;
    try {
      emit(SuppliersState.status(
          data: state.data?.copyWith(status: StatusType.loading)));
      final _response =
          await _dataRepository.getContacts(type: 'supplier', page: page);
      emit(SuppliersState.getSuppliers(
          data: state.data?.copyWith(
              status: StatusType.loaded,
              page: _response.meta!.currentPage,
              suppliers: _response.data ?? [],
              suppliersOriginal: _response.data ?? [])));
    } catch (error) {
      emit(SuppliersState.status(
          data: state.data?.copyWith(status: StatusType.error)));
      Helpers.handleErrorApp(error: error);
    } finally {
      UIHelpers.dismissLoading();
    }
  }

  Future<void> getContacts() async {
    List<ContactModel> _suppliers = [...state.data!.suppliers];
    int page = state.data!.page! + 1;
    try {
      emit(SuppliersState.status(
          data: state.data?.copyWith(status: StatusType.loading)));
      final _response =
          await _dataRepository.getContacts(type: 'supplier', page: page);
      emit(SuppliersState.getSuppliers(
          data: state.data?.copyWith(
              status: StatusType.loaded,
              page: _response.meta!.currentPage,
              suppliers: _response.data ?? [],
              suppliersOriginal: _response.data ?? [])));

      emit(SuppliersState.status(
          data: state.data?.copyWith(status: StatusType.loading)));
      _suppliers.addAll(state.data!.suppliers);
      emit(SuppliersState.getSuppliers(
          data: state.data?.copyWith(
              status: StatusType.loaded,
              suppliers: _suppliers,
              suppliersOriginal: _suppliers)));
    } catch (error) {
      emit(SuppliersState.status(
          data: state.data?.copyWith(status: StatusType.error)));
      Helpers.handleErrorApp(error: error);
    } finally {
      UIHelpers.dismissLoading();
    }
  }

  /// Refresh List Contact
  Future<void> refreshContacts({ContactModel? contactModel}) async {
    List<ContactModel> _suppliers = [...state.data!.suppliers];
    final _index =
        _suppliers.indexWhere((element) => element.id == contactModel?.id);
    if (_index != -1) {
      _suppliers[_index] = contactModel!;
      emit(SuppliersState.getSuppliers(
          data: state.data?.copyWith(suppliers: _suppliers)));
    }
  }

  ///Search Supplier
  Future<void> searchSupplier({required String searchText}) async {
    List<ContactModel> _suppliersOriginal = [...state.data!.suppliersOriginal];
    emit(SuppliersState.status(
        data: state.data?.copyWith(status: StatusType.loading)));
    if (searchText.isEmpty) {
      emit(SuppliersState.getSuppliers(
          data: state.data?.copyWith(
              status: StatusType.loaded, suppliers: _suppliersOriginal)));
    } else {
      final searchTextVN = TiengViet.parse(searchText.toLowerCase());
      final _supplierItems = _suppliersOriginal.where((ContactModel element) {
        var _fullname = element.getFullName().toLowerCase();
        return _fullname.contains(searchTextVN);
      }).toList();
      emit(SuppliersState.getSuppliers(
          data: state.data?.copyWith(
              status: StatusType.loaded, suppliers: _supplierItems)));
    }
  }

  Future<void> getSupplier(ContactModel? contactModel) async {
    emit(SuppliersState.getSuppliers(
        data: state.data?.copyWith(contactModel: contactModel)));
  }

  void delete(int id) async => UIHelpers.showCustomDialog(
        context: Get.context!,
        message: 'are_you_sure'.tr,
        onComfirm: () async {
          try {
            await _dataRepository.deleteContact(id: id);
            getContacts();
            await Future.delayed(
                const Duration(microseconds: 500), () => navigator!.pop());
          } catch (error) {
            debugPrint('Delete Contact Error: $error');
            Helpers.handleErrorApp(error: error);
          } finally {
            UIHelpers.dismissLoading();
          }
        },
        isShowClose: true,
      );
}
