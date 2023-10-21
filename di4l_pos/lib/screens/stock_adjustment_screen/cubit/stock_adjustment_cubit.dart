import 'package:di4l_pos/common/helpers.dart';
import 'package:di4l_pos/common/ui_helpers.dart';
import 'package:di4l_pos/enums/status_type.dart';
import 'package:di4l_pos/get_it.dart';
import 'package:di4l_pos/models/stock_adjustment/response/stock_adjustment_detail_response.dart';
import 'package:di4l_pos/models/stock_adjustment/response/stock_adjustment_response.dart';
import 'package:di4l_pos/repositories/data_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';
import 'package:tiengviet/tiengviet.dart';

part 'stock_adjustment_cubit.freezed.dart';
part 'stock_adjustment_state.dart';

class StockAdjustmentCubit extends Cubit<StockAdjustmentState> {
  /// MAKR: - Initials;
  final _dataRepository = getIt<DataRepository>();

  StockAdjustmentCubit()
      : super(const StockAdjustmentState.initial(
            data: StockAdjustmentStateData()));

  Future<void> loadStockAdjustments() async {
    int page = 1;

    try {
      emit(Status(data: state.data?.copyWith(status: StatusType.loading)));
      final responses = await _dataRepository.getStockAdjustments(page: page);
      emit(GetStockAdjustments(
          data: state.data?.copyWith(
        status: StatusType.loaded,
        stockAdjustments: responses.data ?? [],
        stockAdjustmentsOriginal: responses.data ?? [],
      )));
    } catch (error) {
      emit(Status(data: state.data?.copyWith(status: StatusType.error)));
      Helpers.handleErrorApp(error: error);
    } finally {
      UIHelpers.dismissLoading();
    }
  }

  Future<void> getStockAdjustments() async {
    List<StockAdjustmentData> _stockAdjustment = [
      ...state.data!.stockAdjustments
    ];
    int page = state.data!.page! + 1;

    try {
      emit(Status(data: state.data?.copyWith(status: StatusType.loading)));
      final responses = await _dataRepository.getStockAdjustments(page: page);
      emit(GetStockAdjustments(
          data: state.data?.copyWith(
        page: responses.currentPage,
        status: StatusType.loaded,
        stockAdjustments: responses.data ?? [],
        stockAdjustmentsOriginal: responses.data ?? [],
      )));
      emit(Status(data: state.data?.copyWith(status: StatusType.loading)));
      _stockAdjustment.addAll(state.data!.stockAdjustments);
      emit(GetStockAdjustments(
          data: state.data?.copyWith(
        status: StatusType.loaded,
        stockAdjustments: _stockAdjustment,
        stockAdjustmentsOriginal: _stockAdjustment,
      )));
    } catch (error) {
      emit(Status(data: state.data?.copyWith(status: StatusType.error)));
      Helpers.handleErrorApp(error: error);
    }
  }

  Future<void> searchStockAdjustment({required String searchText}) async {
    List<StockAdjustmentData> _stockAdjustmentOriginal = [
      ...state.data!.stockAdjustmentsOriginal
    ];
    emit(Status(data: state.data?.copyWith(status: StatusType.loading)));
    if (searchText.isEmpty) {
      emit(GetStockAdjustments(
          data: state.data?.copyWith(
              status: StatusType.loaded,
              stockAdjustments: _stockAdjustmentOriginal)));
    } else {
      final searchTextVN = TiengViet.parse(searchText.toLowerCase());
      final _stockAdjustmentItems = _stockAdjustmentOriginal
          .where((StockAdjustmentData element) =>
              (element.transactionDate!.toLowerCase().contains(searchTextVN)) ||
              (element.refNo!.toLowerCase().contains(searchTextVN)) ||
              (element.locationName!.toLowerCase().contains(searchTextVN)) ||
              (element.adjustmentType!.toLowerCase().contains(searchTextVN)) ||
              (element.finalTotal!.toLowerCase().contains(searchTextVN)) ||
              (element.totalAmountRecovered!
                  .toLowerCase()
                  .contains(searchTextVN)) ||
              (element.additionalNotes!.toLowerCase().contains(searchTextVN)) ||
              (element.addedBy!.toLowerCase().contains(searchTextVN)))
          .toList();
      emit(GetStockAdjustments(
          data: state.data?.copyWith(
              status: StatusType.loaded,
              stockAdjustments: _stockAdjustmentItems)));
    }
  }

  Future<void> getStockAdjustmentsDetail({required int id}) async {
    try {
      emit(Status(data: state.data?.copyWith(status: StatusType.loading)));
      final responses = await _dataRepository.getStockAdjustmentsDetail(id: id);
      emit(GetStockAdjustmentDetail(
          data: state.data?.copyWith(
        status: StatusType.loaded,
        stockAdjustmentDetail: responses.stockAdjustment,
      )));
      emit(GetActivities(
          data: state.data?.copyWith(
        status: StatusType.loaded,
        activities: responses.activities ?? [],
      )));
    } catch (error) {
      emit(Status(data: state.data?.copyWith(status: StatusType.error)));
      Helpers.handleErrorApp(error: error);
    }
  }

  void getStockAdjustment(StockAdjustmentData? stockAdjustmentData) {
    emit(StockAdjustmentState.getStockAdjustment(
        data: state.data?.copyWith(stockAdjustment: stockAdjustmentData)));
  }

  Future<void> deleteStockAdjustment({required int id}) async {
    UIHelpers.showCustomDialog(
      context: Get.context!,
      message: 'message_confirm_delete_stockadjustment'.tr,
      onComfirm: () async {
        UIHelpers.showLoading();
        try {
          await _dataRepository.deleteStockAdjustment(id: id);
          await Future.delayed(const Duration(microseconds: 200), () {
            navigator!.pop();
            loadStockAdjustments();
          });
        } catch (error) {
          debugPrint('Delete Stock Adjustment Error: $error');
          Helpers.handleErrorApp(error: error);
        } finally {
          UIHelpers.dismissLoading();
        }
      },
      isShowClose: true,
    );
  }
}
