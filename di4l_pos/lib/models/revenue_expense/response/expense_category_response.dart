import 'dart:convert';

class ExpenseCategoryResponse {
  ExpenseCategoryResponse({this.data});

  List<ExpenseCategory>? data;

  ExpenseCategoryResponse copyWith({List<ExpenseCategory>? data}) =>
      ExpenseCategoryResponse(data: data ?? this.data);

  factory ExpenseCategoryResponse.fromRawJson(String str) =>
      ExpenseCategoryResponse.fromJson(json.decode(str));

  String? toRawJson() => json.encode(toJson());

  factory ExpenseCategoryResponse.fromJson(Map<String?, dynamic> json) =>
      ExpenseCategoryResponse(
        data: json["data"] == null
            ? null
            : List<ExpenseCategory>.from(
                json["data"].map((x) => ExpenseCategory.fromJson(x))),
      );

  Map<String?, dynamic> toJson() => {
        "data": data == null
            ? null
            : List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}

class AddExpenseCategoryResponse {
  AddExpenseCategoryResponse({this.data});

  ExpenseCategory? data;

  AddExpenseCategoryResponse copyWith({ExpenseCategory? data}) =>
      AddExpenseCategoryResponse(data: data ?? this.data);

  factory AddExpenseCategoryResponse.fromRawJson(String str) =>
      AddExpenseCategoryResponse.fromJson(json.decode(str));

  String? toRawJson() => json.encode(toJson());

  factory AddExpenseCategoryResponse.fromJson(Map<String?, dynamic> json) =>
      AddExpenseCategoryResponse(
        data: ExpenseCategory.fromJson(json['data']),
      );

  Map<String?, dynamic> toJson() => {
        "data": data!.toJson(),
      };
}

class ExpenseCategory {
  int? id;
  String? name;
  int? businessId;
  String? code;
  int? parentId;
  String? deletedAt;
  String? createdAt;
  String? updatedAt;

  ExpenseCategory({
    this.id,
    this.name,
    this.businessId,
    this.code,
    this.parentId,
    this.deletedAt,
    this.createdAt,
    this.updatedAt,
  });

  ExpenseCategory.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    businessId = json['business_id'];
    code = json['code'];
    parentId = json['parent_id'];
    deletedAt = json['deleted_at'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['id'] = id;
    data['name'] = name;
    data['business_id'] = businessId;
    data['code'] = code;
    data['parent_id'] = parentId;
    data['deleted_at'] = deletedAt;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}
