import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:di4l_pos/common/storage/app_prefs.dart';
import 'package:di4l_pos/models/staff_management/request/update_staff_request.dart';
import 'package:di4l_pos/models/staff_management/request/create_staff_request.dart';
import 'package:di4l_pos/models/staff_management/response/staff_response.dart';
import 'package:di4l_pos/route_generator.dart';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';
import 'package:get/get.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:di4l_pos/enums/status_type.dart';
import 'package:di4l_pos/common/helpers.dart';
import 'package:di4l_pos/common/ui_helpers.dart';
import 'package:di4l_pos/get_it.dart';
import 'package:di4l_pos/repositories/data_repository.dart';
import 'package:di4l_pos/models/staff_management/response/staff_detail_response.dart';
import 'package:di4l_pos/models/staff_management/response/staff_create_response.dart';
import 'package:di4l_pos/models/business_location/response/business_location.dart';
import 'package:di4l_pos/models/business_location/response/business_location_response.dart';

part 'staff_detail_cubit.freezed.dart';
part 'staff_detail_state.dart';

class StaffDetailCubit extends Cubit<StaffDetailState> {
  final _dataRepository = getIt<DataRepository>();

  StaffDetailCubit() : super(const StaffDetailState.initial(data: StaffDetailStateData()));

  /// Get Staff Detail
  Future<void> getStaffDetail({required int id}) async {
    try {
      emit(StaffDetailState.status(data: state.data!.copyWith(status: StatusType.loading)));
      final staffResponse = await _dataRepository.getStaffDetail(id: id);
      final locationResponse = await _dataRepository.getBusinessLocation();
      final staffRoles = {
        '22': 'Admin',
        '23': 'Cashier',
        '142': 'Parent'
      };

      emit(StaffDetailState.getStaffDetail(
          data: state.data!.copyWith(
            status: StatusType.loaded,
            staffDetail: staffResponse,
            businesslocations: locationResponse,
            staffRoles: staffRoles
      )));
    } catch (error) {
      print(error);
      emit(StaffDetailState.status(data: state.data!.copyWith(status: StatusType.error)));

      Helpers.handleErrorApp(error: error);
    } finally {

    }
  }

  /// Get Staff Create Information
  Future<void> getStaffCreateInformation() async {
    try {
      emit(StaffDetailState.status(data: state.data!.copyWith(status: StatusType.loading)));
      final staffCreateInfomationResponse = await _dataRepository.getStaffCreateInfomation();

      staffCreateInfomationResponse.locations = [BusinessLocation(id: -1, name: "choose_location".tr, locationId: ''), ...staffCreateInfomationResponse.locations!];
      emit(StaffDetailState.getStaffInformation(
          data: state.data!.copyWith(
        status: StatusType.loaded,
        staffCreateInfomation: staffCreateInfomationResponse,
      )));
    } on DioError catch ( error) {
      if(error.message.contains('Unauthenticated')){
          UIHelpers.showCustomDialog(
            context: Get.context!,
            message: 'user_number_limit_message'.tr,
            isShowClose: false,
            isShowConfirm: true,
            titleConfirm: 'close'.tr,
            onComfirm: () {
              navigator!.pop();
              navigator!.pop();
              navigator!.popAndPushNamed(RouteGenerator.staffManagmentScreen);
            },
          );
      }
      else{
        emit(StaffDetailState.status(data: state.data!.copyWith(status: StatusType.error)));
        Helpers.handleErrorApp(error: error);
      }
    } finally {

    }
  }

