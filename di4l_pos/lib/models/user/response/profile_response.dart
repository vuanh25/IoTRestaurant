import 'dart:convert';

class ProfileResponse {
  ProfileResponse({
    this.userType,
    this.id,
    this.firstName,
    this.lastName,
    this.contactNo,
    this.media,
  });

  int? id;
  String? userType;
  String? firstName;
  String? lastName;
  String? contactNo;
  Media? media;

  ProfileResponse copyWith({
    String? userType,
    int? id,
    String? firstName,
    String? lastName,
    String? contactNo,
    Media? media,
  }) =>
      ProfileResponse(
        userType: userType ?? this.userType,
        id: id ?? this.id,
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName,
        contactNo: contactNo ?? this.contactNo,
        media: media ?? this.media,
      );

  factory ProfileResponse.fromRawJson(String str) =>
      ProfileResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ProfileResponse.fromJson(Map<String, dynamic> json) =>
      ProfileResponse(
        userType: json["user_type"],
        id: json["id"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        contactNo: json["contact_no"],
        media: json["media"] == null ? null : Media.fromJson(json["media"]),
      );

  Map<String, dynamic> toJson() => {
        "user_type": userType,
        "id": id,
        "first_name": firstName,
        "last_name": lastName,
        "contact_no": contactNo,
        "media": media == null ? null : media!.toJson(),
      };

  String getFullName() {
    return '${firstName ?? ''} ${lastName ?? ''}';
  }
}

class Media {
  int? id;
  int? businessId;
  String? fileName;
  dynamic description;
  int? uploadedBy;
  String? modelType;
  dynamic woocommerceMediaId;
  dynamic modelMediaType;
  int? modelId;
  String? createdAt;
  String? updatedAt;
  String? displayName;
  String? displayUrl;

  Media(
      {this.id,
      this.businessId,
      this.fileName,
      this.description,
      this.uploadedBy,
      this.modelType,
      this.woocommerceMediaId,
      this.modelMediaType,
      this.modelId,
      this.createdAt,
      this.updatedAt,
      this.displayName,
      this.displayUrl});

  Media.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    businessId = json['business_id'];
    fileName = json['file_name'];
    description = json['description'];
    uploadedBy = json['uploaded_by'];
    modelType = json['model_type'];
    woocommerceMediaId = json['woocommerce_media_id'];
    modelMediaType = json['model_media_type'];
    modelId = json['model_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    displayName = json['display_name'];
    displayUrl = json['display_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['id'] = id;
    data['business_id'] = businessId;
    data['file_name'] = fileName;
    data['description'] = description;
    data['uploaded_by'] = uploadedBy;
    data['model_type'] = modelType;
    data['woocommerce_media_id'] = woocommerceMediaId;
    data['model_media_type'] = modelMediaType;
    data['model_id'] = modelId;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    data['display_name'] = displayName;
    data['display_url'] = displayUrl;
    return data;
  }
}
