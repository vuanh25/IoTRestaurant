// ignore_for_file: invalid_use_of_visible_for_testing_member

import 'dart:developer';

import 'package:di4l_pos/enums/status_type.dart';
import 'package:di4l_pos/get_it.dart';
import 'package:di4l_pos/models/cart_table_order/add_order_request.dart';
import 'package:di4l_pos/models/products/request/add_product_request.dart';
import 'package:di4l_pos/models/sell/request/add_sell_request.dart';
import 'package:di4l_pos/repositories/data_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';

import '../../../../../common/ui_helpers.dart';
import '../../../../../models/contacts/response/contacts_response.dart';
import '../../../../../models/products/request/product_of_sell_request.dart';
import '../../../../../models/products/response/product_response.dart';

part 'add_order_state.dart';
part 'add_order_cubit.freezed.dart';

class AddOrderCubit extends Bloc<AddOrderCubit, AddOrderState> {
  /// MARK: - Initials;
  final _dataRepository = getIt<DataRepository>();

  AddOrderCubit()
      : super(AddOrderState.initial(
            data: AddOrderStateData(transactionDate: DateTime.now())));

  Future<void> addOrder() async {
    UIHelpers.showLoading();

    try {
      var json = AddSellRequest(sells: [
        SellRequest(
          locationId: state.data!.businessID.toString(),
          products: state.data!.products,
          discountType: state.data!.discountType,
          discountAmount: state.data!.discount,
          contactId: state.data!.customerSelect!.id,
          transactionDate: state.data!.transactionDate.toString(),
          shippingCharges: state.data!.shipping,
          payTermNumber: state.data!.countProductSelect,
          status: "final",
        )
      ]).toJson();
      // print(
      //     "############################################## tao don hang moi: ");
      // print(state.data!.products.first.quantity);
      final response = await _dataRepository.addSell(
          request: AddSellRequest(sells: [
        SellRequest(
          locationId: state.data!.businessID.toString(),
          products: state.data!.products,
          discountType: state.data!.discountType,
          discountAmount: state.data!.discount,
          contactId: state.data!.customerSelect!.id,
          transactionDate: state.data!.transactionDate.toString(),
          shippingCharges: state.data!.shipping,
          payTermNumber: state.data!.countProductSelect,
          status: "final",
        )
      ]));

      if (response.success == 1) {
        await Future.delayed(
            const Duration(seconds: 1), () => navigator!.pop());
        UIHelpers.showDialogDefaultBloc(
            status: StatusType.loaded, text: response.msg.toString());
      }
    } catch (error) {
      //await Future.delayed(const Duration(seconds: 1), () => navigator!.pop());
      UIHelpers.showDialogDefaultBloc(
          status: StatusType.error, text: 'Something went wrong!');
      // emit(AddProductState.status(
      //     data: state.data!.copyWith(
      //         status: StatusType.error, error: 'Something went wrong!')));
      // debugPrint('AddProduct Error: $error');
    } finally {
      UIHelpers.dismissLoading();
    }
  }

