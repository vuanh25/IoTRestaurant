import 'package:bloc/bloc.dart';
import 'package:di4l_pos/common/helpers.dart';
import 'package:di4l_pos/enums/status_type.dart';
import 'package:di4l_pos/get_it.dart';
import 'package:di4l_pos/models/shopinfo/response/TaxResponse.dart';
import 'package:di4l_pos/models/stock_purchases/request/add_stock_purchase_request.dart';
import 'package:di4l_pos/models/stock_purchases/response/purchases_create_response.dart';
import 'package:di4l_pos/repositories/data_repository.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';

part 'add_stock_purchase_state.dart';
part 'add_stock_purchase_cubit.freezed.dart';

class AddStockPurchaseCubit extends Cubit<AddStockPurchaseState> {
  final _dataRepository = getIt<DataRepository>();

  AddStockPurchaseCubit()
      : super(const AddStockPurchaseState.initial(
            data: AddStockPurchaseStateData()));

  Future<void> addStockPurchase({
    int? contactId,
    String? refNo,
    String? transactionDate,
    int? locationId,
    dynamic payTermNumber,
    dynamic payTermType,
    String? finalTotal,
    List<PurchaseRequest>? products,
    List<Payment>? payment,
    String? totalBeforeTax,
    String? discountType,
    String? discountAmount,
    String? taxId,
    String? taxAmount,
    String? additionalNotes,
    String? shippingDetails,
    String? shippingCharges,
    String? advanceBalance,
  }) async {
    try {
      // String check = await checkEmpty(adjustmentType);
      // if (check.isNotEmpty) {
      //   emit(AddStockPurchaseState.error(
      //       data: state.data!.copyWith(error: check)));
      //   await Future<void>.delayed(const Duration(seconds: 1));
      //   emit(
      //       AddStockPurchaseState.error(data: state.data!.copyWith(error: '')));
      // } else {
      emit(AddStockPurchaseState.status(
          data: state.data!
              .copyWith(status: StatusType.loading, error: 'Loading...')));
      final request = AddStockPurchaseRequest(
          contactId: contactId,
          refNo: refNo,
          transactionDate: transactionDate,
          status: 'received',
          locationId: locationId,
          exchangeRate: 1,
          payTermNumber: payTermNumber,
          payTermType: payTermType,
          purchases: products,
          totalBeforeTax: totalBeforeTax,
          discountType: discountType,
          discountAmount: discountAmount,
          taxId: taxId,
          taxAmount: taxAmount,
          additionalNotes: additionalNotes,
          shippingDetails: shippingDetails,
          shippingCharges: shippingCharges,
          additionalExpenseKey1: null,
          additionalExpenseKey2: null,
          additionalExpenseKey3: null,
          additionalExpenseKey4: null,
          additionalExpenseValue1: "0",
          additionalExpenseValue2: "0",
          additionalExpenseValue3: "0",
          additionalExpenseValue4: "0",
          finalTotal: finalTotal,
          advanceBalance: advanceBalance,
          payment: payment);
      final response =
          await _dataRepository.addStockPurchases(request: request);
      if (response.data != null) {
        await Future.delayed(
            const Duration(seconds: 1), () => navigator!.pop());
        emit(AddStockPurchaseState.status(
            data: state.data!.copyWith(
                status: StatusType.loaded,
                error: 'add_stock_purchase_success'.tr)));
      }
      // }
    } catch (error) {
      emit(AddStockPurchaseState.status(
          data: state.data!.copyWith(
              status: StatusType.error, error: 'Something went wrong')));
      Helpers.handleErrorApp(error: error);
    } finally {
      Future.delayed(const Duration(seconds: 2), () => navigator!.pop());
    }
  }

  Future<void> getTax() async {
    try {
      final listTax = await _dataRepository.getTax();
      emit(AddStockPurchaseState.status(
          data: state.data?.copyWith(
        listTax: listTax.data ?? [],
      )));
    } catch (error) {
      //debugPrint('Get Products Error: $error');
      emit(AddStockPurchaseState.status(
          data: state.data?.copyWith(status: StatusType.error)));
      Helpers.handleErrorApp(error: error);
    } finally {}
  }

  Future<void> getPurchaseCreate() async {
    try {
      final response = await _dataRepository.getPurchasesCreate();
      if (response.success == true) {
        emit(AddStockPurchaseState.status(
            data: state.data?.copyWith(
                purchaseCreate: response.data,
                listPaymentMethod: response.data?.paymentTypes ?? []
                // listTax: listTax.data ?? [],
                )));
      }
    } catch (error) {
      debugPrint('Get Products Error: $error');
      emit(AddStockPurchaseState.status(
          data: state.data?.copyWith(status: StatusType.error)));
      Helpers.handleErrorApp(error: error);
      // debugPrint('Error : $error');
    } finally {}
  }

  void getTaxData(TaxData taxData) {
    emit(
        AddStockPurchaseState.status(data: state.data?.copyWith(tax: taxData)));
  }

  void getPaymentMethod(String paymentMethod) {
    emit(AddStockPurchaseState.status(
        data: state.data?.copyWith(payMethod: paymentMethod)));
  }
}
