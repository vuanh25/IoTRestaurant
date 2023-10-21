part of 'ledger_cubit.dart';

@freezed
class LedgerStateData with _$LedgerStateData {
  const factory LedgerStateData({
    @Default(StatusType.init) StatusType status,
    Data? ledgers,
    // @Default([]) List<LedgerData> suppliersOriginal,
  }) = _LedgerStateData;
}

@freezed
class LedgerState with _$LedgerState {
  const factory LedgerState.initial({LedgerStateData? data}) = Initial;
  const factory LedgerState.status({LedgerStateData? data}) = Status;
  const factory LedgerState.getLedger({LedgerStateData? data}) = GetLedger;
}
