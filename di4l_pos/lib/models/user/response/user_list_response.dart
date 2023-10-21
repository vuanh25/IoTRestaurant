class UserListResponse {
  int? currentPage;
  List<UserItem>? data;
  String? firstPageUrl;
  int? from;
  int? lastPage;
  String? lastPageUrl;
  String? nextPageUrl;
  String? path;
  int? perPage;
  String? prevPageUrl;
  int? to;
  int? total;

  UserListResponse(
      {this.currentPage,
      this.data,
      this.firstPageUrl,
      this.from,
      this.lastPage,
      this.lastPageUrl,
      this.nextPageUrl,
      this.path,
      this.perPage,
      this.prevPageUrl,
      this.to,
      this.total});

  UserListResponse.fromJson(Map<String, dynamic> json) {
    currentPage = json['current_page'];
    if (json['data'] != null) {
      data = <UserItem>[];
      json['data'].forEach((v) {
        data!.add(UserItem.fromJson(v));
      });
    }
    firstPageUrl = json['first_page_url'];
    from = json['from'];
    lastPage = json['last_page'];
    lastPageUrl = json['last_page_url'];
    nextPageUrl = json['next_page_url'];
    path = json['path'];
    perPage = json['per_page'];
    prevPageUrl = json['prev_page_url'];
    to = json['to'];
    total = json['total'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['current_page'] = currentPage;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    data['first_page_url'] = firstPageUrl;
    data['from'] = from;
    data['last_page'] = lastPage;
    data['last_page_url'] = lastPageUrl;
    data['next_page_url'] = nextPageUrl;
    data['path'] = path;
    data['per_page'] = perPage;
    data['prev_page_url'] = prevPageUrl;
    data['to'] = to;
    data['total'] = total;
    return data;
  }
}

class UserItem {
  int? id;
  String? username;
  String? fullName;
  String? email;
  int? referralBy;
  int? allowLogin;
  Referral? referral;

  UserItem(
      {this.id,
      this.username,
      this.fullName,
      this.email,
      this.referralBy,
      this.allowLogin,
      this.referral});

  UserItem.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    username = json['username'];
    fullName = json['full_name'];
    email = json['email'];
    referralBy = json['referral_by'];
    allowLogin = json['allow_login'];
    referral = json['referral'] != null
        ? Referral.fromJson(json['referral'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['username'] = username;
    data['full_name'] = fullName;
    data['email'] = email;
    data['referral_by'] = referralBy;
    data['allow_login'] = allowLogin;
    if (referral != null) {
      data['referral'] = referral!.toJson();
    }
    return data;
  }
}

class Referral {
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
  String? di4lToken;
  String? apiToken;
  dynamic googleId;
  dynamic appleId;
  int? businessId;
  dynamic essentialsDepartmentId;
  dynamic essentialsDesignationId;
  dynamic essentialsSalary;
  dynamic essentialsPayPeriod;
  dynamic essentialsPayCycle;
  dynamic maxSalesDiscountPercent;
  int? allowLogin;
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
  dynamic altNumber;
  dynamic familyNumber;
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
  String? bankDetails;
  dynamic idProofName;
  dynamic idProofNumber;
  dynamic locationId;
  dynamic crmDepartment;
  dynamic crmDesignation;
  dynamic deletedAt;
  String? createdAt;
  String? updatedAt;
  dynamic numberId;
  String? essentialsCost;
  dynamic essentialsCostPeriod;
  dynamic experience;
  dynamic subjectHandle;
  dynamic achievementsOfStudents;
  dynamic certificate;
  String? verifyEmailAt;
  dynamic referralBy;
  String? affiliateAmount;

  Referral(
      {this.id,
      this.userType,
      this.surname,
      this.firstName,
      this.lastName,
      this.username,
      this.email,
      this.language,
      this.contactNo,
      this.address,
      this.di4lToken,
      this.apiToken,
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
      this.affiliateAmount});

  Referral.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userType = json['user_type'];
    surname = json['surname'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    username = json['username'];
    email = json['email'];
    language = json['language'];
    contactNo = json['contact_no'];
    address = json['address'];
    di4lToken = json['di4l_token'];
    apiToken = json['api_token'];
    googleId = json['google_id'];
    appleId = json['apple_id'];
    businessId = json['business_id'];
    essentialsDepartmentId = json['essentials_department_id'];
    essentialsDesignationId = json['essentials_designation_id'];
    essentialsSalary = json['essentials_salary'];
    essentialsPayPeriod = json['essentials_pay_period'];
    essentialsPayCycle = json['essentials_pay_cycle'];
    maxSalesDiscountPercent = json['max_sales_discount_percent'];
    allowLogin = json['allow_login'];
    status = json['status'];
    crmContactId = json['crm_contact_id'];
    isCmmsnAgnt = json['is_cmmsn_agnt'];
    cmmsnPercent = json['cmmsn_percent'];
    selectedContacts = json['selected_contacts'];
    dob = json['dob'];
    gender = json['gender'];
    maritalStatus = json['marital_status'];
    bloodGroup = json['blood_group'];
    contactNumber = json['contact_number'];
    altNumber = json['alt_number'];
    familyNumber = json['family_number'];
    fbLink = json['fb_link'];
    twitterLink = json['twitter_link'];
    socialMedia1 = json['social_media_1'];
    socialMedia2 = json['social_media_2'];
    permanentAddress = json['permanent_address'];
    currentAddress = json['current_address'];
    guardianName = json['guardian_name'];
    customField1 = json['custom_field_1'];
    customField2 = json['custom_field_2'];
    customField3 = json['custom_field_3'];
    customField4 = json['custom_field_4'];
    bankDetails = json['bank_details'];
    idProofName = json['id_proof_name'];
    idProofNumber = json['id_proof_number'];
    locationId = json['location_id'];
    crmDepartment = json['crm_department'];
    crmDesignation = json['crm_designation'];
    deletedAt = json['deleted_at'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    numberId = json['number_id'];
    essentialsCost = json['essentials_cost'];
    essentialsCostPeriod = json['essentials_cost_period'];
    experience = json['experience'];
    subjectHandle = json['subject_handle'];
    achievementsOfStudents = json['achievements_of_students'];
    certificate = json['certificate'];
    verifyEmailAt = json['verify_email_at'];
    referralBy = json['referral_by'];
    affiliateAmount = json['affiliate_amount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['user_type'] = userType;
    data['surname'] = surname;
    data['first_name'] = firstName;
    data['last_name'] = lastName;
    data['username'] = username;
    data['email'] = email;
    data['language'] = language;
    data['contact_no'] = contactNo;
    data['address'] = address;
    data['di4l_token'] = di4lToken;
    data['api_token'] = apiToken;
    data['google_id'] = googleId;
    data['apple_id'] = appleId;
    data['business_id'] = businessId;
    data['essentials_department_id'] = essentialsDepartmentId;
    data['essentials_designation_id'] = essentialsDesignationId;
    data['essentials_salary'] = essentialsSalary;
    data['essentials_pay_period'] = essentialsPayPeriod;
    data['essentials_pay_cycle'] = essentialsPayCycle;
    data['max_sales_discount_percent'] = maxSalesDiscountPercent;
    data['allow_login'] = allowLogin;
    data['status'] = status;
    data['crm_contact_id'] = crmContactId;
    data['is_cmmsn_agnt'] = isCmmsnAgnt;
    data['cmmsn_percent'] = cmmsnPercent;
    data['selected_contacts'] = selectedContacts;
    data['dob'] = dob;
    data['gender'] = gender;
    data['marital_status'] = maritalStatus;
    data['blood_group'] = bloodGroup;
    data['contact_number'] = contactNumber;
    data['alt_number'] = altNumber;
    data['family_number'] = familyNumber;
    data['fb_link'] = fbLink;
    data['twitter_link'] = twitterLink;
    data['social_media_1'] = socialMedia1;
    data['social_media_2'] = socialMedia2;
    data['permanent_address'] = permanentAddress;
    data['current_address'] = currentAddress;
    data['guardian_name'] = guardianName;
    data['custom_field_1'] = customField1;
    data['custom_field_2'] = customField2;
    data['custom_field_3'] = customField3;
    data['custom_field_4'] = customField4;
    data['bank_details'] = bankDetails;
    data['id_proof_name'] = idProofName;
    data['id_proof_number'] = idProofNumber;
    data['location_id'] = locationId;
    data['crm_department'] = crmDepartment;
    data['crm_designation'] = crmDesignation;
    data['deleted_at'] = deletedAt;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    data['number_id'] = numberId;
    data['essentials_cost'] = essentialsCost;
    data['essentials_cost_period'] = essentialsCostPeriod;
    data['experience'] = experience;
    data['subject_handle'] = subjectHandle;
    data['achievements_of_students'] = achievementsOfStudents;
    data['certificate'] = certificate;
    data['verify_email_at'] = verifyEmailAt;
    data['referral_by'] = referralBy;
    data['affiliate_amount'] = affiliateAmount;
    return data;
  }
}
