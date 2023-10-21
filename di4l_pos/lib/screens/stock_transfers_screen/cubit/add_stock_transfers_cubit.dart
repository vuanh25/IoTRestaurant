import 'package:di4l_pos/common/helpers.dart';
import 'package:di4l_pos/enums/status_type.dart';
import 'package:di4l_pos/get_it.dart';
import 'package:di4l_pos/models/products/response/product_response.dart';
import 'package:di4l_pos/models/stock_transfers/request/add_stock_transfers_request.dart';
import 'package:di4l_pos/models/transaction/response/transaction_response.dart';
import 'package:di4l_pos/repositories/data_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';

part 'add_stock_transfers_state.dart';
part 'add_stock_transfers_cubit.freezed.dart';

class AddStockTransfersCubit extends Cubit<AddStockTransfersState> {
  final _dataRepository = getIt<DataRepository>();
  AddStockTransfersCubit()
      : super(const AddStockTransfersState.initial(
            data: AddStockTransfersStateData()));

  Future<void> addStockTransfers({
    String? refNo,
    required String status,
    String? transactionDate,
    int? locationId,
    int? transferLocationId,
    dynamic searchProduct,
    String? finalTotal,
    List<ProductsRequest>? products,
    String? shippingCharges,
    String? additionalNotes,
  }) async {
    try {
      String check = await checkEmpty(status);
      if (check.isNotEmpty) {
        emit(AddStockTransfersState.error(
            data: state.data!.copyWith(error: check)));
        await Future<void>.delayed(const Duration(seconds: 1));
        emit(AddStockTransfersState.error(
            data: state.data!.copyWith(error: '')));
      } else {
        emit(AddStockTransfersState.status(
            data: state.data!
                .copyWith(status: StatusType.loading, error: 'Loading...')));

        final request = AddStockTransfersRequest(
          status: status,
          transactionDate: transactionDate,
          finalTotal: finalTotal,
          locationId: locationId,
          transferLocationId: transferLocationId,
          refNo: refNo,
          products: products,
          searchProduct: searchProduct,
          shippingCharges: shippingCharges,
          additionalNotes: additionalNotes,
        );
        final response =
            await _dataRepository.addStockTransfers(request: request);
        if (response.data != null
            // && response.data?.locationFrom != response.data?.locationTo
            ) {
          await Future.delayed(
              const Duration(seconds: 1), () => navigator!.pop());
          emit(AddStockTransfersState.status(
              data: state.data!.copyWith(
                  status: StatusType.loaded,
                  error: 'add_stock_transfer_success'.tr)));
        }
      }
    } catch (error) {
      emit(AddStockTransfersState.status(
          data: state.data!.copyWith(
              status: StatusType.error, error: 'Something went wrong')));
      Helpers.handleErrorApp(error: error);
    } finally {
      Future.delayed(const Duration(seconds: 2), () => navigator!.pop());
    }
  }

  void enableProduct(bool? value, String type) {
    emit(AddStockTransfersState.enableProduct(
        data: state.data!.copyWith(enableProduct: value!)));
  }

  Future<String> checkEmpty(
    String status,
  ) async {
    if (status.isEmpty) {
      return 'Total Amount Recovered is Required';
    } else {
      return '';
    }
  }
}
