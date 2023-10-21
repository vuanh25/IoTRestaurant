class InvoiceSchema {
  int? id;
  String? name;
  String? schemeType;
  String? prefix;
  int? startNumber;
  int? invoiceCount;
  int? totalDigits;
  int? isDefault;

  InvoiceSchema(
      {this.id,
      this.name,
      this.schemeType,
      this.prefix,
      this.startNumber,
      this.invoiceCount,
      this.totalDigits,
      this.isDefault});

  InvoiceSchema.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    schemeType = json['scheme_type'];
    prefix = json['prefix'];
    startNumber = json['start_number'];
    invoiceCount = json['invoice_count'];
    totalDigits = json['total_digits'];
    isDefault = json['is_default'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['scheme_type'] = schemeType;
    data['prefix'] = prefix;
    data['start_number'] = startNumber;
    data['invoice_count'] = invoiceCount;
    data['total_digits'] = totalDigits;
    data['is_default'] = isDefault;
    return data;
  }
}
