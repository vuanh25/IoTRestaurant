// ignore: file_names
// ignore_for_file: file_names, duplicate_ignore

import 'dart:io';

import 'package:di4l_pos/common/helpers.dart';
import 'package:di4l_pos/common/ui_helpers.dart';
import 'package:di4l_pos/enums/status_type.dart';
import 'package:di4l_pos/get_it.dart';
import 'package:di4l_pos/models/shopinfo/request/shopSettingPUTRq.dart' as Rq;
import 'package:di4l_pos/models/shopinfo/request/shopSettingPUTRq.dart';
import 'package:di4l_pos/models/shopinfo/response/Currency.dart';
import 'package:di4l_pos/models/shopinfo/response/DefaultUnit.dart';
import 'package:di4l_pos/models/shopinfo/response/ShopSettingRp.dart';
import 'package:di4l_pos/models/shopinfo/response/TaxResponse.dart';
import 'package:di4l_pos/repositories/data_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

part 'shopInfo_cubit.freezed.dart';
part 'shopInfo_state.dart';

class ShopInfoCubit extends Cubit<ShopInfoState> {
  final _dataRepository = getIt<DataRepository>();

  ShopInfoCubit() : super(const ShopInfoState.initial(data: ShopInfoData()));

  Future<void> updateBusiness({
    String? name,
    String? startDate,
    int? defaultProfitPercent,
    String? currencySymbolPlacement,
    String? timeZone,
    int? fyStartMonth,
    String? accountingMethod,
    int? transactionEditDays,
    String? dateFormat,
    String? timeFormat,
    int? currencyId,
    String? taxNumber1,
    String? taxLabel1,
    String? taxNumber2,
    String? taxLabel2,
    bool? enableInlineTax,
    String? skuPrefix,
    bool? enableProductExpiry,
    String? expiryType,
    String? onProductExpiry,
    int? stopSellingBefore,
    bool? enableBrand,
    bool? enableCategory,
    bool? enableSubCategory,
    bool? enablePriceTax,
    int? defaultUnit,
    bool? enableSubUnits,
    bool? enableRacks,
    bool? enableRow,
    String? defaultCreditLimit,
    bool? enableProductWarranty,
    bool? enablePosition,
    String? defaultSalesDiscount,
    dynamic defaultSalesTax,
    dynamic itemAdditionMethod,
    CommonSettings? commonSettings,
    Rq.PosSettings? posSettings,
    Rq.Shortcuts? shortcuts,
    String? salesCmsnAgnt,
    Rq.WeighingScaleSetting? weighingScaleSetting,
    RefNoPrefixes? refNoPrefixes,
    EmailSettings? emailSettings,
    SmsSettings? smsSettings,
    CustomLabels? customLabels,
    Settings? settings,
    int? enableEditingProductFromPurchase,
    int? enablePurchaseStatus,
    int? enableLotNumber,
    int? stockExpiryAlertDays,
    String? themeColor,
    int? enableTooltip,
    int? enableRp,
    String? rpName,
    dynamic amountForUnitRp,
    dynamic minOrderTotalForRp,
    dynamic maxRpPerOrder,
    dynamic redeemAmountPerUnitRp,
    dynamic minOrderTotalForRedeem,
    dynamic minRedeemPoint,
    dynamic maxRedeemPoint,
    dynamic rpExpiryPeriod,
    String? rpExpiryType,
    String? domain,
  }) async {
    try {
      emit(ShopInfoState.status(
          data: state.data!
              .copyWith(status: StatusType.loading, error: 'Loading...')));
      final request = ShopSettingRq(
        //business
        name: name,
        currencyId: currencyId,
        startDate: startDate,
        defaultProfitPercent: defaultProfitPercent,
        currencySymbolPlacement: currencySymbolPlacement,
        timeZone: timeZone,
        fyStartMonth: fyStartMonth,
        accountingMethod: accountingMethod,
        transactionEditDays: transactionEditDays,
        dateFormat: dateFormat,
        timeFormat: timeFormat,
        //logo
        // currencyId: info.business.currency
        //tax
        taxNumber1: taxNumber1,
        taxLabel1: taxLabel1,
        taxNumber2: taxNumber2,
        taxLabel2: taxLabel2,
        enableInlineTax: enableInlineTax == false ? 0 : 1,
        // // //product
        skuPrefix: skuPrefix,
        enableProductExpiry: enableProductExpiry == false ? 0 : 1,
        expiryType: expiryType,
        onProductExpiry: onProductExpiry,
        stopSellingBefore: stopSellingBefore,
        enableBrand: enableBrand == false ? 0 : 1,
        enableCategory: enableCategory == false ? 0 : 1,
        enableSubCategory: enableSubCategory == false ? 0 : 1,
        enablePriceTax: enablePriceTax == false ? 0 : 1,
        defaultUnit: defaultUnit,
        enableSubUnits: enableSubUnits == false ? 0 : 1,
        enableRacks: enableRacks == false ? 0 : 1,
        enableRow: enableRow == false ? 0 : 1,
        enablePosition: enablePosition == false ? 0 : 1,
        defaultSalesDiscount: defaultSalesDiscount,
        defaultSalesTax: defaultSalesTax,
        itemAdditionMethod: itemAdditionMethod,
        // // //CONTACT
        commonSettings: commonSettings,
        posSettings: posSettings,
        shortcuts: shortcuts,
        salesCmsnAgnt: salesCmsnAgnt,
        weighingScaleSetting: weighingScaleSetting,
        refNoPrefixes: refNoPrefixes,
        emailSettings: emailSettings,
        smsSettings: smsSettings,
        customLabels: customLabels,
        settings: settings,
        enableEditingProductFromPurchase: enableEditingProductFromPurchase,
        enablePurchaseStatus: enablePurchaseStatus,
        enableLotNumber: enableLotNumber,
        stockExpiryAlertDays: stockExpiryAlertDays,
        themeColor: themeColor,
        enableTooltip: enableTooltip,
        enableRp: enableRp,
        rpName: rpName,
        amountForUnitRp: amountForUnitRp,
        minOrderTotalForRp: minOrderTotalForRp,
        maxRpPerOrder: maxRpPerOrder,
        redeemAmountPerUnitRp: redeemAmountPerUnitRp,
        minOrderTotalForRedeem: minOrderTotalForRedeem,
        minRedeemPoint: minRedeemPoint,
        maxRedeemPoint: maxRedeemPoint,
        rpExpiryPeriod: rpExpiryPeriod,
        rpExpiryType: rpExpiryType,
        domain: domain,
      );
      final response =
          await _dataRepository.updateInfoBusiness(request: request);
      if (response.success == true) {
        await Future.delayed(
            const Duration(seconds: 1), () => navigator!.pop());
        emit(ShopInfoState.status(
            data: state.data!.copyWith(
                status: StatusType.loaded, error: response.message ?? '')));
      } else if (response.success == false) {
        emit(ShopInfoState.status(
            data: state.data!.copyWith(
                status: StatusType.error, error: response.message ?? '')));
      }
    } catch (error) {
      debugPrint('error :${error}');
      emit(ShopInfoState.status(
          data: state.data!.copyWith(
              status: StatusType.error, error: 'Something went wrong!')));
      // Helpers.handleErrorApp(error: error, isShowDialog: true);
    } finally {
      Future.delayed(const Duration(seconds: 2), () => navigator!.pop());
    }
  }

