// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';
class UpdateLocationSettingsRequest {
  int? printReceiptOnInvoice;
  String? receiptPrinterType;
  int? printerId;
  int? invoiceLayoutId;
  int? invoiceSchemeId;

  UpdateLocationSettingsRequest({
    this.printReceiptOnInvoice,
    this.receiptPrinterType,
    this.printerId,
    this.invoiceLayoutId,
    this.invoiceSchemeId,
  });

  UpdateLocationSettingsRequest.fromJson(Map<String, dynamic> json) {
    printReceiptOnInvoice = json['print_receipt_on_invoice'];
    receiptPrinterType = json['receipt_printer_type'];
    printerId = json['printer_id'];
    invoiceLayoutId = json['invoice_layout_id'];
    invoiceSchemeId = json['invoice_scheme_id'];
  }

  factory UpdateLocationSettingsRequest.fromRawJson(String str) =>
      UpdateLocationSettingsRequest.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());


  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['print_receipt_on_invoice'] = printReceiptOnInvoice;
    data['receipt_printer_type'] = receiptPrinterType;
    data['printer_id'] = printerId;
    data['invoice_layout_id'] = invoiceLayoutId;
    data['invoice_scheme_id'] = invoiceSchemeId;
    return data;
  }

  UpdateLocationSettingsRequest copyWith({
    int? printReceiptOnInvoice,
    String? receiptPrinterType,
    int? printerId,
    int? invoiceLayoutId,
    int? invoiceSchemeId,
  }) {
    return UpdateLocationSettingsRequest(
      printReceiptOnInvoice: printReceiptOnInvoice ?? this.printReceiptOnInvoice,
      receiptPrinterType: receiptPrinterType ?? this.receiptPrinterType,
      printerId: printerId ?? this.printerId,
      invoiceLayoutId: invoiceLayoutId ?? this.invoiceLayoutId,
      invoiceSchemeId: invoiceSchemeId ?? this.invoiceSchemeId,
    );
  }
}
