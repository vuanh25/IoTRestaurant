part of 'invoice_cubit.dart';

@freezed
class InvoiceData with _$InvoiceData {
  const factory InvoiceData({
    @Default([]) List<InvoiceSchema> invoices,
    @Default([]) List<InvoiceSchema> originalInvoices,
    @Default(StatusType.init) StatusType status,
    @Default('') String error,
    @Default(false) bool isSearching,
    InvoiceSchema? invoice,
  }) = _InvoiceData;
}

@freezed
class InvoiceState with _$InvoiceState {
  const factory InvoiceState.initial({InvoiceData? data}) = Initial;
  const factory InvoiceState.getInvoices({InvoiceData? data}) = GetInvoices;
  const factory InvoiceState.getInvoice({InvoiceData? data}) = GetInvoice;
  const factory InvoiceState.setInvoice({InvoiceData? data}) = SetInvoice;
  const factory InvoiceState.isSearching({InvoiceData? data}) = IsSearching;
}
