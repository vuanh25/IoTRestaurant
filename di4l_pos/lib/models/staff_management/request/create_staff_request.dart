import 'dart:convert';

import 'package:di4l_pos/models/staff_management/response/staff_detail_response.dart';

class CreateStaffRequest {
  String? surname;
  String? firstName;
  String? lastName;
  String? email;
  String? username;
  int? referralBy;
  String? isActive;
  String? isVerify;
  String? allowLogin;
  String? password;
  String? confirmPassword;
  List<String>? role;
  String? accessAllLocations;
  String? cmmsnPercent;
  String? maxSalesDiscountPercent;
  String? dob;
  String? gender;
  String? numberId;
  String? maritalStatus;
  String? bloodGroup;
  String? contactNumber;
  String? altNumber;
  String? familyNumber;
  String? fbLink;
  String? twitterLink;
  String? socialMedia1;
  String? socialMedia2;
  String? customField1;
  String? customField2;
  String? customField3;
  String? customField4;
  String? guardianName;
  String? idProofName;
  String? idProofNumber;
  String? permanentAddress;
  String? currentAddress;
  BankDetail? bankDetails;
  int? essentialsCost;

  CreateStaffRequest({
    required this.surname,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.username,
    required this.referralBy,
    required this.isActive,
    required this.isVerify,
    required this.allowLogin,
    required this.password,
    required this.confirmPassword,
    required this.role,
    required this.accessAllLocations,
    required this.cmmsnPercent,
    required this.maxSalesDiscountPercent,
    required this.dob,
    required this.gender,
    required this.numberId,
    required this.maritalStatus,
    required this.bloodGroup,
    required this.contactNumber,
    required this.altNumber,
    required this.familyNumber,
    required this.fbLink,
    required this.twitterLink,
    required this.socialMedia1,
    required this.socialMedia2,
    required this.customField1,
    required this.customField2,
    required this.customField3,
    required this.customField4,
    required this.guardianName,
    required this.idProofName,
    required this.idProofNumber,
    required this.permanentAddress,
    required this.currentAddress,
    required this.bankDetails,
    required this.essentialsCost,
  });

  CreateStaffRequest copyWith({
    String? surname,
    String? firstName,
    String? lastName,
    String? email,
    int? referralBy,
    String? isActive,
    String? isVerify,
    String? allowLogin,
    String? password,
    String? confirmPassword,
    List<String>? role,
    String? accessAllLocations,
    String? cmmsnPercent,
    String? maxSalesDiscountPercent,
    String? dob,
    String? gender,
    String? numberId,
    String? maritalStatus,
    String? bloodGroup,
    String? contactNumber,
    String? altNumber,
    String? familyNumber,
    String? fbLink,
    String? twitterLink,
    String? socialMedia1,
    String? socialMedia2,
    String? customField1,
    String? customField2,
    String? customField3,
    String? customField4,
    String? guardianName,
    String? idProofName,
    String? idProofNumber,
    String? permanentAddress,
    String? currentAddress,
    BankDetail? bankDetails,
    int? essentialsCost,
  }) =>
      CreateStaffRequest(
        surname: surname ?? this.surname,
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName,
        email: email ?? this.email,
        username: username ?? this.username,
        referralBy: referralBy ?? this.referralBy,
        isActive: isActive ?? this.isActive,
        isVerify: isVerify ?? this.isVerify,
        allowLogin: allowLogin ?? this.allowLogin,
        password: password ?? this.password,
        confirmPassword: confirmPassword ?? this.confirmPassword,
        role: role ?? this.role,
        accessAllLocations: accessAllLocations ?? this.accessAllLocations,
        cmmsnPercent: cmmsnPercent ?? this.cmmsnPercent,
        maxSalesDiscountPercent: maxSalesDiscountPercent ?? this.maxSalesDiscountPercent,
        dob: dob ?? this.dob,
        gender: gender ?? this.gender,
        numberId: numberId ?? this.numberId,
        maritalStatus: maritalStatus ?? this.maritalStatus,
        bloodGroup: bloodGroup ?? this.bloodGroup,
        contactNumber: contactNumber ?? this.contactNumber,
        altNumber: altNumber ?? this.altNumber,
        familyNumber: familyNumber ?? this.familyNumber,
        fbLink: fbLink ?? this.fbLink,
        twitterLink: twitterLink ?? this.twitterLink,
        socialMedia1: socialMedia1 ?? this.socialMedia1,
        socialMedia2: socialMedia2 ?? this.socialMedia2,
        customField1: customField1 ?? this.customField1,
        customField2: customField2 ?? this.customField2,
        customField3: customField3 ?? this.customField3,
        customField4: customField4 ?? this.customField4,
        guardianName: guardianName ?? this.guardianName,
        idProofName: idProofName ?? this.idProofName,
        idProofNumber: idProofNumber ?? this.idProofNumber,
        permanentAddress: permanentAddress ?? this.permanentAddress,
        currentAddress: currentAddress ?? this.currentAddress,
        bankDetails: bankDetails ?? this.bankDetails,
        essentialsCost: essentialsCost ?? this.essentialsCost,
      );