  Future<void> getTax() async {
    try {
      final listTax = await _dataRepository.getTax();
      emit(ShopInfoState.getshopInfo(
          data: state.data?.copyWith(
        listTax: listTax.data ?? [],
      )));
    } catch (error) {
      //debugPrint('Get Products Error: $error');
      emit(ShopInfoState.status(
          data: state.data?.copyWith(status: StatusType.error)));
      Helpers.handleErrorApp(error: error);
    } finally {
      UIHelpers.dismissLoading();
    }
  }

  void getTaxData(TaxData taxData) {
    emit(ShopInfoState.getshopInfo(data: state.data?.copyWith(tax: taxData)));
  }

  Future<void> getListUnit() async {
    try {
      emit(ShopInfoState.status(
          data: state.data?.copyWith(status: StatusType.loading)));
      final listDFUnit = await _dataRepository.getListDFUnit();
      emit(ShopInfoState.getshopInfo(
          data: state.data?.copyWith(
        status: StatusType.loaded,
        listDFUnit: listDFUnit,
      )));
    } catch (error) {
      //debugPrint('Get Products Error: $error');
      emit(ShopInfoState.status(
          data: state.data?.copyWith(status: StatusType.error)));
      Helpers.handleErrorApp(error: error);
    } finally {
      UIHelpers.dismissLoading();
    }
  }

