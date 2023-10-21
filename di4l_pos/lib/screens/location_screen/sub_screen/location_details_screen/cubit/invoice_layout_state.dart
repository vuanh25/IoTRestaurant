part of 'invoice_layout_cubit.dart';

@freezed
class InvoiceLayoutData with _$InvoiceLayoutData {
  const factory InvoiceLayoutData({
    @Default([]) List<InvoiceLayout> invoices,
    @Default([]) List<InvoiceLayout> originalInvoiceLayouts,
    @Default('') String error,
    @Default(StatusType.init) StatusType status,
    InvoiceLayout? posInvoice,
    InvoiceLayout? saleInvoice,
    InvoiceLayout? invoice,
    File? image,
  }) = _InvoiceLayoutData;
}

@freezed
class InvoiceLayoutState with _$InvoiceLayoutState {
  const factory InvoiceLayoutState.initial({InvoiceLayoutData? data}) = Initial;
  const factory InvoiceLayoutState.getLayouts({InvoiceLayoutData? data}) =
      GetLayouts;
  const factory InvoiceLayoutState.getLayout({InvoiceLayoutData? data}) =
      GetLayout;
  const factory InvoiceLayoutState.getPosLayout({InvoiceLayoutData? data}) =
      GetPosLayout;
  const factory InvoiceLayoutState.getSaleLayout({InvoiceLayoutData? data}) =
      GetSaleLayout;
  const factory InvoiceLayoutState.setLayout({InvoiceLayoutData? data}) =
      SetLayout;
  const factory InvoiceLayoutState.setPosLayout({InvoiceLayoutData? data}) =
      SetPosLayout;
  const factory InvoiceLayoutState.setSaleLayout({InvoiceLayoutData? data}) =
      SetSaleLayout;
  const factory InvoiceLayoutState.getLogo({InvoiceLayoutData? data}) = GetLogo;
}
