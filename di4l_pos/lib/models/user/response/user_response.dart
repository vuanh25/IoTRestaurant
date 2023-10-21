import 'dart:convert';

class UserResponse {
  UserResponse({
    this.data,
  });

  User? data;

  UserResponse copyWith({
    User? data,
  }) =>
      UserResponse(
        data: data ?? this.data,
      );

  factory UserResponse.fromRawJson(String str) =>
      UserResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory UserResponse.fromJson(Map<String, dynamic> json) => UserResponse(
        data: json["data"] == null ? null : User.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "data": data == null ? null : data!.toJson(),
      };
}

class User {
  User({
    this.id,
    this.userType,
    this.surname,
    this.firstName,
    this.lastName,
    this.username,
    this.email,
    this.language,
    this.contactNo,
    this.address,
    this.googleId,
    this.appleId,
    this.businessId,
    this.maxSalesDiscountPercent,
    this.allowLogin,
    this.essentialsDepartmentId,
    this.essentialsDesignationId,
    this.status,
    this.crmContactId,
    this.isCmmsnAgnt,
    this.cmmsnPercent,
    this.selectedContacts,
    this.dob,
    this.gender,
    this.maritalStatus,
    this.bloodGroup,
    this.contactNumber,
    this.fbLink,
    this.twitterLink,
    this.socialMedia1,
    this.socialMedia2,
    this.permanentAddress,
    this.currentAddress,
    this.guardianName,
    this.customField1,
    this.customField2,
    this.customField3,
    this.customField4,
    this.bankDetails,
    this.idProofName,
    this.idProofNumber,
    this.deletedAt,
    this.createdAt,
    this.updatedAt,
  });

  int? id;
  String? userType;
  String? surname;
  String? firstName;
  dynamic lastName;
  String? username;
  String? email;
  String? language;
  dynamic contactNo;
  dynamic address;
  String? googleId;
  String? appleId;
  int? businessId;
  dynamic maxSalesDiscountPercent;
  int? allowLogin;
  dynamic essentialsDepartmentId;
  dynamic essentialsDesignationId;
  String? status;
  dynamic crmContactId;
  int? isCmmsnAgnt;
  String? cmmsnPercent;
  int? selectedContacts;
  dynamic dob;
  dynamic gender;
  dynamic maritalStatus;
  dynamic bloodGroup;
  dynamic contactNumber;
  dynamic fbLink;
  dynamic twitterLink;
  dynamic socialMedia1;
  dynamic socialMedia2;
  dynamic permanentAddress;
  dynamic currentAddress;
  dynamic guardianName;
  dynamic customField1;
  dynamic customField2;
  dynamic customField3;
  dynamic customField4;
  dynamic bankDetails;
  dynamic idProofName;
  dynamic idProofNumber;
  dynamic deletedAt;
  String? createdAt;
  String? updatedAt;

  User copyWith({
    int? id,
    String? userType,
    String? surname,
    String? firstName,
    dynamic lastName,
    String? username,
    String? email,
    String? language,
    dynamic contactNo,
    dynamic address,
    String? googleId,
    String? appleId,
    int? businessId,
    dynamic maxSalesDiscountPercent,
    int? allowLogin,
    dynamic essentialsDepartmentId,
    dynamic essentialsDesignationId,
    String? status,
    dynamic crmContactId,
    int? isCmmsnAgnt,
    String? cmmsnPercent,
    int? selectedContacts,
    dynamic dob,
    dynamic gender,
    dynamic maritalStatus,
    dynamic bloodGroup,
    dynamic contactNumber,
    dynamic fbLink,
    dynamic twitterLink,
    dynamic socialMedia1,
    dynamic socialMedia2,
    dynamic permanentAddress,
    dynamic currentAddress,
    dynamic guardianName,
    dynamic customField1,
    dynamic customField2,
    dynamic customField3,
    dynamic customField4,
    dynamic bankDetails,
    dynamic idProofName,
    dynamic idProofNumber,
    dynamic deletedAt,
    String? createdAt,
    String? updatedAt,
  }) =>
      User(
        id: id ?? this.id,
        userType: userType ?? this.userType,
        surname: surname ?? this.surname,
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName,
        username: username ?? this.username,
        email: email ?? this.email,
        language: language ?? this.language,
        contactNo: contactNo ?? this.contactNo,
        address: address ?? this.address,
        googleId: googleId ?? this.googleId,
        appleId: appleId ?? this.appleId,
        businessId: businessId ?? this.businessId,
        maxSalesDiscountPercent:
            maxSalesDiscountPercent ?? this.maxSalesDiscountPercent,
        allowLogin: allowLogin ?? this.allowLogin,
        essentialsDepartmentId:
            essentialsDepartmentId ?? this.essentialsDepartmentId,
        essentialsDesignationId:
            essentialsDesignationId ?? this.essentialsDesignationId,
        status: status ?? this.status,
        crmContactId: crmContactId ?? this.crmContactId,
        isCmmsnAgnt: isCmmsnAgnt ?? this.isCmmsnAgnt,
        cmmsnPercent: cmmsnPercent ?? this.cmmsnPercent,
        selectedContacts: selectedContacts ?? this.selectedContacts,
        dob: dob ?? this.dob,
        gender: gender ?? this.gender,
        maritalStatus: maritalStatus ?? this.maritalStatus,
        bloodGroup: bloodGroup ?? this.bloodGroup,
        contactNumber: contactNumber ?? this.contactNumber,
        fbLink: fbLink ?? this.fbLink,
        twitterLink: twitterLink ?? this.twitterLink,
        socialMedia1: socialMedia1 ?? this.socialMedia1,
        socialMedia2: socialMedia2 ?? this.socialMedia2,
        permanentAddress: permanentAddress ?? this.permanentAddress,
        currentAddress: currentAddress ?? this.currentAddress,
        guardianName: guardianName ?? this.guardianName,
        customField1: customField1 ?? this.customField1,
        customField2: customField2 ?? this.customField2,
        customField3: customField3 ?? this.customField3,
        customField4: customField4 ?? this.customField4,
        bankDetails: bankDetails ?? this.bankDetails,
        idProofName: idProofName ?? this.idProofName,
        idProofNumber: idProofNumber ?? this.idProofNumber,
        deletedAt: deletedAt ?? this.deletedAt,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );

  factory User.fromRawJson(String str) => User.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        userType: json["user_type"],
        surname: json["surname"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        username: json["username"],
        email: json["email"],
        language: json["language"],
        contactNo: json["contact_no"],
        address: json["address"],
        googleId: json["google_id"],
        appleId: json["apple_id"],
        businessId: json["business_id"],
        maxSalesDiscountPercent: json["max_sales_discount_percent"],
        allowLogin: json["allow_login"],
        essentialsDepartmentId: json["essentials_department_id"],
        essentialsDesignationId: json["essentials_designation_id"],
        status: json["status"],
        crmContactId: json["crm_contact_id"],
        isCmmsnAgnt:
            json["is_cmmsn_agnt"],
        cmmsnPercent:
            json["cmmsn_percent"],
        selectedContacts: json["selected_contacts"],
        dob: json["dob"],
        gender: json["gender"],
        maritalStatus: json["marital_status"],
        bloodGroup: json["blood_group"],
        contactNumber: json["contact_number"],
        fbLink: json["fb_link"],
        twitterLink: json["twitter_link"],
        socialMedia1: json["social_media_1"],
        socialMedia2: json["social_media_2"],
        permanentAddress: json["permanent_address"],
        currentAddress: json["current_address"],
        guardianName: json["guardian_name"],
        customField1: json["custom_field_1"],
        customField2: json["custom_field_2"],
        customField3: json["custom_field_3"],
        customField4: json["custom_field_4"],
        bankDetails: json["bank_details"],
        idProofName: json["id_proof_name"],
        idProofNumber: json["id_proof_number"],
        deletedAt: json["deleted_at"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "user_type": userType,
        "surname": surname,
        "first_name": firstName,
        "last_name": lastName,
        "username": username,
        "email": email,
        "language": language,
        "contact_no": contactNo,
        "address": address,
        "google_id": googleId,
        "apple_id": appleId,
        "business_id": businessId,
        "max_sales_discount_percent": maxSalesDiscountPercent,
        "allow_login": allowLogin,
        "essentials_department_id": essentialsDepartmentId,
        "essentials_designation_id": essentialsDesignationId,
        "status": status,
        "crm_contact_id": crmContactId,
        "is_cmmsn_agnt": isCmmsnAgnt,
        "cmmsn_percent": cmmsnPercent,
        "selected_contacts": selectedContacts,
        "dob": dob,
        "gender": gender,
        "marital_status": maritalStatus,
        "blood_group": bloodGroup,
        "contact_number": contactNumber,
        "fb_link": fbLink,
        "twitter_link": twitterLink,
        "social_media_1": socialMedia1,
        "social_media_2": socialMedia2,
        "permanent_address": permanentAddress,
        "current_address": currentAddress,
        "guardian_name": guardianName,
        "custom_field_1": customField1,
        "custom_field_2": customField2,
        "custom_field_3": customField3,
        "custom_field_4": customField4,
        "bank_details": bankDetails,
        "id_proof_name": idProofName,
        "id_proof_number": idProofNumber,
        "deleted_at": deletedAt,
        "created_at": createdAt,
        "updated_at": updatedAt,
      };

  String getFullName() {
    return '${surname ?? ''}  ${firstName ?? ''} ${lastName ?? ''}';
  }
}
