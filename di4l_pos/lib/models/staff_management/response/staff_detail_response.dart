import 'dart:convert';

class StaffDetailResponse {
  StaffDetailResponse({
    this.staff,
    this.role,
    this.users,
  });

  StaffDetail? staff;
  String? role;
  Map<String, dynamic>? users;
  

  StaffDetailResponse copyWith({
    StaffDetail? staff,
    String? role,
    Map<String, dynamic>? users
  }) =>
      StaffDetailResponse(
        staff: staff ?? this.staff,
        role: role ?? this.role,
        users: users ?? this.users,
      );

  factory StaffDetailResponse.fromRawJson(String str) =>
      StaffDetailResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory StaffDetailResponse.fromJson(Map<String, dynamic> json) => StaffDetailResponse(
        staff: json["user"] == null
            ? null
            : StaffDetail.fromJson(json["user"]),
        role: json["role"][0],
        users: json["users"]
      );

  Map<String, dynamic> toJson() => {
        "staff": staff == null
            ? null
            : staff!.toJson(),
        "role": role,
        "users": users
      };
}

class StaffDetail {
  StaffDetail({
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
    this.di4lKoken,
    this.apiKoken,
    this.googleId,
    this.appleId,
    this.businessId,
    this.essentialsDepartmentId,
    this.essentialsDesignationId,
    this.essentialsSalary,
    this.essentialsPayPeriod,
    this.essentialsPayCycle,
    this.maxSalesDiscountPercent,
    this.allowLogin,
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
    this.altNumber,
    this.familyNumber,
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
    this.locationId,
    this.crmDepartment,
    this.crmDesignation,
    this.deletedAt,
    this.createdAt,
    this.updatedAt,
    this.numberId,
    this.essentialsCost,
    this.essentialsCostPeriod,
    this.experience,
    this.subjectHandle,
    this.achievementsOfStudents,
    this.certificate,
    this.verifyEmailAt,
    this.referralBy,
    this.affiliateAmount,
    this.contactAccess,
  });

    int? id;
    String? userType;
    String? surname;
    String? firstName;
    String? lastName;
    String? username;
    String? email;
    String? language;
    dynamic contactNo;
    dynamic address;
    dynamic di4lKoken;
    dynamic apiKoken;
    dynamic googleId;
    dynamic appleId;
    int? businessId;
    int? essentialsDepartmentId;
    int? essentialsDesignationId;
    String? essentialsSalary;
    String? essentialsPayPeriod;
    dynamic essentialsPayCycle;
    dynamic maxSalesDiscountPercent;
    int? allowLogin;
    String? status;
    int? crmContactId;
    int? isCmmsnAgnt;
    String? cmmsnPercent;
    int? selectedContacts;
    dynamic dob;
    String? gender;
    String? maritalStatus;
    String? bloodGroup;
    String? contactNumber;
    String? altNumber;
    String? familyNumber;
    String? fbLink;
    String? twitterLink;
    String? socialMedia1;
    String? socialMedia2;
    String? permanentAddress;
    String? currentAddress;
    String? guardianName;
    String? customField1;
    String? customField2;
    String? customField3;
    String? customField4;
    BankDetail? bankDetails;
    String? idProofName;
    dynamic idProofNumber;
    int? locationId;
    dynamic crmDepartment;
    dynamic crmDesignation;
    dynamic deletedAt;
    dynamic createdAt;
    dynamic updatedAt;
    dynamic numberId;
    String? essentialsCost;
    String? essentialsCostPeriod;
    dynamic experience;
    dynamic subjectHandle;
    dynamic achievementsOfStudents;
    dynamic certificate;
    dynamic verifyEmailAt;
    int? referralBy;
    String? affiliateAmount;
    dynamic contactAccess;

