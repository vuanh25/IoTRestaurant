import 'dart:convert';

import 'package:di4l_pos/models/printer/response/printer_response.dart';

class   AddPrinterResponse {
  AddPrinterResponse({
    this.data,
  });

  Printer? data;

  AddPrinterResponse copyWith({
    Printer? data,
  }) =>
      AddPrinterResponse(
        data: data ?? this.data,
      );

  factory AddPrinterResponse.fromRawJson(String str) =>
      AddPrinterResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AddPrinterResponse.fromJson(Map<String, dynamic> json) =>
      AddPrinterResponse(
        data: json["data"] == null ? null : Printer.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "data": data == null ? null : data!.toJson(),
      };
}
