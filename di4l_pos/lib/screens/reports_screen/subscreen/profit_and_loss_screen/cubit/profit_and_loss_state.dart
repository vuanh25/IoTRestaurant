part of 'profit_and_loss_cubit.dart';

@freezed
class ProfitAndLossStateData with _$ProfitAndLossStateData {
  const factory ProfitAndLossStateData({
    ProfitAndLossResponse? profitAndLossResponse,
  }) = _ProfitAndLossStateData;
}

@freezed
class ProfitAndLossState with _$ProfitAndLossState {
  const factory ProfitAndLossState.initial({ProfitAndLossStateData? data}) =
      Initial;
  const factory ProfitAndLossState.getProfitAndLoss(
      {ProfitAndLossStateData? data}) = GetProfitAndLoss;
}
