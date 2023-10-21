import 'dart:convert';

import 'package:di4l_pos/models/customer-group/response/customer_group_response.dart';

class AddCustomerGroupResponse {
  AddCustomerGroupResponse({
    this.data,
  });

  CustomerGroupModel? data;

  AddCustomerGroupResponse copyWith({
    CustomerGroupModel? data,
  }) =>
      AddCustomerGroupResponse(
        data: data ?? this.data,
      );

  factory AddCustomerGroupResponse.fromRawJson(String str) =>
      AddCustomerGroupResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AddCustomerGroupResponse.fromJson(Map<String, dynamic> json) =>
      AddCustomerGroupResponse(
        data: json["data"] == null
            ? null
            : CustomerGroupModel.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "data": data == null ? null : data!.toJson(),
      };
}