  Future<void> updateStaff({
    required int id,
    required String? surname,
    required String? firstName,
    required String? lastName,
    required String? email,
    required int? referralBy,
    required String? isActive,
    required String? allowLogin,
    required String? password,
    required String? confirmPassword,
    required List<String>? role,
    required String? accessAllLocations,
    required String? cmmsnPercent,
    required String? maxSalesDiscountPercent,
    required String? dob,
    required String? gender,
    required String? numberId,
    required String? maritalStatus,
    required String? bloodGroup,
    required String? contactNumber,
    required String? altNumber,
    required String? familyNumber,
    required String? fbLink,
    required String? twitterLink,
    required String? socialMedia1,
    required String? socialMedia2,
    required String? customField1,
    required String? customField2,
    required String? customField3,
    required String? customField4,
    required String? guardianName,
    required String? idProofName,
    required String? idProofNumber,
    required String? permanentAddress,
    required String? currentAddress,
    required BankDetail? bankDetails,
  }) async {
    try {
      if(validate(
        surname: surname, 
        firstName: firstName, 
        lastName: lastName, 
        email: email, 
        username: null, 
        referralBy: referralBy, 
        isActive: isActive, 
        isVerify: null, 
        allowLogin: allowLogin, 
        password: password, 
        confirmPassword: confirmPassword, 
        role: role, 
        accessAllLocations: accessAllLocations, 
        cmmsnPercent: cmmsnPercent, 
        maxSalesDiscountPercent: maxSalesDiscountPercent, 
        dob: dob, 
        gender: gender, 
        numberId: numberId, 
        maritalStatus: maritalStatus, 
        bloodGroup: bloodGroup, 
        contactNumber: contactNumber, 
        altNumber: altNumber, 
        familyNumber: familyNumber, 
        fbLink: fbLink, 
        twitterLink: twitterLink, 
        socialMedia1: socialMedia1, 
        socialMedia2: socialMedia2, 
        customField1: customField1, 
        customField2: customField2, 
        customField3: customField3, 
        customField4: customField4, 
        guardianName: guardianName, 
        idProofName: idProofName, 
        idProofNumber: idProofNumber, 
        permanentAddress: permanentAddress, 
        currentAddress: currentAddress, 
        bankDetails: bankDetails, 
        essentialsCost: null, 
      )){
        emit(StaffDetailState.status(data: state.data!.copyWith(status: StatusType.loading)));
        final request = UpdateStaffRequest(
          surname: surname, 
          firstName: firstName, 
          lastName: lastName, 
          email: email, 
          referralBy: referralBy, 
          isActive: isActive, 
          allowLogin: allowLogin, 
          password: password, 
          confirmPassword: confirmPassword, 
          role: role, 
          accessAllLocations: accessAllLocations, 
          cmmsnPercent: cmmsnPercent, 
          maxSalesDiscountPercent: maxSalesDiscountPercent, 
          dob: dob, 
          gender: gender, 
          numberId: numberId, 
          maritalStatus: maritalStatus, 
          bloodGroup: bloodGroup, 
          contactNumber: contactNumber, 
          altNumber: altNumber, 
          familyNumber: familyNumber, 
          fbLink: fbLink, 
          twitterLink: twitterLink, 
          socialMedia1: socialMedia1, 
          socialMedia2: socialMedia2, 
          customField1: customField1, 
          customField2: customField2, 
          customField3: customField3, 
          customField4: customField4, 
          guardianName: guardianName, 
          idProofName: idProofName, 
          idProofNumber: idProofNumber, 
          permanentAddress: permanentAddress, 
          currentAddress: currentAddress, 
          bankDetails: bankDetails, 
        );

        final response = await _dataRepository.updateStaff(request: request, id: id);

        emit(StaffDetailState.status(data: state.data!.copyWith(status: StatusType.loaded)));
        UIHelpers.showCustomDialog(
          context: Get.context!,
          title: 'update_staff'.tr,
          message: response.success == 1 ? 'update_staff_successfully'.tr : 'update_staff_fail'.tr,
          isShowClose: true,
          isShowConfirm: false,
          titleClose: 'close'.tr
        );
      }
    } catch (error) {
      print(error);
    } finally {
    }
  }

  Future<void> deleteStaff({required int id}) async {
    try {
      emit(StaffDetailState.status(data: state.data!.copyWith(status: StatusType.loading)));
      final response = await _dataRepository.deleteStaff(id: id);

      if (response.success == true) {
          emit(StaffDetailState.status(data: state.data!.copyWith(status: StatusType.loaded)));
          UIHelpers.showCustomDialog(
            context: Get.context!,
            title: 'delete_staff'.tr,
            message: response.success! ? 'delete_staff_successfully'.tr : 'delete_staff_fail'.tr,
            isShowClose: false,
            isShowConfirm: true,
            titleConfirm: 'close'.tr,
            onComfirm: () {
              navigator!.pop();
              navigator!.pop();
              navigator!.popAndPushNamed(RouteGenerator.staffManagmentScreen);
            },
          );
      }

    } catch (error) {
      print(error);
      emit(StaffDetailState.status(data: state.data!.copyWith(status: StatusType.error)));

      Helpers.handleErrorApp(error: error);
    } finally {

    }
  }

