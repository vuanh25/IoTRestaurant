import 'dart:convert';

import 'package:di4l_pos/enums/status_type.dart';
import 'package:di4l_pos/models/business_location/request/update_business_location_request.dart';
import 'package:di4l_pos/models/business_location/request/update_location_settings_request.dart';
import 'package:di4l_pos/models/business_location/response/business_settings_response.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:di4l_pos/common/helpers.dart';
import 'package:di4l_pos/common/ui_helpers.dart';
import 'package:di4l_pos/get_it.dart';
import 'package:di4l_pos/common/storage/app_prefs.dart';
import 'package:di4l_pos/models/business_location/response/business_location.dart';
import 'package:di4l_pos/models/user/request/account_request.dart';
import 'package:di4l_pos/models/user/response/account_response.dart';
import 'package:di4l_pos/repositories/data_repository.dart';
import 'package:di4l_pos/route_generator.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import 'package:nb_utils/nb_utils.dart';

part 'business_state.dart';
part 'business_cubit.freezed.dart';

class BusinessCubit extends Cubit<BusinessState> {
  /// MARK: - Initials;
  final _dataRepository = getIt<DataRepository>();
  final _appPrefs = getIt<AppPref>();

  BusinessCubit() : super(const BusinessState.initial(data: BusinessData()));

  /// Get Units
  Future<BusinessLocation?> getBusinesss() async {
    try {
      final businessResponse = await _dataRepository.getBusinessLocation();
      emit(BusinessState.getBusinesss(
          data: state.data?.copyWith(
        businesss: businessResponse.data ?? [],
        business: businessResponse.data?.first,
      )));
      return businessResponse.data?.first;
    } catch (error) {
      debugPrint('Get Business 345 Error: $error');
      Helpers.handleErrorApp(error: error);
      return null;
    } finally {
      UIHelpers.dismissLoading();
      // return null;
    }
  }

  Future<List<BusinessLocation>> getList() async {
    List<BusinessLocation> list = [];
    final businessResponse = await _dataRepository.getBusinessLocation();
    list = businessResponse.data!;
    return list;
  }

  /// Get Business Settings
  Future<void> getBusinessSettings() async {
    try {
      final businessSettingResponse =
          await _dataRepository.getBusinessSettings();
      emit(
        BusinessState.getBusinesss(
          data: state.data?.copyWith(
            businessSetting: businessSettingResponse.data,
          ),
        ),
      );
    } catch (error) {
      debugPrint('Get Business 123 Error: $error');
      Helpers.handleErrorApp(error: error, isShowDialog: true);
    } finally {
      UIHelpers.dismissLoading();
    }
  }

  /// Get Business Location By Id
  Future<void> getBusinessLocationById(int id) async {
    try {
      emit(
        BusinessState.getBusiness(
          data: state.data?.copyWith(
            status: StatusType.loading,
          ),
        ),
      );
      final response = await _dataRepository.getDetailsBusinessLocation(id: id);
      emit(
        BusinessState.getBusiness(
          data: state.data?.copyWith(
            status: StatusType.loaded,
            business: response.data?.first,
          ),
        ),
      );
    } catch (error) {
      emit(
        BusinessState.status(
          data: state.data?.copyWith(
            status: StatusType.error,
          ),
        ),
      );
      debugPrint('Get Business 3456 Error: $error');
      Helpers.handleErrorApp(error: error);
    } finally {
      UIHelpers.dismissLoading();
    }
  }

  /// Refresh List Contact
  Future<void> refreshtBusinesss({BusinessLocation? business}) async {
    List<BusinessLocation> businesss = [...state.data!.businesss];
    final index = businesss.indexWhere((element) => element.id == business?.id);
    if (index != -1) {
      businesss[index] = business!;
      emit(BusinessState.getBusinesss(
          data: state.data?.copyWith(businesss: businesss)));
    }
  }

  void getBusiness(BusinessLocation business) {
    emit(BusinessState.getBusiness(
        data: state.data?.copyWith(business: business)));
  }

  void getBusinessTo(BusinessLocation businessTo) {
    emit(BusinessState.getBusiness(
        data: state.data?.copyWith(businessTo: businessTo)));
  }

  Future<void> getAccounts() async {
    try {
      final accounts = await _dataRepository.switchAccount();
      emit(BusinessState.getAccounts(
          data: state.data?.copyWith(accounts: accounts.data ?? [])));
    } catch (error) {
      debugPrint('Switch Account Error: $error');
      await navigator!.pushNamed(RouteGenerator.loginScreen);
      Helpers.handleErrorApp(error: error, isShowDialog: true);
    } finally {
      UIHelpers.dismissLoading();
    }
  }

  void changedAccount() async {
    try {
      await _appPrefs.changedAccount();
      navigator!.pushNamedAndRemoveUntil(
          RouteGenerator.switchAccount, (route) => false);
    } catch (error) {
      debugPrint('Changed Account Error: $error');
    } finally {
      UIHelpers.dismissLoading();
    }
  }

