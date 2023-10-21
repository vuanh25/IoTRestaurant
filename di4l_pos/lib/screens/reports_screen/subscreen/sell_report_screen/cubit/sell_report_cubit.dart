import 'package:di4l_pos/models/sell/response/sell_response.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../common/helpers.dart';
import '../../../../../common/ui_helpers.dart';
import '../../../../../enums/status_type.dart';
import '../../../../../get_it.dart';
import '../../../../../models/sell_report/reponse/sell_report_response.dart';
import '../../../../../repositories/data_repository.dart';

part 'sell_report_state.dart';
part 'sell_report_cubit.freezed.dart';

class SellReportCubit extends Cubit<SellReportState> {
  /// MARK: - Initials;
  final _dataRepository = getIt<DataRepository>();

  SellReportCubit()
      : super(const SellReportState.initial(data: SellReportStateData()));

  Future<void> getSellReport({String? startDate, String? endDate}) async {
    List<SellReport> _sellReports = [...state.data!.sellReports];
    int page = state.data!.page! + 1;
    try {
      UIHelpers.showLoading(message: 'Loading...');
      emit(SellReportState.getSellReport(
          data: state.data?.copyWith(status: StatusType.loading)));
      final response = await _dataRepository.getSellReport(page: page);
      emit(SellReportState.getSellReport(
          data: state.data?.copyWith(
              status: StatusType.loaded,
              page: response.currentPage,
              response: response,
              sellReports: response.data ?? [])));
      emit(SellReportState.getSellReport(
          data: state.data?.copyWith(status: StatusType.loading)));
      _sellReports.addAll(state.data!.sellReports);
      emit(SellReportState.getSellReport(
          data: state.data?.copyWith(
        status: StatusType.loaded,
        sellReports: _sellReports,
      )));
    } catch (error) {
      emit(SellReportState.getSellReport(
          data: state.data?.copyWith(status: StatusType.error)));
      Helpers.handleErrorApp(error: error);
    } finally {
      UIHelpers.dismissLoading();
    }
  }

  Future<void> getSellReportByFilter(
      {String? startDate, String? endDate}) async {
    // List<SellReport> _sellReports = [...state.data!.sellReports];
    int page = 1;
    try {
      UIHelpers.showLoading(message: 'Loading...');
      final response = await _dataRepository.getSellReport(
          page: page, startDate: startDate, endDate: endDate);
      emit(SellReportState.getSellReport(
          data: state.data?.copyWith(
              page: response.currentPage, sellReports: response.data ?? [])));
    } catch (error) {
      emit(SellReportState.getSellReport(
          data: state.data?.copyWith(status: StatusType.error)));
      Helpers.handleErrorApp(error: error);
    } finally {
      UIHelpers.dismissLoading();
    }
  }

  Future<void> getOrders({String? startDate, String? endDate}) async {
    List<SellData> _orderReports = [...state.data!.orders];
    int page = state.data!.page! + 1;
    try {
      UIHelpers.showLoading(message: 'Loading...');
      emit(SellReportState.getSellReport(
          data: state.data?.copyWith(status: StatusType.loading)));
      final response = await _dataRepository.getOrderReport(
          page: page, startDate: startDate, endDate: endDate);
      // final response = await _dataRepository.getOrder();
      emit(SellReportState.getSellReport(
          data: state.data?.copyWith(
        status: StatusType.loaded,
        page: response.meta!.currentPage,
        orders: response.data ?? [],
      )));
      emit(SellReportState.getSellReport(
          data: state.data?.copyWith(status: StatusType.loading)));
      _orderReports.addAll(state.data!.orders);
      emit(SellReportState.getSellReport(
          data: state.data?.copyWith(
        status: StatusType.loaded,
        orders: _orderReports,
      )));
    } catch (error) {
      debugPrint('Error: $error');

      emit(SellReportState.getSellReport(
          data: state.data?.copyWith(status: StatusType.error)));
      Helpers.handleErrorApp(error: error);
    } finally {
      UIHelpers.dismissLoading();
    }
  }

  Future<void> getOrdersByFilter({String? startDate, String? endDate}) async {
    // List<SellData> _orderReports = [...state.data!.orders];
    int page = 1;
    try {
      UIHelpers.showLoading(message: 'Loading...');
      final response = await _dataRepository.getOrderReport(
          page: page, startDate: startDate, endDate: endDate);
      emit(SellReportState.getSellReport(
          data: state.data?.copyWith(
        page: response.meta!.currentPage,
        orders: response.data ?? [],
      )));
    } catch (error) {
      debugPrint('Error: $error');

      emit(SellReportState.getSellReport(
          data: state.data?.copyWith(status: StatusType.error)));
      Helpers.handleErrorApp(error: error);
    } finally {
      UIHelpers.dismissLoading();
    }
  }
}
