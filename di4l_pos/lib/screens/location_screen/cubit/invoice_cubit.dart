import 'package:di4l_pos/common/helpers.dart';
import 'package:di4l_pos/common/ui_helpers.dart';
import 'package:di4l_pos/enums/status_type.dart';
import 'package:di4l_pos/get_it.dart';
import 'package:di4l_pos/models/invoice/response/invoice_schemas_response.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tiengviet/tiengviet.dart';

import '../../../repositories/data_repository.dart';

part 'invoice_state.dart';
part 'invoice_cubit.freezed.dart';

class InvoiceCubit extends Cubit<InvoiceState> {
  /// MARK: - Initials;
  final _dataRepository = getIt<DataRepository>();
  // final _appPrefs = getIt<AppPref>();
  InvoiceCubit() : super(const InvoiceState.initial(data: InvoiceData()));

  Future<void> getSchemasList() async {
    try {
      emit(
        InvoiceState.getInvoices(
          data: state.data?.copyWith(
            status: StatusType.loading,
          ),
        ),
      );
      final response = await _dataRepository.getInvoices();
      emit(
        InvoiceState.getInvoices(
          data: state.data?.copyWith(
            invoices: response,
            originalInvoices: response,
            status: StatusType.loaded,
          ),
        ),
      );
    } catch (error) {
      emit(
        InvoiceState.getInvoices(
          data: state.data?.copyWith(
            status: StatusType.error,
            error: error.toString(),
          ),
        ),
      );
      debugPrint('Get Invoice Error: $error');
      Helpers.handleErrorApp(error: error);
    } finally {
      UIHelpers.dismissLoading();
    }
  }

  Future<void> getInvoices() async {
    try {
      List<InvoiceSchema> invoiceSchemasList = [
        InvoiceSchema(
          id: null,
          name: 'None',
        ),
      ];
      final response = await _dataRepository.getInvoices();
      invoiceSchemasList.addAll(response);
      emit(
        InvoiceState.getInvoices(
          data: state.data?.copyWith(
            invoices: invoiceSchemasList,
          ),
        ),
      );
    } catch (error) {
      debugPrint('Get Invoice Error: $error');
      Helpers.handleErrorApp(error: error);
    } finally {
      UIHelpers.dismissLoading();
    }
  }

  Future<void> getInvoiceById(int? id) async {
    try {
      List<InvoiceSchema> invoiceSchemasList = [
        InvoiceSchema(
          id: null,
          name: 'None',
        ),
      ];
      final response = await _dataRepository.getInvoices();
      invoiceSchemasList.addAll(response);
      if (id == null) {
        emit(
          InvoiceState.getInvoice(
            data: state.data?.copyWith(
              invoice: null,
              invoices: invoiceSchemasList,
            ),
          ),
        );
        return;
      }
      final selectedInvoice =
          response.firstWhere((element) => element.id == id);
      emit(
        InvoiceState.getInvoice(
          data: state.data?.copyWith(
            invoice: selectedInvoice,
            invoices: invoiceSchemasList,
          ),
        ),
      );
    } catch (error) {
      debugPrint('Get Business  Error: $error');
      Helpers.handleErrorApp(error: error);
    } finally {
      UIHelpers.dismissLoading();
    }
  }

  void searchInvoice(String searchText) {
    List<InvoiceSchema> invoices = [...state.data!.originalInvoices];
    emit(
      InvoiceState.getInvoices(
        data: state.data?.copyWith(
          status: StatusType.loading,
        ),
      ),
    );
    if (searchText.isEmpty) {
      emit(
        InvoiceState.getInvoices(
          data: state.data?.copyWith(
            status: StatusType.loaded,
            invoices: invoices,
          ),
        ),
      );
    } else {
      final searchTextVn = TiengViet.parse(searchText.toLowerCase());
      final invoicesList = invoices
          .where(
              (element) => element.name!.toLowerCase().contains(searchTextVn))
          .toList();
      emit(
        InvoiceState.getInvoices(
          data: state.data?.copyWith(
            status: StatusType.loaded,
            invoices: invoicesList,
          ),
        ),
      );
    }
  }

  void isSearching(bool isSearching) {
    emit(
      InvoiceState.isSearching(
        data: state.data?.copyWith(
          isSearching: isSearching,
        ),
      ),
    );
  }

  void setInvoice(InvoiceSchema invoiceSchema) {
    emit(
      InvoiceState.setInvoice(
        data: state.data?.copyWith(
          invoice: invoiceSchema,
        ),
      ),
    );
  }
}
