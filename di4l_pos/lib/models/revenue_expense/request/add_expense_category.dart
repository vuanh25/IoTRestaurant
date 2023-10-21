import 'dart:convert';

class AddExpenseCategoryRequest {
  String? name;
  String? code;

  AddExpenseCategoryRequest({
    required this.name,
    required this.code,
  });

  AddExpenseCategoryRequest copyWith({String? name, String? code}) =>
      AddExpenseCategoryRequest(
        name: name ?? this.name,
        code: code ?? this.code,
      );

  factory AddExpenseCategoryRequest.fromRawJson(String str) =>
      AddExpenseCategoryRequest.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AddExpenseCategoryRequest.fromJson(Map<String, dynamic> json) =>
      AddExpenseCategoryRequest(
        name: json['name'],
        code: json['code'],
      );

  Map<String, dynamic> toJson() => {
        'name': name,
        'code': code,
      };
}