  Future<void> postSwitchAccount({required int id}) async {
    try {
      final request = AccountRequest(userId: id);
      final tokenResponse =
          await _dataRepository.postSwitchAccount(request: request);

      /// Save Token
      await _appPrefs.saveToken(tokenJson: tokenResponse.toRawJson());

      /// Save Business
      final businessResponse = await _dataRepository.getBusinessLocation();
      await _appPrefs.saveBusiness(
          business: businessResponse.data!.first.toRawJson());

      /// Loged In
      final userResponse = await _dataRepository.loggedIn();
      await _appPrefs.saveUser(userJson: userResponse.toRawJson());

      /// Go To Home Screen
      navigator!
          .pushNamedAndRemoveUntil(RouteGenerator.mainScreen, (route) => false);
    } catch (error) {
      debugPrint('Switch Account Error: $error');
      Helpers.handleErrorApp(error: error, isShowDialog: true);
    } finally {
      UIHelpers.dismissLoading();
    }
  }

  Future<void> activeBusiness(int id) async {
    try {
      final res = await _dataRepository.activeBusiness(id: id);
      final status = res['success'];
      final msg = res['msg'];
      if (status == true) {
        UIHelpers.showSnackBar(message: msg, type: SnackBarType.SUCCESS);
      }
    } catch (error) {
      debugPrint('Active Error: $error');
    }
  }

  Future<void> delete(int id) async {
    if (id != 11) {
      UIHelpers.showCustomDialog(
        context: Get.context!,
        message: 'business_confirm_delete'.tr,
        onComfirm: () async {
          try {
            await _dataRepository.deleteBusiness(id: id);
            await _appPrefs.logout();
            await navigator!.pushNamedAndRemoveUntil(
                RouteGenerator.loginScreen, ((route) => false));
          } catch (error) {
            debugPrint('Delete Account Error: $error');
          } finally {
            Future.delayed(const Duration(seconds: 2), () => navigator!.pop());
          }
        },
        isShowClose: true,
      );
    } else {}
  }

  Future<void> updateBusinessLocation(
      int id,
      String? name,
      String? locationId,
      String? landmark,
      String? city,
      String? zipCode,
      String? stateProvince,
      String? country,
      String? mobile,
      String? alternateMobile,
      String? email,
      String? website,
      dynamic featuredProducts,
      int? invoceSchemeId,
      int? invoiceLayoutId,
      int? saleInvoiceLayoutId,
      int? sellingPriceGroupId,
      String? customField1,
      String? customField2,
      String? customField3,
      String? customField4,
      DefaultPaymentAccounts? defaultPaymentAccounts,
      int? provinceId,
      int? districtId,
      int? wardId) async {
    if (name.isEmptyOrNull ||
        zipCode.isEmptyOrNull ||
        stateProvince.isEmptyOrNull ||
        country.isEmptyOrNull ||
        invoceSchemeId == null ||
        invoiceLayoutId == null ||
        saleInvoiceLayoutId == null ||
        provinceId == null ||
        districtId == null ||
        wardId == null) {
      UIHelpers.showSnackBar(
        message: "Some fields are left empty",
        type: SnackBarType.ERROR,
      );
    } else {
      try {
        emit(
          BusinessState.status(
            data: state.data?.copyWith(
              status: StatusType.loading,
              error: 'Loading...',
            ),
          ),
        );
        final request = UpdateBusinessLocationRequest(
          name: name,
          locationId: locationId,
          landmark: landmark,
          city: city,
          state: stateProvince,
          zipCode: zipCode,
          country: country,
          mobile: mobile,
          alternateNumber: alternateMobile,
          email: email,
          website: website,
          featuredProducts: featuredProducts,
          invoiceSchemeId: invoceSchemeId,
          invoiceLayoutId: invoiceLayoutId,
          saleInvoiceLayoutId: saleInvoiceLayoutId,
          sellingPriceGroupId: sellingPriceGroupId,
          customField1: customField1,
          customField2: customField2,
          customField3: customField3,
          customField4: customField4,
          defaultPaymentAccounts: defaultPaymentAccounts,
          provinceId: provinceId,
          districtId: districtId,
          wardId: wardId,
        );
        final response = await _dataRepository.updateBusiness(
          id: id,
          request: request,
        );
        if (response.data != null) {
          await Future.delayed(
            const Duration(seconds: 1),
            () => navigator!.pop(),
          );
          emit(
            BusinessState.status(
              data: state.data!.copyWith(
                status: StatusType.loaded,
                error: 'Update Business Locations Successfully',
              ),
            ),
          );
        } else {
          emit(
            BusinessState.status(
              data: state.data!.copyWith(
                status: StatusType.error,
                error: 'Something went wrong',
              ),
            ),
          );
        }
      } catch (error) {
        emit(
          BusinessState.status(
            data: state.data!.copyWith(
              status: StatusType.error,
              error: 'Something went wrong!',
            ),
          ),
        );
        // Helpers.handleErrorApp(error: error, isShowDialog: true);
      } finally {
        Future.delayed(const Duration(seconds: 2), () => navigator!.pop());
      }
    }
  }