  StaffDetail copyWith({
    int? id,
    String? userType,
    String? surname,
    String? firstName,
    String? lastName,
    String? username,
    String? email,
    String? language,
    dynamic contactNo,
    dynamic address,
    dynamic di4lKoken,
    dynamic apiKoken,
    dynamic googleId,
    dynamic appleId,
    int? businessId,
    int? essentialsDepartmentId,
    int? essentialsDesignationId,
    String? essentialsSalary,
    String? essentialsPayPeriod,
    dynamic essentialsPayCycle,
    dynamic maxSalesDiscountPercent,
    int? allowLogin,
    String? status,
    int? crmContactId,
    int? isCmmsnAgnt,
    String? cmmsnPercent,
    int? selectedContacts,
    dynamic dob,
    String? gender,
    String? maritalStatus,
    String? bloodGroup,
    String? contactNumber,
    String? altNumber,
    String? familyNumber,
    String? fbLink,
    String? twitterLink,
    String? socialMedia1,
    String? socialMedia2,
    String? permanentAddress,
    String? currentAddress,
    String? guardianName,
    String? customField1,
    String? customField2,
    String? customField3,
    String? customField4,
    BankDetail? bankDetails,
    String? idProofName,
    dynamic idProofNumber,
    int? locationId,
    dynamic crmDepartment,
    dynamic crmDesignation,
    dynamic deletedAt,
    dynamic createdAt,
    dynamic updatedAt,
    dynamic numberId,
    String? essentialsCost,
    String? essentialsCostPeriod,
    dynamic experience,
    dynamic subjectHandle,
    dynamic achievementsOfStudents,
    dynamic certificate,
    dynamic verifyEmailAt,
    int? referralBy,
    String? affiliateAmount,
    dynamic contactAccess,
  }) =>
      StaffDetail(
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
        di4lKoken: di4lKoken ?? this.di4lKoken,
        apiKoken: apiKoken ?? this.apiKoken,
        googleId: googleId ?? this.googleId,
        appleId: appleId ?? this.appleId,
        businessId: businessId ?? this.businessId,
        essentialsDepartmentId: essentialsDepartmentId ?? this.essentialsDepartmentId,
        essentialsDesignationId: essentialsDesignationId ?? this.essentialsDesignationId,
        essentialsSalary: essentialsSalary ?? this.essentialsSalary,
        essentialsPayPeriod: essentialsPayPeriod ?? this.essentialsPayPeriod,
        essentialsPayCycle: essentialsPayCycle ?? this.essentialsPayCycle,
        maxSalesDiscountPercent: maxSalesDiscountPercent ?? this.maxSalesDiscountPercent,
        allowLogin: allowLogin ?? this.allowLogin,
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
        altNumber: altNumber ?? this.altNumber,
        familyNumber: familyNumber ?? this.familyNumber,
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
        locationId: locationId ?? this.locationId,
        crmDepartment: crmDepartment ?? this.crmDepartment,
        crmDesignation: crmDesignation ?? this.crmDesignation,
        deletedAt: deletedAt ?? this.deletedAt,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        numberId: numberId ?? this.numberId,
        essentialsCost: essentialsCost ?? this.essentialsCost,
        essentialsCostPeriod: essentialsCostPeriod ?? this.essentialsCostPeriod,
        experience: experience ?? this.experience,
        subjectHandle: subjectHandle ?? this.subjectHandle,
        achievementsOfStudents: achievementsOfStudents ?? this.achievementsOfStudents,
        certificate: certificate ?? this.certificate,
        verifyEmailAt: verifyEmailAt ?? this.verifyEmailAt,
        referralBy: referralBy ?? this.referralBy,
        affiliateAmount: affiliateAmount ?? this.affiliateAmount,
        contactAccess: contactAccess ?? this.contactAccess,
      );

