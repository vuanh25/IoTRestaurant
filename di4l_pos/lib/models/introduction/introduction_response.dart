import 'dart:convert';

class IntroductionResponse {
  IntroductionResponse({
    this.data,
  });

  List<IntroductionModel>? data;

  IntroductionResponse copyWith({
    List<IntroductionModel>? data,
  }) =>
      IntroductionResponse(
        data: data ?? this.data,
      );

  factory IntroductionResponse.fromRawJson(String str) =>
      IntroductionResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory IntroductionResponse.fromJson(List<dynamic> json) =>
      IntroductionResponse(
        data: json == null
            ? null
            : List<IntroductionModel>.from(
                json.map((x) => IntroductionModel.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "data": data == null
            ? null
            : List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}

class IntroductionModel {
  IntroductionModel({
    this.id,
    this.businessId,
    this.title,
    this.description,
    this.image,
    this.createdAt,
    this.updatedAt,
    this.imagUrl,
  });

  int? id;
  int? businessId;
  String? title;
  String? description;
  dynamic image;
  String? createdAt;
  String? updatedAt;
  String? imagUrl;

  IntroductionModel copyWith({
    int? id,
    int? businessId,
    String? title,
    String? description,
    dynamic image,
    String? createdAt,
    String? updatedAt,
    String? imagUrl,
  }) =>
      IntroductionModel(
        id: id ?? this.id,
        businessId: businessId ?? this.businessId,
        title: title ?? this.title,
        description: description ?? this.description,
        image: image ?? this.image,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        imagUrl: imagUrl ?? this.imagUrl,
      );

  factory IntroductionModel.fromRawJson(String str) =>
      IntroductionModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory IntroductionModel.fromJson(Map<String, dynamic> json) =>
      IntroductionModel(
        id: json["id"],
        businessId: json["business_id"],
        title: json["title"],
        description: json["description"],
        image: json["image"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
        imagUrl: json["image_url"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "business_id": businessId,
        "title": title,
        "description": description,
        "image": image,
        "created_at": createdAt,
        "updated_at": updatedAt,
        "image_url": imagUrl,
      };
}