  factory CreateStaffRequest.fromRawJson(String str) =>
      CreateStaffRequest.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CreateStaffRequest.fromJson(Map<String, dynamic> json) => CreateStaffRequest(
    surname: json['surname'],
    firstName: json['first_name'], 
    lastName: json['last_name'], 
    email: json['email'], 
    username: json['username'], 
    referralBy: json['referral_by'], 
    isActive: json['is_active'], 
    isVerify: json['is_verify'], 
    allowLogin: json['allow_login'], 
    password: json['password'], 
    confirmPassword: json['confirm_password'], 
    role: json['role'], 
    accessAllLocations: json['access_all_locations'], 
    cmmsnPercent: json['cmmsn_percent'], 
    maxSalesDiscountPercent: json['max_sales_discount_percent'], 
    dob: json['dob'], 
    gender: json['gender'], 
    numberId: json['number_id'], 
    maritalStatus: json['marital_status'], 
    bloodGroup: json['blood_group'], 
    contactNumber: json['contact_number'], 
    altNumber: json['alt_number'], 
    familyNumber: json['family_number'], 
    fbLink: json['fb_link'], 
    twitterLink: json['twitter_link'], 
    socialMedia1: json['social_media_1'], 
    socialMedia2: json['social_media_2'], 
    customField1: json['custom_field_1'], 
    customField2: json['custom_field_2'], 
    customField3: json['custom_field_3'], 
    customField4: json['custom_field_4'], 
    guardianName: json['guardian_name'], 
    idProofName: json['id_proof_name'], 
    idProofNumber: json['id_proof_number'], 
    permanentAddress: json['permanent_address'], 
    currentAddress: json['current_address'], 
    bankDetails: BankDetail.fromJson(jsonDecode(json["bank_details"])), 
    essentialsCost: json['essentials_cost'], 
  );

  Map<String, dynamic> toJson() => {
    'surname': surname,
    'first_name': firstName, 
    'last_name': lastName, 
    'email': email, 
    'username': username, 
    'referral_by': referralBy, 
    'is_active': isActive, 
    'is_verify': isVerify, 
    'allow_login': allowLogin, 
    'password': password, 
    'confirm_password': confirmPassword, 
    'role': role, 
    'access_all_locations': accessAllLocations, 
    'cmmsn_percent': cmmsnPercent, 
    'max_sales_discount_percent': maxSalesDiscountPercent, 
    'dob': dob, 
    'gender': gender, 
    'number_id': numberId, 
    'marital_status': maritalStatus, 
    'blood_group': bloodGroup, 
    'contact_number': contactNumber, 
    'alt_number': altNumber, 
    'family_number': familyNumber, 
    'fb_link': fbLink, 
    'twitter_link': twitterLink, 
    'social_media_1': socialMedia1, 
    'social_media_2': socialMedia2, 
    'custom_field_1': customField1, 
    'custom_field_2': customField2, 
    'custom_field_3': customField3, 
    'custom_field_4': customField4, 
    'guardian_name': guardianName, 
    'id_proof_name': idProofName, 
    'id_proof_number': idProofNumber, 
    'permanent_address': permanentAddress, 
    'current_address': currentAddress, 
    'bank_details': bankDetails == null ? null : bankDetails!.toJson(),
    'essentials_cost': essentialsCost, 
  };
}