  factory StaffDetail.fromRawJson(String str) => StaffDetail.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory StaffDetail.fromJson(Map<String, dynamic> json) => StaffDetail(
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
        di4lKoken: json["di4l_token"],
        apiKoken: json["api_token"],
        googleId: json["google_id"],
        appleId: json["apple_id"],
        businessId: json["business_id"],
        essentialsDepartmentId: json["essentials_department_id"],
        essentialsDesignationId: json["essentials_designation_id"],
        essentialsSalary: json["essentials_salary"],
        essentialsPayPeriod: json["essentials_pay_period"],
        essentialsPayCycle: json["essentials_pay_cycle"],
        maxSalesDiscountPercent: json["max_sales_discount_percent"],
        allowLogin: json["allow_login"],
        status: json["status"],
        crmContactId: json["crm_contact_id"],
        isCmmsnAgnt: json["is_cmmsn_agnt"],
        cmmsnPercent: json["cmmsn_percent"],
        selectedContacts: json["selected_contacts"],
        dob: json["dob"],
        gender: json["gender"],
        maritalStatus: json["marital_status"],
        bloodGroup: json["blood_group"],
        contactNumber: json["contact_number"],
        altNumber: json["alt_number"],
        familyNumber: json["family_number"],
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
        bankDetails: BankDetail.fromJson(jsonDecode(json["bank_details"])),
        idProofName: json["id_proof_name"],
        idProofNumber: json["id_proof_number"],
        locationId: json["location_id"],
        crmDepartment: json["crm_department"],
        crmDesignation: json["crm_designation"],
        deletedAt: json["deleted_at"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
        numberId: json["number_id"],
        essentialsCost: json["essentials_cost"],
        essentialsCostPeriod: json["essentials_cost_period"],
        experience: json["experience"],
        subjectHandle: json["subject_handle"],
        achievementsOfStudents: json["achievements_of_students"],
        certificate: json["certificate"],
        verifyEmailAt: json["verify_email_at"],
        referralBy: json["referral_by"],
        affiliateAmount: json["affiliate_amount"],
        contactAccess: json["contact_access"],
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
    "di4l_token": di4lKoken,
    "api_token": apiKoken,
    "google_id": googleId,
    "apple_id": appleId,
    "business_id": businessId,
    "essentials_department_id": essentialsDepartmentId,
    "essentials_designation_id": essentialsDesignationId,
    "essentials_salary": essentialsSalary,
    "essentials_pay_period": essentialsPayPeriod,
    "essentials_pay_cycle": essentialsPayCycle,
    "max_sales_discount_percent": maxSalesDiscountPercent,
    "allow_login": allowLogin,
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
    "alt_number": altNumber,
    "family_number": familyNumber,
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
    "bank_details": bankDetails == null ? null : bankDetails!.toJson(),
    "id_proof_name": idProofName,
    "id_proof_number": idProofNumber,
    "location_id": locationId,
    "crm_department": crmDepartment,
    "crm_designation": crmDesignation,
    "deleted_at": deletedAt,
    "created_at": createdAt,
    "updated_at": updatedAt,
    "number_id": numberId,
    "essentials_cost": essentialsCost,
    "essentials_cost_period": essentialsCostPeriod,
    "experience": experience,
    "subject_handle": subjectHandle,
    "achievements_of_students": achievementsOfStudents,
    "certificate": certificate,
    "verify_email_at": verifyEmailAt,
    "referral_by": referralBy,
    "affiliate_amount": affiliateAmount,
    "contact_access": contactAccess,
  };
}

class BankDetail {
  BankDetail({
    this.accountHolderName,
    this.accountNumber,
    this.bankName,
    this.bankCode,
    this.branch,
    this.taxPayerId,
  });

  String? accountHolderName;
  String? accountNumber;
  String? bankName;
  String? bankCode;
  dynamic branch;
  dynamic taxPayerId;

  BankDetail copyWith({
    String? accountHolderName,
    String? accountNumber,
    String? bankName,
    String? bankCode,
    dynamic branch,
    dynamic taxPayerId,
  }) =>
      BankDetail(
        accountHolderName: accountHolderName ?? this.accountHolderName,
        accountNumber: accountNumber ?? this.accountNumber,
        bankName: bankName ?? this.bankName,
        bankCode: bankCode ?? this.bankCode,
        branch: branch ?? this.branch,
        taxPayerId: taxPayerId ?? this.taxPayerId,
      );

  factory BankDetail.fromRawJson(String str) => BankDetail.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory BankDetail.fromJson(Map<String, dynamic> json){
    return BankDetail(
        accountHolderName: json["account_holder_name"],
        accountNumber: json["account_number"],
        bankName: json["bank_name"],
        bankCode: json["bank_code"],
        branch: json["branch"],
        taxPayerId: json["tax_payer_id"],
      );
  }

  Map<String, dynamic> toJson() => {
    "account_holder_name": accountHolderName,
    "account_number": accountNumber,
    "bank_name": bankName,
    "bank_code": bankCode,
    "branch": branch,
    "tax_payer_id": taxPayerId,
  };
}