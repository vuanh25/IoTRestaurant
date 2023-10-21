// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:di4l_pos/common/helpers.dart';
import 'package:di4l_pos/common/ui_helpers.dart';
import 'package:di4l_pos/models/sell/request/add_sell_request.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:di4l_pos/get_it.dart';
import 'package:di4l_pos/repositories/data_repository.dart';
import 'package:di4l_pos/common/storage/app_prefs.dart';
import 'package:get/get.dart';
part 'create_order_state.dart';
part 'create_order_cubit.freezed.dart';

class CreateOrderCubit extends Cubit<CreateOrderState> {
  final _dataRepository = getIt<DataRepository>();
  final _appPrefs = getIt<AppPref>();
  CreateOrderCubit()
      : super(const CreateOrderState.initial(data: CreateOrderStateData()));
  Future<void> addSell({
    int? contactId,
    String? transactionDate,
    String? invoiceNo,
    String? status,
    bool? isQuotation,
    int? taxRateId,
    double? discountAmount,
    String? discountType,
    String? saleNote,
    String? staffNote,
    int? commissionAgent,
    String? shippingDetails,
    String? shippingAddress,
    String? shippingStatus,
    String? deliveredTo,
    double? shippingCharges,
    double? packingCharge,
    double? exchangeRate,
    int? sellingPriceGroupId,
    int? payTermNumber,
    String? payTermType,
    int? isRecurring,
    int? recurInterval,
    String? recurIntervalType,
    int? subscriptionRepeatOn,
    String? subscriptionNo,
    int? recurRepetitions,
    int? rpRedeemed,
    double? rpRedeemedAmount,
    int? typesOfServiceId,
    String? serviceCustomField1,
    String? serviceCustomField2,
    String? serviceCustomField3,
    String? serviceCustomField4,
    double? roundOffAmount,
    int? tableId,
    int? serviceStaffId,
    int? changeReturn,
    List<SellProductRequest>? products,
    List<SellPaymentRequest>? payments,
  }) async {
    try {
      UIHelpers.showLoading();
      final _businessLocation = await _appPrefs.getBusiness();
      List<SellRequest>? _sells = [];
      final _request = SellRequest(
        locationId: _businessLocation!.id.toString(),
        taxRateId: taxRateId,
        contactId: contactId,
        discountAmount: discountAmount,
        discountType: discountType,
        isQuotation: isQuotation,
        staffNote: staffNote,
        saleNote: saleNote,
        isRecurring: isRecurring,
        recurInterval: recurInterval,
        recurIntervalType: recurIntervalType,
        subscriptionNo: subscriptionNo,
        recurRepetitions: recurRepetitions,
        status: status,
        shippingStatus: shippingStatus,
        shippingDetails: shippingDetails,
        shippingAddress: shippingAddress,
        deliveredTo: deliveredTo,
        shippingCharges: shippingCharges,
        packingCharge: packingCharge,
        exchangeRate: exchangeRate,
        products: products,
        payments: payments,
      );
      _sells.add(_request);
      final _sellRequest = AddSellRequest(sells: _sells);
      // final _response = await _dataRepository.addSell(request: _sellRequest);
      // if (_response.success == 1) {
      //   await UIHelpers.showSnackBar(message: 'create_order_success'.tr);
      //   navigator!.pop();
      // } else {
      //   await UIHelpers.showSnackBar(
      //       message: _response.msg!, type: SnackBarType.ERROR);
      // }
    } catch (error) {
      debugPrint('Create order Error: $error');
      Helpers.handleErrorApp(error: error, isShowDialog: true);
    } finally {
      Future.delayed(const Duration(seconds: 2), () => navigator!.pop());
    }
  }

  void getType(String type) {
    emit(CreateOrderState.getDiscountType(
        data: state.data!.copyWith(discountType: type)));
  }
}