  Future<void> updateLocationSettings(
      int id,
      int? printReceiptOnInvoice,
      String? receiptPrinterType,
      int? printerId,
      int? invoiceLayoutId,
      int? invoiceSchemeId) async {
    try {
      emit(
        BusinessState.status(
          data: state.data?.copyWith(
            status: StatusType.loading,
            error: 'Loading...',
          ),
        ),
      );
      final request = UpdateLocationSettingsRequest(
        printReceiptOnInvoice: printReceiptOnInvoice,
        receiptPrinterType: receiptPrinterType,
        printerId: receiptPrinterType == "printer" ? printerId : null,
        invoiceLayoutId: invoiceLayoutId,
        invoiceSchemeId: invoiceSchemeId,
      );
      final response = await _dataRepository.updateLocationSettings(
        id: id,
        request: request,
      );
      final status = response.success;
      if (status == true) {
        await Future.delayed(
          const Duration(seconds: 1),
          () {
            navigator!.popUntil(
                (route) => route.settings.name == RouteGenerator.mainScreen);
          },
        );
        emit(
          BusinessState.status(
            data: state.data!.copyWith(
              status: StatusType.loaded,
              error: response.msg ?? '',
            ),
          ),
        );
      } else {
        emit(
          BusinessState.status(
            data: state.data!.copyWith(
              status: StatusType.error,
              error: response.msg ?? '',
            ),
          ),
        );
      }
    } catch (error) {
      emit(
        BusinessState.status(
          data: state.data!.copyWith(
            status: StatusType.error,
            error: 'Something went wrong!',
          ),
        ),
      );
      // Helpers.handleErrorApp(error: error, isShowDialog: true);
    } finally {
      Future.delayed(const Duration(seconds: 2), () => navigator!.pop());
    }
  }

  Future<void> createBusinessLocation(
    String? name,
    String? locationId,
    String? landmark,
    String? zipCode,
    String? stateProvince,
    String? country,
    String? mobile,
    String? alternateMobile,
    String? email,
    String? website,
    dynamic featuredProducts,
    int? invoceSchemeId,
    int? invoiceLayoutId,
    int? saleInvoiceLayoutId,
    int? sellingPriceGroupId,
    String? customField1,
    String? customField2,
    String? customField3,
    String? customField4,
    DefaultPaymentAccounts? defaultPaymentAccounts,
    int? provinceId,
    int? districtId,
    int? wardId,
  ) async {
    if (name.isEmptyOrNull ||
        zipCode.isEmptyOrNull ||
        country.isEmptyOrNull ||
        stateProvince.isEmptyOrNull ||
        saleInvoiceLayoutId == null ||
        invoiceLayoutId == null ||
        invoceSchemeId == null ||
        provinceId == null ||
        districtId == null ||
        wardId == null) {
      UIHelpers.showSnackBar(
        message: "Some fields are left empty",
        type: SnackBarType.ERROR,
      );
      return;
    }
    try {
      emit(
        BusinessState.status(
          data: state.data?.copyWith(
            status: StatusType.loading,
            error: 'Loading...',
          ),
        ),
      );
      final request = UpdateBusinessLocationRequest(
        name: name,
        locationId: locationId,
        landmark: landmark,
        state: stateProvince,
        zipCode: zipCode,
        country: country,
        mobile: mobile,
        alternateNumber: alternateMobile,
        email: email,
        website: website,
        featuredProducts: featuredProducts,
        invoiceSchemeId: invoceSchemeId,
        invoiceLayoutId: invoiceLayoutId,
        saleInvoiceLayoutId: saleInvoiceLayoutId,
        sellingPriceGroupId: sellingPriceGroupId,
        customField1: customField1,
        customField2: customField2,
        customField3: customField3,
        customField4: customField4,
        defaultPaymentAccounts: defaultPaymentAccounts,
        provinceId: provinceId,
        districtId: districtId,
        wardId: wardId,
      );
      final response = await _dataRepository.createBusiness(
        request: request,
      );
      final status = response.success;
      if (status == true) {
        await Future.delayed(
          const Duration(seconds: 1),
          () {
            navigator!.popUntil(
                (route) => route.settings.name == RouteGenerator.mainScreen);
          },
        );
        emit(
          BusinessState.status(
            data: state.data!.copyWith(
              status: StatusType.loaded,
              error: response.msg ?? '',
            ),
          ),
        );
      } else {
        emit(
          BusinessState.status(
            data: state.data!.copyWith(
              status: StatusType.error,
              error: response.msg ?? '',
            ),
          ),
        );
      }
    } catch (error) {
      emit(
        BusinessState.status(
          data: state.data!.copyWith(
            status: StatusType.error,
            error: 'Something went wrong!',
          ),
        ),
      );
      // Helpers.handleErrorApp(error: error, isShowDialog: true);
    } finally {
      Future.delayed(const Duration(seconds: 2), () => navigator!.pop());
    }
  }
}
