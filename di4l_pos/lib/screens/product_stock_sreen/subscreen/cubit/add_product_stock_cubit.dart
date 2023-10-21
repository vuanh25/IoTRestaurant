import 'package:di4l_pos/common/storage/app_prefs.dart';
import 'package:di4l_pos/models/business_location/response/business_location.dart';
import 'package:di4l_pos/models/product_stock/request/add_product_stock_request.dart';
import 'package:di4l_pos/models/products/response/product_response.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:di4l_pos/common/helpers.dart';
import 'package:di4l_pos/common/ui_helpers.dart';
import 'package:di4l_pos/enums/status_type.dart';
import 'package:di4l_pos/get_it.dart';
import 'package:di4l_pos/repositories/data_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

part 'add_product_stock_state.dart';
part 'add_product_stock_cubit.freezed.dart';

class AddProductStockCubit extends Cubit<AddProductStockState> {
  /// MARK - Initials
  final _dataRepository = getIt<DataRepository>();

  AddProductStockCubit()
      : super(const AddProductStockState.initial(
            data: AddProductStockStateData()));

  Future<void> addProductStock(
      {String? quantity,
      String? price,
      String? note,
      String? dateAdded,
      Product? product}) async {
    try {
      emit(AddProductStockState.status(
          data: state.data?.copyWith(status: StatusType.loading)));
      final request = AddProductStockRequest(
        productId: product!.id,
        stocks: {
          state.data!.location!.locationId!: {
            product.productVariations![0]!.variations![0]!.id.toString(): [
              Purchase(
                quantity: quantity,
                purchasePrice: price,
                transactionDate: dateAdded,
                purchaseLineNote: note,
              )
            ]
          }
        },
      );
      await _dataRepository.addProductStock(request: request);
      Future.delayed(const Duration(seconds: 1), () => navigator!.pop());
      emit(AddProductStockState.status(
          data: state.data!.copyWith(
              status: StatusType.loaded, error: "add_product_stock_success")));
    } catch (error) {
      emit(AddProductStockState.status(
          data: state.data?.copyWith(
              status: StatusType.error, error: "Something went wrong!")));
      Helpers.handleErrorApp(error: error);
    } finally {
      UIHelpers.dismissLoading();
    }
  }

  Future<BusinessLocation?> getBusinessLocation() async {
    final appPrefs = getIt<AppPref>();
    final business = await appPrefs.getBusiness();
    emit(AddProductStockState.getBusinessLocation(
        data: state.data?.copyWith(location: business)));
    return business;
  }
}
