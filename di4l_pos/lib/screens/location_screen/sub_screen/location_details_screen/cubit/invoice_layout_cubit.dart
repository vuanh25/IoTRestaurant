import 'dart:ffi';
import 'dart:io';

import 'package:di4l_pos/common/helpers.dart';
import 'package:di4l_pos/common/ui_helpers.dart';
import 'package:di4l_pos/enums/status_type.dart';
import 'package:di4l_pos/get_it.dart';
import 'package:di4l_pos/models/invoice/response/invoice_layout_response.dart';
import 'package:di4l_pos/repositories/data_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tiengviet/tiengviet.dart';

part 'invoice_layout_state.dart';
part 'invoice_layout_cubit.freezed.dart';

class InvoiceLayoutCubit extends Cubit<InvoiceLayoutState> {
  /// MARK: - Initials;
  final _dataRepository = getIt<DataRepository>();
  // final _appPrefs = getIt<AppPref>();
  InvoiceLayoutCubit()
      : super(const InvoiceLayoutState.initial(data: InvoiceLayoutData()));

  Future<void> getLayoutsList() async {
    try {
      emit(
        InvoiceLayoutState.getLayouts(
          data: state.data?.copyWith(
            status: StatusType.loading,
          ),
        ),
      );
      final response = await _dataRepository.getInvoiceLayouts();
      emit(
        InvoiceLayoutState.getLayouts(
          data: state.data!.copyWith(
            invoices: response,
            originalInvoiceLayouts: response,
            status: StatusType.loaded,
          ),
        ),
      );
    } catch (error) {
      emit(
        InvoiceLayoutState.getLayouts(
          data: state.data?.copyWith(
            status: StatusType.error,
            error: error.toString(),
          ),
        ),
      );
      debugPrint('Get Invoice Layout Error: $error');
      Helpers.handleErrorApp(error: error);
    } finally {
      UIHelpers.dismissLoading();
    }
  }

  Future<void> getLayouts() async {
    try {
      List<InvoiceLayout> invoiceLayouts = [
        InvoiceLayout(id: null, name: 'None'),
      ];
      final response = await _dataRepository.getInvoiceLayouts();
      invoiceLayouts.addAll(response);
      emit(
        InvoiceLayoutState.getLayouts(
          data: state.data!.copyWith(
            invoices: invoiceLayouts,
          ),
        ),
      );
    } catch (error) {
      debugPrint('Get Invoice Layout Error: $error');
      Helpers.handleErrorApp(error: error);
    } finally {
      UIHelpers.dismissLoading();
    }
  }

  Future<void> getLayout(int? id) async {
    try {
      List<InvoiceLayout> invoiceLayouts = [
        InvoiceLayout(id: null, name: 'None'),
      ];
      final response = await _dataRepository.getInvoiceLayouts();
      invoiceLayouts.addAll(response);
      bool invoicesIsEmpty = state.data!.invoices.isEmpty;
      if (id == null) {
        emit(
          InvoiceLayoutState.getLayout(
            data: state.data!.copyWith(
              invoice: null,
              invoices: invoicesIsEmpty ? invoiceLayouts : state.data!.invoices,
            ),
          ),
        );
        return;
      }
      InvoiceLayout layout;
      if (state.data!.invoices.isNotEmpty) {
        layout = state.data!.invoices.firstWhere((element) => element.id == id);
        emit(
          InvoiceLayoutState.getLayout(
            data: state.data!.copyWith(
              invoice: layout,
            ),
          ),
        );
      } else {
        layout = response.firstWhere((element) => element.id == id);
        emit(
          InvoiceLayoutState.getLayout(
            data: state.data!.copyWith(
              invoices: invoiceLayouts,
              invoice: layout,
            ),
          ),
        );
      }
    } catch (error) {
      debugPrint('Get Invoice Layout Error: $error');
      Helpers.handleErrorApp(error: error);
    } finally {
      UIHelpers.dismissLoading();
    }
  }

