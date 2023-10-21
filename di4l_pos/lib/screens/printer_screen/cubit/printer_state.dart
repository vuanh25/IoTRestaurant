part of 'printer_cubit.dart';

@freezed
class PrinterStateData with _$PrinterStateData {
  const factory PrinterStateData({
    @Default(StatusType.init) StatusType status,
    @Default([]) List<Printer> printers,
    @Default([]) List<Printer> printersOriginal,
    @Default(false) bool isSearching,
    Printer? printer,
  }) = _PrinterStateData;
}

@freezed
class PrinterState with _$PrinterState {
  const factory PrinterState.initial({PrinterStateData? data}) = Initial;
  const factory PrinterState.status({PrinterStateData? data}) = Status;
  const factory PrinterState.getPrinters({PrinterStateData? data}) =
      GetPrinters;
  const factory PrinterState.isSearching({PrinterStateData? data}) =
      IsSearching;
}
