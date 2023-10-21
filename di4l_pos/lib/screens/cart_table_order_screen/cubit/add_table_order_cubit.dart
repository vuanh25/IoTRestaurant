// ignore_for_file: invalid_use_of_visible_for_testing_member

import 'package:di4l_pos/common/helpers.dart';
import 'package:di4l_pos/common/ui_helpers.dart';
import 'package:di4l_pos/enums/status_type.dart';
import 'package:di4l_pos/get_it.dart';
import 'package:di4l_pos/models/cart_table_order/add_order_request.dart';
import 'package:di4l_pos/models/cart_table_order/cart_model.dart';
import 'package:di4l_pos/repositories/data_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_table_order_state.dart';
part 'add_table_order_cubit.freezed.dart';

class AddTableOrderCubit extends Bloc<AddTableOrderCubit, AddTableOrderState> {
  /// MARK: - Initials;
  final _dataRepository = getIt<DataRepository>();

  AddTableOrderCubit() : super(const AddTableOrderState.initial());
  Future<void> addOrder({
    required int? contactId,
    required String? saleNote,
    required int? tableId,
    required List<ItemProduct> itemProducts,
  }) async {
    try {
      List<Products> products = [];
      for (var itemProduct in itemProducts) {
        List<int> modifier = [];
        List<double> modifierPrice = [];
        List<int> modifierQuantity = [];
        List<int> modifierSetId = [];
        for (var modifierSet in itemProduct.modifierSets!) {
          for (var modifierCart in modifierSet.modifierCart!) {
            if (modifierCart.quantity! > 0) {
              modifierSetId.add(modifierSet.modifierSetId!);
              modifier.add(modifierCart.variationId!);
              modifierPrice.add(modifierCart.price!.toDouble());
              modifierQuantity.add(modifierCart.quantity!);
            }
          }
        }
        products.add(Products(
          productId: itemProduct.productId,
          variationId: itemProduct.variationId,
          quantity: itemProduct.quantity!,
          discountAmount: 0,
          discountType: "fixed",
          modifier: modifier,
          modifierPrice: modifierPrice,
          modifierQuantity: modifierQuantity,
          modifierSetId: modifierSetId,
          unitPriceIncTax: itemProduct.price!.toDouble(),
        ));
      }
      final response = await _dataRepository.addOrder(
          request: AddOrderRequest(sells: [
        Sells(
          locationId: 12,
          products: products,
          discountType: "fixed",
          discountAmount: 0,
          contactId: contactId,
          saleNote: saleNote,
          resTableId: tableId,
          status: "final",
        )
      ]));
      print('${response.success}\n${response.msg}');
    } catch (error) {
      Helpers.handleErrorApp(error: error);
    } finally {
      UIHelpers.dismissLoading();
    }
  }

//   void setProductSelected({required List<ItemProduct> itemProducts}) {
//     List<SellProductRequest> products = [];
//     double sum = 0;
//     int count = 0;
//     for (var itemProduct in itemProducts) {
//       count += itemProduct.quantity!;
//       sum += itemProduct.price! * itemProduct.quantity!;
//       products.add(SellProductRequest(
//         productId: itemProduct.productId,
//         quantity: itemProduct.quantity!,
//         unitPrice: itemProduct.price!.toDouble(),
//       ));
//     }
//     emit(AddTableOrderState.setProductSelected(state.data?.copyWith(
//         productsSelected: itemProducts,
//         totalAmount: sum,
//         countProductSelect: count,
//         products: products)));
//   }

//   String setDiscountType(
//     String value,
//   ) {
//     emit(AddTableOrderState.setDiscount(
//         state.data!.copyWith(discountType: value)));
//     return value;
//   }

//   void setTransactionDate(
//     DateTime value,
//   ) {
//     emit(AddTableOrderState.setTransactionDate(
//         state.data!.copyWith(transactionDate: value)));
//   }

//   void setBusinessId(
//     int? value,
//   ) {
//     emit(AddTableOrderState.setBusinessId(
//         state.data!.copyWith(businessId: value)));
//   }

//   void setCustomerSelect(
//     ContactModel? value,
//   ) {
//     emit(AddTableOrderState.setCustomerSelect(state.data!.copyWith(
//       customerSelect: value,
//     )));
//   }

//   void setDiscount(
//     double value,
//   ) {
//     emit(AddTableOrderState.setDiscount(state.data!.copyWith(discount: value)));
//   }

//   void setTableId(
//     int? value,
//   ) {
//     emit(AddTableOrderState.setTableId(state.data!.copyWith(tableId: value)));
//   }

//   void setNote(
//     String? value,
//   ) {
//     emit(AddTableOrderState.setNote(state.data!.copyWith(note: value)));
//   }
}
