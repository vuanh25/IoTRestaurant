import 'package:bloc/bloc.dart';
import 'package:di4l_pos/common/global_formatter.dart';
import 'package:di4l_pos/common/helpers.dart';
import 'package:di4l_pos/common/ui_helpers.dart';
import 'package:di4l_pos/get_it.dart';
import 'package:di4l_pos/models/reports/responses/report_stock_response.dart';
import 'package:di4l_pos/repositories/data_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:tiengviet/tiengviet.dart';

import '../../../enums/status_type.dart';
import '../../../models/products/response/product_response.dart';

part 'stock_manage_cubit.freezed.dart';
part 'stock_manage_state.dart';

class StockManageCubit extends Cubit<StockManageState> {
  /// MARK: - Initials;
  final _dataRepository = getIt<DataRepository>();

  StockManageCubit()
      : super(const StockManageState.initial(data: StockManageStateData()));

  /// Get Report Stocks
  Future<void> getReportStockManages() async {
    try {
      UIHelpers.showLoading();
      emit(StockManageState.status(
          data: state.data?.copyWith(status: StatusType.loading)));
      final stockResponse = await _dataRepository.getReportStockManage();
      emit(
        StockManageState.getReportStockManages(
          data: state.data?.copyWith(
            reportStockManages: stockResponse.data ?? [],
            reportStockManagesOriginal: stockResponse.data ?? [],
            status: StatusType.loaded,
          ),
        ),
      );
    } catch (error) {
      Helpers.handleErrorApp(error: error);
    } finally {
      UIHelpers.dismissLoading();
    }
  }

  Future<void> searchProductStockReports({required String searchText}) async {
    List<ReportStockData> reportStockOriginal = [
      ...state.data!.reportStockManagesOriginal
    ];
    emit(StockManageState.status(
        data: state.data?.copyWith(status: StatusType.loading)));
    if (searchText.isEmpty) {
      emit(
        StockManageState.getReportStockManages(
          data: state.data?.copyWith(
            reportStockManages: reportStockOriginal,
            status: StatusType.loaded,
          ),
        ),
      );
    } else {
      final searchTextVN = TiengViet.parse(searchText.toLowerCase());
      final reportStockData = reportStockOriginal
          .where(
            (ReportStockData element) =>
                element.product!.toLowerCase().contains(searchTextVN),
          )
          .toList();
      emit(StockManageState.getReportStockManages(
          data: state.data?.copyWith(
              reportStockManages: reportStockData, status: StatusType.loaded)));
    }
  }

  // For the sort functionality: 0 is descending, 1 is ascending

  void changeValueSortMode(int value) {
    List<ReportStockData> reportStock = [...state.data!.reportStockManages];
    emit(StockManageState.status(
        data: state.data?.copyWith(status: StatusType.loading)));
    reportStock.sort((a, b) {
      final productOneStockValue = double.parse(a.unitPrice ?? "0");
      final productTwoStockValue = double.parse(b.unitPrice ?? "0");
      if (value == 0) {
        return productTwoStockValue.compareTo(productOneStockValue);
      } else {
        return productOneStockValue.compareTo(productTwoStockValue);
      }
    });
    emit(
      StockManageState.changeValueSortMode(
        data: state.data!.copyWith(
          sortByValueMode: value,
          status: StatusType.loaded,
          reportStockManages: reportStock,
          sortByStockMode: 0,
          sortByAlphabetMode: 0,
        ),
      ),
    );
  }

  void changeStockSortMode(int value) {
    List<ReportStockData> reportStock = [...state.data!.reportStockManages];
    emit(StockManageState.status(
        data: state.data?.copyWith(status: StatusType.loading)));
    reportStock.sort((a, b) {
      final productOneStock = double.parse(a.stock ?? "0");
      final productTwoStock = double.parse(b.stock ?? "0");
      if (value == 0) {
        return productTwoStock.compareTo(productOneStock);
      } else {
        return productOneStock.compareTo(productTwoStock);
      }
    });
    emit(
      StockManageState.changeStockSortMode(
        data: state.data!.copyWith(
          sortByStockMode: value,
          status: StatusType.loaded,
          reportStockManages: reportStock,
          sortByAlphabetMode: 0,
          sortByValueMode: 0,
        ),
      ),
    );
  }

  void changeAlphabeticSortMode(int value) {
    List<ReportStockData> reportStock = [...state.data!.reportStockManages];
    emit(StockManageState.status(
        data: state.data?.copyWith(status: StatusType.loading)));
    reportStock.sort((a, b) {
      final productOneName = a.product ?? "";
      final productTwoName = b.product ?? "";
      if (value == 0) {
        return productTwoName.compareTo(productOneName);
      } else {
        return productOneName.compareTo(productTwoName);
      }
    });
    emit(
      StockManageState.changeAlphabeticSortMode(
        data: state.data!.copyWith(
          sortByAlphabetMode: value,
          status: StatusType.loaded,
          reportStockManages: reportStock,
          sortByStockMode: 0,
          sortByValueMode: 0,
        ),
      ),
    );
  }

  void isOpenSearch(bool value) {
    emit(StockManageState.isOpenSearch(
        data: state.data!.copyWith(isOpenSearch: value)));
  }

  void isCategoryScreen(bool value) {
    emit(StockManageState.isCategoryScreen(
        data: state.data!.copyWith(isCategoryScreen: value)));
  }
}
