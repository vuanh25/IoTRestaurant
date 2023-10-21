import 'package:di4l_pos/common/helpers.dart';
import 'package:di4l_pos/enums/status_type.dart';
import 'package:di4l_pos/get_it.dart';
import 'package:di4l_pos/models/products/response/product_response.dart';
import 'package:di4l_pos/models/stock_adjustment/request/add_stock_adjustment_request.dart';
import 'package:di4l_pos/models/transaction/response/transaction_response.dart';
import 'package:di4l_pos/repositories/data_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';

part 'add_stock_adjustment_state.dart';
part 'add_stock_adjustment_cubit.freezed.dart';

class AddStockAdjustmentCubit extends Cubit<AddStockAdjustmentState> {
  /// MARK: - Initials;
  final _dataRepository = getIt<DataRepository>();

  AddStockAdjustmentCubit()
      : super(const AddStockAdjustmentState.initial(
            data: AddStockAdjustmentStateData()));

  Future<void> addStockAdjustment({
    required String adjustmentType,
    String? refNo,
    String? transactionDate,
    int? locationId,
    int? transferLocationId,
    dynamic searchProduct,
    String? finalTotal,
    List<ProductsRequest>? products,
    String? totalAmountRecovered,
    String? additionalNotes,
  }) async {
    try {
      String check = await checkEmpty(adjustmentType);
      if (check.isNotEmpty) {
        emit(AddStockAdjustmentState.error(
            data: state.data!.copyWith(error: check)));
        await Future<void>.delayed(const Duration(seconds: 1));
        emit(AddStockAdjustmentState.error(
            data: state.data!.copyWith(error: '')));
      } else {
        emit(AddStockAdjustmentState.status(
            data: state.data!
                .copyWith(status: StatusType.loading, error: 'Loading...')));
        final request = AddStockAdjustmentRequest(
          finalTotal: finalTotal,
          locationId: locationId,
          transactionDate: transactionDate,
          adjustmentType: adjustmentType,
          refNo: refNo,
          products: products,
          searchProduct: searchProduct,
          totalAmountRecovered: totalAmountRecovered,
          additionalNotes: additionalNotes,
        );
        final response =
            await _dataRepository.addStockAdjustment(request: request);
        if (response.data != null) {
          await Future.delayed(
              const Duration(seconds: 1), () => navigator!.pop());
          emit(AddStockAdjustmentState.status(
              data: state.data!.copyWith(
                  status: StatusType.loaded,
                  error: 'add_stock_adjustment_success'.tr)));
        }
      }
    } catch (error) {
      emit(AddStockAdjustmentState.status(
          data: state.data!.copyWith(
              status: StatusType.error, error: 'Something went wrong')));
      Helpers.handleErrorApp(error: error);
    } finally {
      Future.delayed(const Duration(seconds: 2), () => navigator!.pop());
    }
  }

  void enableProduct(bool? value, String type) {
    emit(AddStockAdjustmentState.enableProduct(
        data: state.data!.copyWith(enableProduct: value!)));
  }

  void sum(String value) {
    emit(AddStockAdjustmentState.enableProduct(
        data: state.data!.copyWith(sum: value)));
  }

  Future<String> checkEmpty(
    String adjustmentType,
  ) async {
    if (adjustmentType.isEmpty) {
      return 'Total Amount Recovered is Required';
    } else {
      return '';
    }
  }
}
