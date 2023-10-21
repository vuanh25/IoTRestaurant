// ignore_for_file: invalid_use_of_protected_member

import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:di4l_pos/common/helpers.dart';
import 'package:di4l_pos/common/storage/app_prefs.dart';
import 'package:di4l_pos/common/ui_helpers.dart';
import 'package:di4l_pos/enums/status_type.dart';
import 'package:di4l_pos/get_it.dart';
import 'package:di4l_pos/models/cart_table_order/cart_model.dart';
import 'package:di4l_pos/screens/table_order_screen/mobile/table_order_mobile_screen.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';

part 'cart_table_order_state.dart';
part 'cart_table_order_cubit.freezed.dart';

class CartCubit extends Cubit<CartState> {
  /// MARK: - Initials;
  CartCubit() : super(const CartState.initial(data: CartStateData()));
  final tableOrder = Get.put(TableOrderController());
  final _appPrefs = getIt<AppPref>();

  Future<void> addCart({required ItemProduct itemProduct}) async {
    try {
      emit(CartState.status(
          data: state.data?.copyWith(status: StatusType.loading)));
      tableOrder.productsInCart.add(itemProduct);
      emit(CartState.addCart(
          data: state.data?.copyWith(
        status: StatusType.loaded,
        listItemProduct: tableOrder.productsInCart.value,
      )));
      // await _appPrefs.removeCart();
      // await _appPrefs.saveCart(
      //     cartLines: ItemProduct.encode(tableOrder.productsInCart.value));
    } catch (error) {
      emit(
        CartState.status(
          data: state.data?.copyWith(status: StatusType.error),
        ),
      );
      Helpers.handleErrorApp(error: error);
    } finally {
      UIHelpers.dismissLoading();
    }
  }

  Future<void> getCart() async {
    try {
      emit(CartState.status(
          data: state.data?.copyWith(status: StatusType.loading)));
      emit(CartState.getCart(
          data: state.data?.copyWith(
        status: StatusType.loaded,
        listItemProduct: tableOrder.productsInCart.value,
      )));
      // await _appPrefs.removeCart();
      // await _appPrefs.saveCart(
      //     cartLines: ItemProduct.encode(tableOrder.productsInCart.value));
    } catch (error) {
      emit(
        CartState.status(
          data: state.data?.copyWith(status: StatusType.error),
        ),
      );
      Helpers.handleErrorApp(error: error);
    } finally {
      UIHelpers.dismissLoading();
    }
  }

  Future removeProductAt({required int index}) async {
    try {
      emit(CartState.status(
          data: state.data?.copyWith(status: StatusType.loading)));
      tableOrder.productsInCart.removeAt(index);
      emit(CartState.removeProductAt(
          data: state.data?.copyWith(
        status: StatusType.loaded,
        listItemProduct: tableOrder.productsInCart.value,
      )));
      // await _appPrefs.removeCart();
      // await _appPrefs.saveCart(
      //     cartLines: ItemProduct.encode(tableOrder.productsInCart.value));
    } catch (error) {
      emit(CartState.status(
          data: state.data?.copyWith(status: StatusType.error)));
      Helpers.handleErrorApp(error: error);
    } finally {
      UIHelpers.dismissLoading();
    }
  }

  Future removeAll() async {
    try {
      emit(CartState.status(
          data: state.data?.copyWith(status: StatusType.loading)));
      tableOrder.productsInCart
          .removeRange(0, tableOrder.productsInCart.length);
      emit(CartState.removeAll(
          data: state.data?.copyWith(
        status: StatusType.loaded,
        listItemProduct: tableOrder.productsInCart.value,
      )));
      await _appPrefs.removeCart();
    } catch (error) {
      emit(CartState.status(
          data: state.data?.copyWith(status: StatusType.error)));
      Helpers.handleErrorApp(error: error);
    } finally {
      UIHelpers.dismissLoading();
    }
  }
}