  Future<void> getPosLayout(int? id) async {
    try {
      List<InvoiceLayout> invoiceLayouts = [
        InvoiceLayout(id: null, name: 'None'),
      ];
      final response = await _dataRepository.getInvoiceLayouts();
      invoiceLayouts.addAll(response);
      bool invoicesIsEmpty = state.data!.invoices.isEmpty;
      if (id == null) {
        emit(
          InvoiceLayoutState.getPosLayout(
            data: state.data!.copyWith(
              posInvoice: null,
              invoices: invoicesIsEmpty ? invoiceLayouts : state.data!.invoices,
            ),
          ),
        );
        return;
      }
      InvoiceLayout posLayout;
      if (state.data!.invoices.isNotEmpty) {
        List<InvoiceLayout> layoutList = [...state.data!.invoices];
        posLayout = layoutList.firstWhere((element) => element.id == id);
        emit(
          InvoiceLayoutState.getPosLayout(
            data: state.data!.copyWith(
              posInvoice: posLayout,
            ),
          ),
        );
      } else {
        posLayout = response.firstWhere((element) => element.id == id);
        emit(
          InvoiceLayoutState.getPosLayout(
            data: state.data!.copyWith(
              invoices: invoiceLayouts,
              posInvoice: posLayout,
            ),
          ),
        );
      }
    } catch (error) {
      debugPrint('Get Invoice Layout Error: $error');
      Helpers.handleErrorApp(error: error);
    } finally {
      UIHelpers.dismissLoading();
    }
  }

  Future<void> getSaleLayout(int? id) async {
    try {
      List<InvoiceLayout> invoiceLayouts = [
        InvoiceLayout(id: null, name: 'None'),
      ];
      final response = await _dataRepository.getInvoiceLayouts();
      invoiceLayouts.addAll(response);
      bool invoicesIsEmpty = state.data!.invoices.isEmpty;
      if (id == null) {
        emit(
          InvoiceLayoutState.getSaleLayout(
            data: state.data!.copyWith(
              saleInvoice: null,
              invoices: invoicesIsEmpty ? invoiceLayouts : state.data!.invoices,
            ),
          ),
        );
        return;
      }
      InvoiceLayout saleLayout;
      if (state.data!.invoices.isNotEmpty) {
        List<InvoiceLayout> layoutList = [...state.data!.invoices];
        saleLayout = layoutList.firstWhere((element) => element.id == id);
        emit(
          InvoiceLayoutState.getSaleLayout(
            data: state.data!.copyWith(
              saleInvoice: saleLayout,
            ),
          ),
        );
      } else {
        saleLayout = response.firstWhere((element) => element.id == id);
        emit(
          InvoiceLayoutState.getSaleLayout(
            data: state.data!.copyWith(
              invoices: invoiceLayouts,
              saleInvoice: saleLayout,
            ),
          ),
        );
      }
    } catch (error) {
      debugPrint('Get Invoice Layout Error: $error');
      Helpers.handleErrorApp(error: error);
    } finally {
      UIHelpers.dismissLoading();
    }
  }

  void searchInvoiceLayout(String searchText) {
    List<InvoiceLayout> invoiceLayouts = [
      ...state.data!.originalInvoiceLayouts
    ];
    emit(
      InvoiceLayoutState.getLayouts(
        data: state.data?.copyWith(
          status: StatusType.loading,
        ),
      ),
    );
    if (searchText.isEmpty) {
      emit(
        InvoiceLayoutState.getLayouts(
          data: state.data?.copyWith(
            status: StatusType.loaded,
            invoices: invoiceLayouts,
          ),
        ),
      );
    } else {
      final searchTextVn = TiengViet.parse(searchText.toLowerCase());
      final layoutsList = invoiceLayouts
          .where(
              (element) => element.name!.toLowerCase().contains(searchTextVn))
          .toList();
      emit(
        InvoiceLayoutState.getLayouts(
          data: state.data?.copyWith(
            status: StatusType.loaded,
            invoices: layoutsList,
          ),
        ),
      );
    }
  }

  Future<void> getLogo(ImageSource imageSource) async {
    final image = await ImagePicker().pickImage(source: imageSource);
    final newLayout = state.data?.invoice!.copyWith(
      logo: image!.path,
    );
    emit(
      InvoiceLayoutState.getLogo(
        data: state.data?.copyWith(
          image: File(image!.path),
          invoice: newLayout,
        ),
      ),
    );
  }

  void setPosLayout(InvoiceLayout posLayout) {
    emit(
      InvoiceLayoutState.setPosLayout(
        data: state.data?.copyWith(
          posInvoice: posLayout,
        ),
      ),
    );
  }

  void setSaleLayout(InvoiceLayout saleLayout) {
    emit(
      InvoiceLayoutState.setPosLayout(
        data: state.data?.copyWith(
          saleInvoice: saleLayout,
        ),
      ),
    );
  }

  void setLayout(InvoiceLayout layout) {
    emit(
      InvoiceLayoutState.setLayout(
        data: state.data?.copyWith(invoice: layout),
      ),
    );
  }
}
