import 'package:bloc/bloc.dart';
import 'package:di4l_pos/common/helpers.dart';
import 'package:di4l_pos/common/ui_helpers.dart';
import 'package:di4l_pos/get_it.dart';
import 'package:di4l_pos/models/reports/responses/report_stock_response.dart';
import 'package:di4l_pos/repositories/data_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'stock_state.dart';
part 'stock_cubit.freezed.dart';

class StockCubit extends Cubit<StockState> {
  /// MARK: - Initials;
  final _dataRepository = getIt<DataRepository>();

  StockCubit() : super(StockState.initial(data: StockStateData()));

  /// Get Report Stocks
  Future<void> getReportStocks() async {
    try {
      UIHelpers.showLoading();
      final _response = await _dataRepository.getReportStock();
      emit(StockState.getReportStocks(
          data: state.data?.copyWith(reportStocks: _response.data ?? [])));
    } catch (error) {
      Helpers.handleErrorApp(error: error);
    } finally {
      UIHelpers.dismissLoading();
    }
  }
}