  Future<void> getInfoBussinessSetting() async {
    try {
      emit(ShopInfoState.status(
          data: state.data?.copyWith(status: StatusType.loading)));
      final shopInfo = await _dataRepository.getInfoBussinessSetting();
      emit(ShopInfoState.getshopInfo(
          data: state.data?.copyWith(
        status: StatusType.loaded,
        smsService: shopInfo.smsSetting!.smsService ?? '',
        shopInfo: shopInfo,
      )));
    } catch (error) {
      debugPrint('Error: $error');
      emit(ShopInfoState.status(
          data: state.data?.copyWith(status: StatusType.error)));
      Helpers.handleErrorApp(error: error);
    } finally {
      UIHelpers.dismissLoading();
    }
  }

  Future<void> getListCurrency() async {
    try {
      emit(ShopInfoState.status(
          data: state.data?.copyWith(status: StatusType.loading)));
      final listCurrencysResponse = await _dataRepository.getListCurrency();
      emit(ShopInfoState.getListCurrency(
          data: state.data?.copyWith(
        status: StatusType.loaded,
        listCurrency: listCurrencysResponse,
      )));
    } catch (error) {
      //debugPrint('Get Products Error: $error');
      emit(ShopInfoState.status(
          data: state.data?.copyWith(status: StatusType.error)));
      Helpers.handleErrorApp(error: error);
    } finally {
      UIHelpers.dismissLoading();
    }
  }

  Future<void> getListTimeZone() async {
    try {
      emit(ShopInfoState.status(
          data: state.data?.copyWith(status: StatusType.loading)));
      final listTimeZoneResponse = await _dataRepository.getListTimeZone();
      emit(ShopInfoState.getListTimeZone(
          data: state.data?.copyWith(
        status: StatusType.loaded,
        listTimeZone: listTimeZoneResponse,
      )));
    } catch (error) {
      //debugPrint('Get Products Error: $error');
      emit(ShopInfoState.status(
          data: state.data?.copyWith(status: StatusType.error)));
      Helpers.handleErrorApp(error: error);
    } finally {
      UIHelpers.dismissLoading();
    }
  }

  Future<void> selectImage(ImageSource? source) async {
    final _image = await ImagePicker().pickImage(source: source!);
    emit(
      ShopInfoState.getImage(
          data: state.data!.copyWith(image: File(_image!.path))),
    );
  }

  Future<void> updateLogo() async {
    final response = await _dataRepository.updateLogo(file: state.data?.image);
    getInfoBussinessSetting();
    // emit(ShopInfoState.errors(
    //     data: state.data?.copyWith(error: response.message!)));
  }

  Future<void> delete(int id) async => UIHelpers.showCustomDialog(
        context: Get.context!,
        message: 'message_confirm_delete_customer_group'.tr,
        onComfirm: () async {
          try {
            await _dataRepository.deleteStatusOrder(id: id);
            getInfoBussinessSetting();
            await Future.delayed(
                const Duration(microseconds: 500), () => navigator!.pop());
          } catch (error) {
            debugPrint('Delete Status Order: $error');
          } finally {
            getInfoBussinessSetting();
            // Future.delayed(const Duration(seconds: 2), () => navigator!.pop());
          }
        },
        isShowClose: true,
      );

  void getSmsService(String smsService) {
    emit(ShopInfoState.getshopInfo(
        data: state.data!.copyWith(smsService: smsService)));
  }
}