  void setProductSelected(Product product, bool isDell, int idVarriant) {
    List<Product> productSeclected = [...state.data!.productsSelected];
    List<SellProductRequest> productRequest = [...state.data!.products];
    bool flag = false;
    double sum = 0;
    int cout = 0;
    int countProduct = 0;
    if (productSeclected.isEmpty) {
      productSeclected.add(product);
      flag = true;
    }
    if (!isDell) {
      var check = product.variantsSelect
          .firstWhereOrNull((element) => idVarriant == element.variantId);
      for (var element in productSeclected) {
        if (element.id == product.id) {
          if (check == null) {
            element.variantsSelect.add(ProductOfSell(idVarriant, 1));
          } else {
            int index = element.variantsSelect.indexOf(check);

            element.variantsSelect.elementAt(index).variantId = idVarriant;
            element.variantsSelect.elementAt(index).count++;
          }

          flag = true;
        }
        for (var element1 in element.variantsSelect) {
          sum += double.parse(element.productVariations!.first!.variations!
                  .elementAt(element1.variantIndex)!
                  .defaultSellPrice!) *
              element1.count;
          cout += element1.count;
          countProduct = element1.count;
          // countProduct = cout;
          print("--------------------***1**----------------------");
          print(countProduct);
        }
      }

      if (!flag) {
        List<ProductOfSell> list = [ProductOfSell(idVarriant, 1)];
        product.variantsSelect = list;
        productSeclected.add(product);
        for (var element1 in product.variantsSelect) {
          sum += double.parse(product.productVariations!.first!.variations!
                  .elementAt(element1.variantIndex)!
                  .defaultSellPrice!) *
              element1.count;
          cout += element1.count;
          countProduct = element1.count;
          print(countProduct);
        }
        flag = false;
      }
    } else {
      int delIndex = -1;
      for (var element in productSeclected) {
        int index = productSeclected.indexOf(element);
        // print("index: ");
        // print(index);
        // print("----");
        if (element.id == product.id) {
          element.variantsSelect.elementAt(index).variantId = idVarriant;
          element.variantsSelect.elementAt(index).count--;
          print("variantSelect");
          print(element.variantsSelect);
          if (element.variantsSelect.elementAt(index).count <= 0) {
            flag = true;
            delIndex = productSeclected.indexOf(element);
            continue;
          }
        }

        for (var element1 in element.variantsSelect) {
          sum += double.parse(element.productVariations!.first!.variations!
                  .elementAt(element1.variantIndex)!
                  .defaultSellPrice!) *
              element1.count;
          cout += element1.count;
          countProduct = element1.count;
          // countProduct = cout;
          print(countProduct);
          print("##############****2***###################");
        }
      }
      if (delIndex > -1) {
        productSeclected.removeAt(delIndex);
      }
    }
    List<Product> products = productSeclected;
    emit(AddOrderState.setProductSelected(state.data?.copyWith(
        productsSelected: products,
        totalAmount: sum,
        countProductSelect: cout)));
    productRequest.add(SellProductRequest(quantity: countProduct));
  }

  void setProductSSelectAll(List<Product> values) {
    int countProduct = 0;
    List<int> countProduct2 = [];
    double sum = 0;
    int cout = 0;
    List<SellProductRequest> productsRequest = [];
    List<Product> products = values.toList(growable: false);
    List<Product> productSelect = <Product>[].toList(growable: true);
    emit(AddOrderState.setProductSelectedAll(
        state.data!.copyWith(products: [])));

    for (var element in products) {
      for (var element1 in element.variantsSelect) {
        late Product p;
        productsRequest.add(SellProductRequest(
          productId: element.id,
          variantionId: element1.variantId,
          quantity: countProduct,
        ));
        p = element;
        p.variantsSelect = <ProductOfSell>[].toList();
        // p.variantsSelect = <ProductOfSell>[];
        p.variantsSelect.add(element1);
        productSelect.add(p);

        sum += double.parse(element.productVariations!.first!.variations!
                .elementAt(element1.variantIndex)!
                .defaultSellPrice!) *
            element1.count;
        countProduct = element1.count;
        cout += element1.count;
      }
    }
    emit(AddOrderState.setProductSelectedAll(state.data!.copyWith(
        productsSelected: productSelect,
        totalAmount: sum,
        countProductSelect: cout,
        products: productsRequest)));
  }

  String setDiscountType(
    String value,
  ) {
    emit(AddOrderState.setDiscount(state.data!.copyWith(discountType: value)));
    return value;
  }

  void setTransactionDate(
    DateTime value,
  ) {
    emit(AddOrderState.setTransactionDate(
        state.data!.copyWith(transactionDate: value)));
  }

  void setBusinessID(
    int? value,
  ) {
    emit(AddOrderState.setBusinessID(state.data!.copyWith(businessID: value)));
  }

  String setShippingMethod(
    String value,
  ) {
    emit(AddOrderState.setShippingMethod(
        state.data!.copyWith(shippingMethod: value)));
    return value;
  }

  void setShipping(
    double value,
  ) {
    emit(AddOrderState.setShipping(state.data!.copyWith(
      shipping: value,
    )));
  }

  void setCustomerSelect(
    ContactModel? value,
  ) {
    emit(AddOrderState.setSustomerSelect(state.data!.copyWith(
      customerSelect: value,
    )));
  }

  void setDiscount(
    double value,
  ) {
    emit(AddOrderState.setDiscount(state.data!.copyWith(discount: value)));
  }
}
