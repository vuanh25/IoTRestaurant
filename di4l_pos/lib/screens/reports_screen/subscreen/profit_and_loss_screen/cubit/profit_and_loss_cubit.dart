import 'package:bloc/bloc.dart';
import 'package:di4l_pos/common/helpers.dart';
import 'package:di4l_pos/common/ui_helpers.dart';
import 'package:di4l_pos/get_it.dart';
import 'package:di4l_pos/models/reports/requests/get_profit_and_loss_request.dart';
import 'package:di4l_pos/models/reports/responses/profit_andd_loss_response.dart';
import 'package:di4l_pos/repositories/data_repository.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profit_and_loss_cubit.freezed.dart';
part 'profit_and_loss_state.dart';

class ProfitAndLossCubit extends Cubit<ProfitAndLossState> {
  /// MARK: - Initials;
  final _dataRepository = getIt<DataRepository>();

  ProfitAndLossCubit()
      : super(ProfitAndLossState.initial(data: ProfitAndLossStateData()));

  /// Get Profit And Loss
  Future<void> getProfitAndLoss({String? startDate, String? endDate}) async {
    try {
      UIHelpers.showLoading();
      final _response = await _dataRepository.getProfitAndLoss(
          startDate: startDate, endDate: endDate);
      emit(ProfitAndLossState.getProfitAndLoss(
          data: state.data?.copyWith(profitAndLossResponse: _response)));
    } catch (error) {
      debugPrint('Error: $error');
      Helpers.handleErrorApp(error: error);
    } finally {
      UIHelpers.dismissLoading();
    }
  }
}
