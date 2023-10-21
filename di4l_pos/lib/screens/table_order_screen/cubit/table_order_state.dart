part of 'table_order_cubit.dart';

@freezed
class TableStateData with _$TableStateData {
  const factory TableStateData({
    @Default(StatusType.init) StatusType status,
    @Default([]) List<TableModel> tables,
    TableModel? table,
  }) = _TableStateData;
}

@freezed
class TableState with _$TableState {
  const factory TableState.initial({TableStateData? data}) = Initial;
  const factory TableState.status({TableStateData? data}) = Status;
  const factory TableState.getTable({TableStateData? data}) = GetTable;
  const factory TableState.getTableWithId({TableStateData? data}) = GetTableWithId;
}