  Future<void> createStaff({
    required String? surname,
    required String? firstName,
    required String? lastName,
    required String? email,
    required String? username,
    required int? referralBy,
    required String? isActive,
    required String? isVerify,
    required String? allowLogin,
    required String? password,
    required String? confirmPassword,
    required List<String>? role,
    required String? accessAllLocations,
    required String? cmmsnPercent,
    required String? maxSalesDiscountPercent,
    required String? dob,
    required String? gender,
    required String? numberId,
    required String? maritalStatus,
    required String? bloodGroup,
    required String? contactNumber,
    required String? altNumber,
    required String? familyNumber,
    required String? fbLink,
    required String? twitterLink,
    required String? socialMedia1,
    required String? socialMedia2,
    required String? customField1,
    required String? customField2,
    required String? customField3,
    required String? customField4,
    required String? guardianName,
    required String? idProofName,
    required String? idProofNumber,
    required String? permanentAddress,
    required String? currentAddress,
    required BankDetail? bankDetails,
    required int? essentialsCost,
  }) async {
    try {
      if(validate(
        surname: surname, 
        firstName: firstName, 
        lastName: lastName, 
        email: email, 
        username: username, 
        referralBy: referralBy, 
        isActive: isActive, 
        isVerify: isVerify, 
        allowLogin: allowLogin, 
        password: password, 
        confirmPassword: confirmPassword, 
        role: role, 
        accessAllLocations: accessAllLocations, 
        cmmsnPercent: cmmsnPercent, 
        maxSalesDiscountPercent: maxSalesDiscountPercent, 
        dob: dob, 
        gender: gender, 
        numberId: numberId, 
        maritalStatus: maritalStatus, 
        bloodGroup: bloodGroup, 
        contactNumber: contactNumber, 
        altNumber: altNumber, 
        familyNumber: familyNumber, 
        fbLink: fbLink, 
        twitterLink: twitterLink, 
        socialMedia1: socialMedia1, 
        socialMedia2: socialMedia2, 
        customField1: customField1, 
        customField2: customField2, 
        customField3: customField3, 
        customField4: customField4, 
        guardianName: guardianName, 
        idProofName: idProofName, 
        idProofNumber: idProofNumber, 
        permanentAddress: permanentAddress, 
        currentAddress: currentAddress, 
        bankDetails: bankDetails, 
        essentialsCost: essentialsCost, 
      )){
        emit(StaffDetailState.status(data: state.data!.copyWith(status: StatusType.loading)));
        final request =CreateStaffRequest(
          surname: surname, 
          firstName: firstName, 
          lastName: lastName, 
          email: email, 
          username: username, 
          referralBy: referralBy, 
          isActive: isActive, 
          isVerify: isVerify, 
          allowLogin: allowLogin, 
          password: password, 
          confirmPassword: confirmPassword, 
          role: role, 
          accessAllLocations: accessAllLocations, 
          cmmsnPercent: cmmsnPercent, 
          maxSalesDiscountPercent: maxSalesDiscountPercent, 
          dob: dob, 
          gender: gender, 
          numberId: numberId, 
          maritalStatus: maritalStatus, 
          bloodGroup: bloodGroup, 
          contactNumber: contactNumber, 
          altNumber: altNumber, 
          familyNumber: familyNumber, 
          fbLink: fbLink, 
          twitterLink: twitterLink, 
          socialMedia1: socialMedia1, 
          socialMedia2: socialMedia2, 
          customField1: customField1, 
          customField2: customField2, 
          customField3: customField3, 
          customField4: customField4, 
          guardianName: guardianName, 
          idProofName: idProofName, 
          idProofNumber: idProofNumber, 
          permanentAddress: permanentAddress, 
          currentAddress: currentAddress, 
          bankDetails: bankDetails, 
          essentialsCost: essentialsCost, 
        );
        final response = await _dataRepository.addStaff(request: request);

        emit(StaffDetailState.status(data: state.data!.copyWith(status: StatusType.loaded)));
        UIHelpers.showCustomDialog(
          context: Get.context!,
          title: 'create_staff'.tr,
          message: response.success == 1 ? 'create_staff_successfully'.tr : 'create_staff_fail'.tr,
          isShowClose: false,
          isShowConfirm: true,
          titleConfirm: 'close'.tr,
          onComfirm:(){
            navigator!.pop();
            navigator!.pop();
            navigator!.popAndPushNamed(RouteGenerator.staffManagmentScreen);
          }
        );
      }
    } catch (error) {
      print(error);
    } finally {
      
    }
  }

  bool validate({
    required String? surname,
    required String? firstName,
    required String? lastName,
    required String? email,
    required String? username,
    required int? referralBy,
    required String? isActive,
    required String? isVerify,
    required String? allowLogin,
    required String? password,
    required String? confirmPassword,
    required List<String>? role,
    required String? accessAllLocations,
    required String? cmmsnPercent,
    required String? maxSalesDiscountPercent,
    required String? dob,
    required String? gender,
    required String? numberId,
    required String? maritalStatus,
    required String? bloodGroup,
    required String? contactNumber,
    required String? altNumber,
    required String? familyNumber,
    required String? fbLink,
    required String? twitterLink,
    required String? socialMedia1,
    required String? socialMedia2,
    required String? customField1,
    required String? customField2,
    required String? customField3,
    required String? customField4,
    required String? guardianName,
    required String? idProofName,
    required String? idProofNumber,
    required String? permanentAddress,
    required String? currentAddress,
    required BankDetail? bankDetails,
    required int? essentialsCost,
  }){
    bool validateResult = true;
    String message = '';

    bool isRoleValid = role!.isNotEmpty;
    bool isFistnameValid = firstName!.isNotEmpty;
    bool isLastnameValid = lastName!.isNotEmpty;
    bool isEmailValid = email!.isNotEmpty;
    bool isConfirmPasswordValid = password == confirmPassword;

    if(!isRoleValid){ message = 'required_role';}
    else if(!isFistnameValid){message = 'required_firstname';}
    else if(!isLastnameValid){message = 'required_lastname';}
    else if(!isEmailValid){message = 'required_email';}
    else if(!isConfirmPasswordValid){message = 'confirm_password_not_correct';}

    validateResult = isRoleValid && isFistnameValid && isLastnameValid && isEmailValid && isConfirmPasswordValid;
    if(!validateResult) {
      UIHelpers.showSnackBar(message: message.tr, type: SnackBarType.ERROR);
    }

    return validateResult;
  }
}