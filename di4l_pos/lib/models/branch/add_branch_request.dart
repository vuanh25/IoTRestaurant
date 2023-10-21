import 'dart:convert';

class AddBranchRequest {
  String? name;
  String? description;

  AddBranchRequest({
    required this.name,
    required this.description,
  });

  AddBranchRequest copyWith({String? name, String? description}) =>
      AddBranchRequest(
        name: name ?? this.name,
        description: description ?? this.description,
      );

  factory AddBranchRequest.fromRawJson(String str) =>
      AddBranchRequest.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AddBranchRequest.fromJson(Map<String, dynamic> json) =>
      AddBranchRequest(
        name: json['name'],
        description: json['description'],
      );

  Map<String, dynamic> toJson() => {
        'name': name,
        'description': description,
      };
}
