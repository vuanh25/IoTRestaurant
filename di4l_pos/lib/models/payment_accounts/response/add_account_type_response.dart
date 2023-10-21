// To parse this JSON data, do
//
//     final addAccountTypeResponse = addAccountTypeResponseFromJson(jsonString);

import 'dart:convert';

class AddAccountTypeResponse {
    bool? success;
    String? msg;

    AddAccountTypeResponse({
        this.success,
        this.msg,
    });

    AddAccountTypeResponse copyWith({
        bool? success,
        String? msg,
    }) => 
        AddAccountTypeResponse(
            success: success ?? this.success,
            msg: msg ?? this.msg,
        );

    factory AddAccountTypeResponse.fromRawJson(String str) => AddAccountTypeResponse.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory AddAccountTypeResponse.fromJson(Map<String, dynamic> json) => AddAccountTypeResponse(
        success: json["success"],
        msg: json["msg"],
    );

    Map<String, dynamic> toJson() => {
        "success": success,
        "msg": msg,
    };
}
