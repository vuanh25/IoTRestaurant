part of 'add_printer_cubit.dart';

@freezed
class AddPrinterStateData with _$AddPrinterStateData {
  const factory AddPrinterStateData({
    @Default(StatusType.init) StatusType status,
    String? selectedConnectionType,
    String? selectedCapabilityNetwork,
    String? error,
  }) = _AddPrinterStateData;
}

@freezed
class AddPrinterState with _$AddPrinterState {
  const factory AddPrinterState.initial({AddPrinterStateData? data}) = Initial;
  const factory AddPrinterState.status({AddPrinterStateData? data}) = Status;
  const factory AddPrinterState.error({AddPrinterStateData? data}) = Error;
  const factory AddPrinterState.setSelectedConnectionType(
      {AddPrinterStateData? data}) = SetSelectedConnectionType;
  const factory AddPrinterState.setSelectedCapabilityProfile(
      {AddPrinterStateData? data}) = SetSelectedCapabilityNetwork;
}
