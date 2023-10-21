import 'package:di4l_pos/common/ui_helpers.dart';
import 'package:di4l_pos/models/stock_purchases/response/stock_purchases_detail_response.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:di4l_pos/common/helpers.dart';
import 'package:di4l_pos/enums/status_type.dart';
import 'package:di4l_pos/get_it.dart';
import 'package:di4l_pos/models/stock_purchases/response/stock_purchases_response.dart';
import 'package:di4l_pos/repositories/data_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';
import 'package:tiengviet/tiengviet.dart';

part 'stock_purchases_state.dart';
part 'stock_purchases_cubit.freezed.dart';

class StockPurchasesCubit extends Cubit<StockPurchasesState> {
  final _dataRepository = getIt<DataRepository>();

  StockPurchasesCubit()
      : super(
            const StockPurchasesState.initial(data: StockPurchasesStateData()));

  Future<void> loadStockPurchases() async {
    int page = 1;
    try {
      emit(Status(data: state.data!.copyWith(status: StatusType.loading)));
      final _responses = await _dataRepository.getStockPurchases(page: page);
      emit(GetStockPurchases(
          data: state.data!.copyWith(
              status: StatusType.loaded,
              stockPurchases: _responses.data ?? [],
              stockPurchasesOriginal: _responses.data ?? [])));
    } catch (e) {
      emit(Status(data: state.data!.copyWith(status: StatusType.error)));
      Helpers.handleErrorApp(error: e);
    }
  }

  Future<void> getStockPurchases() async {
    List<StockPurchasesData> _stockPurchases = [...state.data!.stockPurchases];
    int page = state.data!.page! + 1;
    try {
      emit(Status(data: state.data!.copyWith(status: StatusType.loading)));
      final _responses = await _dataRepository.getStockPurchases(page: page);
      emit(GetStockPurchases(
          data: state.data!.copyWith(
        page: _responses.currentPage,
        status: StatusType.loaded,
        stockPurchases: _responses.data ?? [],
        stockPurchasesOriginal: _responses.data ?? [],
      )));
      emit(Status(data: state.data!.copyWith(status: StatusType.loading)));
      _stockPurchases.addAll(state.data!.stockPurchases);
      emit(GetStockPurchases(
          data: state.data!.copyWith(
        status: StatusType.loaded,
        stockPurchases: _stockPurchases,
        stockPurchasesOriginal: _stockPurchases,
      )));
    } catch (e) {
      emit(Status(data: state.data!.copyWith(status: StatusType.error)));
      Helpers.handleErrorApp(error: e);
    }
  }

  Future<void> searchStockPurchase({required String searchText}) async {
    List<StockPurchasesData> _stockPurchasesOriginal = [
      ...state.data!.stockPurchasesOriginal
    ];
    emit(Status(data: state.data!.copyWith(status: StatusType.loading)));
    if (searchText.isEmpty) {
      emit(GetStockPurchases(
          data: state.data!.copyWith(
        status: StatusType.loaded,
        stockPurchases: _stockPurchasesOriginal,
      )));
    } else {
      final searchTextVN = TiengViet.parse(searchText.toLowerCase());
      final _stockPurchasesItems = _stockPurchasesOriginal
          .where((StockPurchasesData element) =>
              (element.transactionDate!.toLowerCase().contains(searchTextVN)) ||
              (element.refNo!.toLowerCase().contains(searchTextVN)) ||
              (element.locationName!.toLowerCase().contains(searchTextVN)) ||
              (element.name!.toLowerCase().contains(searchTextVN)) ||
              (element.status!.toLowerCase().contains(searchTextVN)) ||
              (element.paymentStatus!.toLowerCase().contains(searchTextVN)) ||
              (element.finalTotal!.toLowerCase().contains(searchTextVN)) ||
              (element.amountPaid!.toLowerCase().contains(searchTextVN)) ||
              (element.addedBy!.toLowerCase().contains(searchTextVN)))
          .toList();
      emit(
        GetStockPurchases(
          data: state.data!.copyWith(
            status: StatusType.loaded,
            stockPurchases: _stockPurchasesItems,
          ),
        ),
      );
    }
  }

  Future<void> getStockPurchasesDetail({required int id}) async {
    try {
      emit(Status(data: state.data!.copyWith(status: StatusType.loading)));
      final responses = await _dataRepository.getStockPurchaseDetail(id: id);
      emit(GetContact(
          data: state.data!.copyWith(
        status: StatusType.loaded,
        contact: responses.contact,
      )));
      emit(GetLocation(
          data: state.data!.copyWith(
        status: StatusType.loaded,
        location: responses.location,
      )));
      emit(GetPurchaseLine(
          data: state.data!.copyWith(
        status: StatusType.loaded,
        purchaseLine: responses.purchaseLines!,
      )));
      emit(GetStockPurchaseDetailResponse(
          data: state.data!.copyWith(
        status: StatusType.loaded,
        stockPurchaseDetailResponse: responses,
      )));
    } catch (e) {
      emit(Status(data: state.data!.copyWith(status: StatusType.error)));
      Helpers.handleErrorApp(error: e);
    }
  }

  Future<void> deleteStockPurchase({required int id}) async {
    UIHelpers.showCustomDialog(
      context: Get.context!,
      message: 'message_confirm_delete_stockPurchase'.tr,
      onComfirm: () async {
        UIHelpers.showLoading();
        try {
          await _dataRepository.deleteStockPurchase(id: id);
          await Future.delayed(const Duration(microseconds: 200), () {
            navigator!.pop();
            loadStockPurchases();
          });
        } catch (error) {
          debugPrint('Delete Stock Purchase ErrorL $error');
          Helpers.handleErrorApp(error: error);
        } finally {
          UIHelpers.dismissLoading();
        }
      },
      isShowClose: true,
    );
  }
}
