import 'package:di4l_pos/common/helpers.dart';
import 'package:di4l_pos/common/ui_helpers.dart';
import 'package:di4l_pos/enums/status_type.dart';
import 'package:di4l_pos/get_it.dart';
import 'package:di4l_pos/models/stock_transfers/response/stock_transfers_detail_response.dart';
import 'package:di4l_pos/models/stock_transfers/response/stock_transfers_response.dart';
import 'package:di4l_pos/repositories/data_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';
import 'package:tiengviet/tiengviet.dart';

part 'stock_transfers_state.dart';
part 'stock_transfers_cubit.freezed.dart';

class StockTransfersCubit extends Cubit<StockTransfersState> {
  final _dataRepository = getIt<DataRepository>();

  StockTransfersCubit()
      : super(
            const StockTransfersState.initial(data: StockTransfersStateData()));

  Future<void> loadStockTransfers() async {
    int page = 1;
    try {
      emit(Status(data: state.data?.copyWith(status: StatusType.loading)));
      final _responses = await _dataRepository.getStockTransfers(page: page);
      emit(GetStockTransfers(
          data: state.data?.copyWith(
              status: StatusType.loaded,
              stockTransfers: _responses.data ?? [],
              stockTransfersOriginal: _responses.data ?? [])));

      // print(_responses.data);
    } catch (error) {
      emit(Status(data: state.data?.copyWith(status: StatusType.error)));
      Helpers.handleErrorApp(error: error);
    }
  }

  Future<void> getStockTransfers() async {
    List<StockTransfersData> _stockTransfers = [...state.data!.stockTransfers];
    int page = state.data!.page! + 1;
    try {
      emit(Status(data: state.data?.copyWith(status: StatusType.loading)));
      final _responses = await _dataRepository.getStockTransfers(page: page);
      emit(GetStockTransfers(
          data: state.data?.copyWith(
              page: _responses.currentPage,
              status: StatusType.loaded,
              stockTransfers: _responses.data ?? [],
              stockTransfersOriginal: _responses.data ?? [])));
      emit(Status(data: state.data?.copyWith(status: StatusType.loading)));
      _stockTransfers.addAll(state.data!.stockTransfers);
      emit(GetStockTransfers(
          data: state.data?.copyWith(
              status: StatusType.loaded,
              stockTransfers: _stockTransfers,
              stockTransfersOriginal: _stockTransfers)));
      // print(_responses.data);
    } catch (error) {
      emit(Status(data: state.data?.copyWith(status: StatusType.error)));
      Helpers.handleErrorApp(error: error);
    }
  }

  Future<void> searchStockTransfer({required String searchText}) async {
    List<StockTransfersData> _stockTransfersOriginal = [
      ...state.data!.stockTransfersOriginal
    ];
    emit(Status(data: state.data?.copyWith(status: StatusType.loading)));
    if (searchText.isEmpty) {
      emit(GetStockTransfers(
          data: state.data?.copyWith(
              status: StatusType.loaded,
              stockTransfers: _stockTransfersOriginal)));
    } else {
      final searchTextVN = TiengViet.parse(searchText.toLowerCase());
      final _stockTransferItems = _stockTransfersOriginal
          .where((StockTransfersData element) =>
              (element.transactionDate!.toLowerCase().contains(searchTextVN)) ||
              (element.refNo!.toLowerCase().contains(searchTextVN)) ||
              (element.locationFrom!.toLowerCase().contains(searchTextVN)) ||
              (element.locationTo!.toLowerCase().contains(searchTextVN)) ||
              (element.finalTotal!.toLowerCase().contains(searchTextVN)) ||
              (element.shippingCharges!.toLowerCase().contains(searchTextVN)) ||
              (element.additionalNotes!.toLowerCase().contains(searchTextVN)) ||
              (element.status!.toLowerCase().contains(searchTextVN)))
          .toList();
      emit(GetStockTransfers(
          data: state.data?.copyWith(
              status: StatusType.loaded, stockTransfers: _stockTransferItems)));
    }
  }

  Future<void> getStockTransferDetail({required int id}) async {
    try {
      emit(Status(data: state.data?.copyWith(status: StatusType.loading)));
      final responses = await _dataRepository.getStockTransferDetail(id: id);
      emit(GetSellTransfers(
          data: state.data?.copyWith(
        status: StatusType.loaded,
        sellTransfers: responses.sellTransfer,
      )));
      emit(GetLocationDetails(
          data: state.data?.copyWith(
        status: StatusType.loaded,
        locationDetails: responses.locationDetails,
      )));
      emit(GetSubject(
          data: state.data?.copyWith(
        status: StatusType.loaded,
        subject: responses.subject,
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

  Future<void> deleteStockTransfer({required int id}) async {
    UIHelpers.showCustomDialog(
      context: Get.context!,
      message: 'message_confirm_delete_stocktransfer'.tr,
      onComfirm: () async {
        UIHelpers.showLoading();
        try {
          await _dataRepository.deleteStockTransfer(id: id);
          await Future.delayed(const Duration(microseconds: 200), () {
            navigator!.pop();
            loadStockTransfers();
          });
        } catch (error) {
          debugPrint('Delete Stock Transfer Error: $error');
          Helpers.handleErrorApp(error: error);
        } finally {
          UIHelpers.dismissLoading();
        }
      },
      isShowClose: true,
    );
  }
}
