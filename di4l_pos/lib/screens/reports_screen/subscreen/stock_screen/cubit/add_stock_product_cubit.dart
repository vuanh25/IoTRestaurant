import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
 

import '../../../../../enums/status_type.dart';
import '../../../../../get_it.dart';
import '../../../../../models/product_stock/request/add_product_stock_request.dart';
import '../../../../../repositories/data_repository.dart';

part 'add_stock_product_state.dart';
part 'add_stock_product_cubit.freezed.dart';

class AddStockProductCubit extends Cubit<AddStockProductState> {
  final _dataRepository = getIt<DataRepository>();

  AddStockProductCubit()
      : super(const AddStockProductState.initial(
            data: AddStockProductStateData()));
  Future<void> addQuantity(
      {int? productId,
      Map<String, Map<String, List<Purchase>>>? stocks}) async {
    try {
      emit(AddStockProductState.status(
          data: state.data!
              .copyWith(status: StatusType.loading, error: 'Loading...')));
      final response = await _dataRepository.addProductStock(
          request:
              AddProductStockRequest(productId: productId, stocks: stocks));
    } catch (error) {
      debugPrint('AddProduct Error: $error');
    }
  }
}
