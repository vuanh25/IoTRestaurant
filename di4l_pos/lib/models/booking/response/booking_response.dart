import 'package:di4l_pos/models/business_location/response/business_location.dart';

class BookingResponse {
  List<Booking>? data;

  BookingResponse({this.data});

  BookingResponse.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <Booking>[];
      json['data'].forEach((v) {
        data!.add(Booking.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Booking {
  int? id;
  int? contactId;
  int? waiterId;
  int? tableId;
  int? correspondentId;
  int? businessId;
  int? locationId;
  int? typesOfServicesId;
  String? bookingStart;
  String? bookingEnd;
  int? createdBy;
  String? bookingStatus;
  String? bookingNote;
  String? createdAt;
  String? updatedAt;
  Table? table;
  Customer? customer;
  Correspondent? correspondent;
  dynamic waiter;
  BusinessLocation? location;
  dynamic services;

  Booking(
      {this.id,
      this.contactId,
      this.waiterId,
      this.tableId,
      this.correspondentId,
      this.businessId,
      this.locationId,
      this.typesOfServicesId,
      this.bookingStart,
      this.bookingEnd,
      this.createdBy,
      this.bookingStatus,
      this.bookingNote,
      this.createdAt,
      this.updatedAt,
      this.table,
      this.customer,
      this.correspondent,
      this.waiter,
      this.location,
      this.services});

  Booking.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    contactId = json['contact_id'];
    waiterId = json['waiter_id'];
    tableId = json['table_id'];
    correspondentId = json['correspondent_id'];
    businessId = json['business_id'];
    locationId = json['location_id'];
    typesOfServicesId = json['types_of_services_id'];
    bookingStart = json['booking_start'];
    bookingEnd = json['booking_end'];
    createdBy = json['created_by'];
    bookingStatus = json['booking_status'];
    bookingNote = json['booking_note'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    table = json['table'] != null ? Table.fromJson(json['table']) : null;
    customer = json['customer'] != null
        ? Customer.fromJson(json['customer'])
        : null;
    correspondent = json['correspondent'] != null
        ? Correspondent.fromJson(json['correspondent'])
        : null;
    waiter = json['waiter'];
    location = json['location'] != null
        ? BusinessLocation.fromJson(json['location'])
        : null;
    services = json['services'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['contact_id'] = contactId;
    data['waiter_id'] = waiterId;
    data['table_id'] = tableId;
    data['correspondent_id'] = correspondentId;
    data['business_id'] = businessId;
    data['location_id'] = locationId;
    data['types_of_services_id'] = typesOfServicesId;
    data['booking_start'] = bookingStart;
    data['booking_end'] = bookingEnd;
    data['created_by'] = createdBy;
    data['booking_status'] = bookingStatus;
    data['booking_note'] = bookingNote;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    if (table != null) {
      data['table'] = table!.toJson();
    }
    if (customer != null) {
      data['customer'] = customer!.toJson();
    }
    if (correspondent != null) {
      data['correspondent'] = correspondent!.toJson();
    }
    data['waiter'] = waiter;
    if (location != null) {
      data['location'] = location!.toJson();
    }
    data['services'] = services;
    return data;
  }
}

class Table {
  int? id;
  int? businessId;
  int? locationId;
  String? name;
  String? description;
  int? createdBy;
  String? deletedAt;
  String? createdAt;
  String? updatedAt;

  Table(
      {this.id,
      this.businessId,
      this.locationId,
      this.name,
      this.description,
      this.createdBy,
      this.deletedAt,
      this.createdAt,
      this.updatedAt});

  Table.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    businessId = json['business_id'];
    locationId = json['location_id'];
    name = json['name'];
    description = json['description'];
    createdBy = json['created_by'];
    deletedAt = json['deleted_at'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['business_id'] = businessId;
    data['location_id'] = locationId;
    data['name'] = name;
    data['description'] = description;
    data['created_by'] = createdBy;
    data['deleted_at'] = deletedAt;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}

class Customer {
  int? id;
  int? businessId;
  String? type;
  String? supplierBusinessName;
  String? name;
  String? prefix;
  String? firstName;
  String? middleName;
  String? lastName;
  String? email;
  String? contactId;
  String? contactStatus;
  dynamic taxNumber;
  String? city;
  String? state;
  String? country;
  String? addressLine1;
  String? addressLine2;
  String? zipCode;
  String? dob;
  String? mobile;
  dynamic landline;
  String? alternateNumber;
  String? payTermNumber;
  dynamic payTermType;
  dynamic creditLimit;
  int? createdBy;
  dynamic convertedBy;
  dynamic convertedOn;
  String? balance;
  int? totalRp;
  int? totalRpUsed;
  int? totalRpExpired;
  int? isDefault;
  dynamic shippingAddress;
  dynamic shippingCustomFieldDetails;
  int? isExport;
  String? exportCustomField1;
  String? exportCustomField2;
  String? exportCustomField3;
  String? exportCustomField4;
  String? exportCustomField5;
  String? exportCustomField6;
  dynamic position;
  int? customerGroupId;
  dynamic crmSource;
  dynamic crmLifeStage;
  dynamic customField1;
  dynamic customField2;
  dynamic customField3;
  dynamic customField4;
  dynamic customField5;
  dynamic customField6;
  dynamic customField7;
  dynamic customField8;
  dynamic customField9;
  dynamic customField10;
  dynamic deletedAt;
  String? createdAt;
  String? updatedAt;
  dynamic parentId;
  int? provinceId;
  int? districtId;
  int? wardId;

  Customer(
      {this.id,
      this.businessId,
      this.type,
      this.supplierBusinessName,
      this.name,
      this.prefix,
      this.firstName,
      this.middleName,
      this.lastName,
      this.email,
      this.contactId,
      this.contactStatus,
      this.taxNumber,
      this.city,
      this.state,
      this.country,
      this.addressLine1,
      this.addressLine2,
      this.zipCode,
      this.dob,
      this.mobile,
      this.landline,
      this.alternateNumber,
      this.payTermNumber,
      this.payTermType,
      this.creditLimit,
      this.createdBy,
      this.convertedBy,
      this.convertedOn,
      this.balance,
      this.totalRp,
      this.totalRpUsed,
      this.totalRpExpired,
      this.isDefault,
      this.shippingAddress,
      this.shippingCustomFieldDetails,
      this.isExport,
      this.exportCustomField1,
      this.exportCustomField2,
      this.exportCustomField3,
      this.exportCustomField4,
      this.exportCustomField5,
      this.exportCustomField6,
      this.position,
      this.customerGroupId,
      this.crmSource,
      this.crmLifeStage,
      this.customField1,
      this.customField2,
      this.customField3,
      this.customField4,
      this.customField5,
      this.customField6,
      this.customField7,
      this.customField8,
      this.customField9,
      this.customField10,
      this.deletedAt,
      this.createdAt,
      this.updatedAt,
      this.parentId,
      this.provinceId,
      this.districtId,
      this.wardId});

  Customer.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    businessId = json['business_id'];
    type = json['type'];
    supplierBusinessName = json['supplier_business_name'];
    name = json['name'];
    prefix = json['prefix'];
    firstName = json['first_name'];
    middleName = json['middle_name'];
    lastName = json['last_name'];
    email = json['email'];
    contactId = json['contact_id'];
    contactStatus = json['contact_status'];
    taxNumber = json['tax_number'];
    city = json['city'];
    state = json['state'];
    country = json['country'];
    addressLine1 = json['address_line_1'];
    addressLine2 = json['address_line_2'];
    zipCode = json['zip_code'];
    dob = json['dob'];
    mobile = json['mobile'];
    landline = json['landline'];
    alternateNumber = json['alternate_number'];
    payTermNumber = json['pay_term_number'];
    payTermType = json['pay_term_type'];
    creditLimit = json['credit_limit'];
    createdBy = json['created_by'];
    convertedBy = json['converted_by'];
    convertedOn = json['converted_on'];
    balance = json['balance'];
    totalRp = json['total_rp'];
    totalRpUsed = json['total_rp_used'];
    totalRpExpired = json['total_rp_expired'];
    isDefault = json['is_default'];
    shippingAddress = json['shipping_address'];
    shippingCustomFieldDetails = json['shipping_custom_field_details'];
    isExport = json['is_export'];
    exportCustomField1 = json['export_custom_field_1'];
    exportCustomField2 = json['export_custom_field_2'];
    exportCustomField3 = json['export_custom_field_3'];
    exportCustomField4 = json['export_custom_field_4'];
    exportCustomField5 = json['export_custom_field_5'];
    exportCustomField6 = json['export_custom_field_6'];
    position = json['position'];
    customerGroupId = json['customer_group_id'];
    crmSource = json['crm_source'];
    crmLifeStage = json['crm_life_stage'];
    customField1 = json['custom_field1'];
    customField2 = json['custom_field2'];
    customField3 = json['custom_field3'];
    customField4 = json['custom_field4'];
    customField5 = json['custom_field5'];
    customField6 = json['custom_field6'];
    customField7 = json['custom_field7'];
    customField8 = json['custom_field8'];
    customField9 = json['custom_field9'];
    customField10 = json['custom_field10'];
    deletedAt = json['deleted_at'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    parentId = json['parent_id'];
    provinceId = json['province_id'];
    districtId = json['district_id'];
    wardId = json['ward_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['business_id'] = businessId;
    data['type'] = type;
    data['supplier_business_name'] = supplierBusinessName;
    data['name'] = name;
    data['prefix'] = prefix;
    data['first_name'] = firstName;
    data['middle_name'] = middleName;
    data['last_name'] = lastName;
    data['email'] = email;
    data['contact_id'] = contactId;
    data['contact_status'] = contactStatus;
    data['tax_number'] = taxNumber;
    data['city'] = city;
    data['state'] = state;
    data['country'] = country;
    data['address_line_1'] = addressLine1;
    data['address_line_2'] = addressLine2;
    data['zip_code'] = zipCode;
    data['dob'] = dob;
    data['mobile'] = mobile;
    data['landline'] = landline;
    data['alternate_number'] = alternateNumber;
    data['pay_term_number'] = payTermNumber;
    data['pay_term_type'] = payTermType;
    data['credit_limit'] = creditLimit;
    data['created_by'] = createdBy;
    data['converted_by'] = convertedBy;
    data['converted_on'] = convertedOn;
    data['balance'] = balance;
    data['total_rp'] = totalRp;
    data['total_rp_used'] = totalRpUsed;
    data['total_rp_expired'] = totalRpExpired;
    data['is_default'] = isDefault;
    data['shipping_address'] = shippingAddress;
    data['shipping_custom_field_details'] = shippingCustomFieldDetails;
    data['is_export'] = isExport;
    data['export_custom_field_1'] = exportCustomField1;
    data['export_custom_field_2'] = exportCustomField2;
    data['export_custom_field_3'] = exportCustomField3;
    data['export_custom_field_4'] = exportCustomField4;
    data['export_custom_field_5'] = exportCustomField5;
    data['export_custom_field_6'] = exportCustomField6;
    data['position'] = position;
    data['customer_group_id'] = customerGroupId;
    data['crm_source'] = crmSource;
    data['crm_life_stage'] = crmLifeStage;
    data['custom_field1'] = customField1;
    data['custom_field2'] = customField2;
    data['custom_field3'] = customField3;
    data['custom_field4'] = customField4;
    data['custom_field5'] = customField5;
    data['custom_field6'] = customField6;
    data['custom_field7'] = customField7;
    data['custom_field8'] = customField8;
    data['custom_field9'] = customField9;
    data['custom_field10'] = customField10;
    data['deleted_at'] = deletedAt;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    data['parent_id'] = parentId;
    data['province_id'] = provinceId;
    data['district_id'] = districtId;
    data['ward_id'] = wardId;
    return data;
  }
}

class Correspondent {
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
  String? googleId;
  String? appleId;
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

  Correspondent(
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

  Correspondent.fromJson(Map<String, dynamic> json) {
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