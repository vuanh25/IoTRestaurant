

import 'package:bloc/bloc.dart';
import 'package:di4l_pos/common/ui_helpers.dart';
import 'package:di4l_pos/enums/status_type.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

import '../../../common/helpers.dart';
import '../../../get_it.dart';
import '../../../models/cart_table_order/cart_model.dart';
import '../../../models/contacts/response/contacts_response.dart';
import '../../../models/products/request/get_products_request.dart';
import '../../../models/products/request/product_of_sell_request.dart';
import '../../../models/products/response/product_response.dart';
import '../../../models/products/response/variation.dart';
import '../../../models/sell/request/update_sell_request.dart';
import '../../../models/sell/response/sell_response.dart';
import '../../../models/table/response/table_response.dart';
import '../../../models/variants/response/variants_response.dart';
import '../../../repositories/data_repository.dart';

import 'dart:developer';

import '../../table_order_screen/mobile/table_order_mobile_screen.dart';

part 'edit_order_state.dart';
part 'edit_order_cubit.freezed.dart';

class EditOrderCubit extends Cubit<EditOrderState> {
  /// MARK: - Initials;
  final _dataRepository = getIt<DataRepository>();
  final tableOrder = Get.put(TableOrderController());


  EditOrderCubit() : super(const EditOrderState.initial(
    data: EditOrderData()
  ));


  // Future<void> updateOrder(int id) async
  // {
  //   UIHelpers.showLoading();
  //   try
  //   {
  //     var json = UpdateSellRequest(sells: 
  //     [
  //       SellRequest(
  //         locationId: state.data!.businessID.toString(),
  //         products: state.data!.products,
  //         discountType: state.data!.discountType,
  //         discountAmount: state.data!.discount,
  //         shippingCharges: state.data!.shipping,
  //         payTermNumber: state.data!.countProductSelect,
  //         packingCharge: (state.data!.totalAmount.toDouble() +
  //             state.data!.shipping -
  //             state.data!.discount),
  //         status: "final",
  //       )
  //     ]).toJson();
  //     print(json.toString());
  //     final response = await _dataRepository.updateSell(request: UpdateSellRequest(
  //       sells: [
  //         SellRequest(
  //         locationId: state.data!.businessID.toString(),
  //         products: state.data!.products,
  //         discountType: state.data!.discountType,
  //         discountAmount: state.data!.discount,
  //         shippingCharges: state.data!.shipping,
  //         payTermNumber: state.data!.countProductSelect,
  //         packingCharge: (state.data!.totalAmount.toDouble() +
  //             state.data!.shipping -
  //             state.data!.discount),
  //         status: "final",
  //         )
  //       ]
  //     ), id: id);
  //     if(response.success == 1)
  //     {
  //       await Future.delayed(const Duration(seconds: 1),()=> navigator!.pop());
  //        UIHelpers.showDialogDefaultBloc(
  //           status: StatusType.loaded, text: response.msg.toString());
  //     }
  //   }
  //   catch(error)
  //   {
  //     UIHelpers.showDialogDefaultBloc(
  //         status: StatusType.error, text: 'Something went wrong!');
  //   }
  //    finally {
  //     UIHelpers.dismissLoading();
  //   }
  // }


   /// Get Tables
  Future<void> getTables() async {
    try {
      emit(EditOrderState.status(
          data: state.data?.copyWith(status: StatusType.loading)));
      final tableResponse = await _dataRepository.getTables();
      emit(EditOrderState.getTable(
          data: state.data?.copyWith(
              status: StatusType.loaded, tables: tableResponse.data ?? [])));
    } catch (error) {
      emit(
        EditOrderState.status(
          data: state.data?.copyWith(status: StatusType.error),
        ),
      );
      Helpers.handleErrorApp(error: error);
    } finally {
      UIHelpers.dismissLoading();
    }
  }

  /// Get Tables
  Future getTableWithId({required int id}) async {
    try {
      emit(EditOrderState.status(
          data: state.data?.copyWith(status: StatusType.loading)));
      final tableData = await _dataRepository.getTableWithId(id: id);
      emit(EditOrderState.getTable(
          data: state.data
              ?.copyWith(status: StatusType.loaded, table: tableData)));
    } catch (error) {
      emit(EditOrderState.status(
          data: state.data?.copyWith(status: StatusType.error)));
      Helpers.handleErrorApp(error: error);
    } finally {
      UIHelpers.dismissLoading();
    }

    
  }


  // Future<void> addCart({required ItemProduct itemProduct}) async {
  //   try {
  //     emit(EditOrderState.status(
  //         data: state.data?.copyWith(status: StatusType.loading)));
  //     tableOrder.productsInCart.add(itemProduct);
  //     emit(EditOrderState.addCart(
  //         data: state.data?.copyWith(
  //       status: StatusType.loaded,
  //       listItemProduct: tableOrder.productsInCart.value,
  //     )));
  //     // await _appPrefs.removeCart();
  //     // await _appPrefs.saveCart(
  //     //     cartLines: ItemProduct.encode(tableOrder.productsInCart.value));
  //   } catch (error) {
  //     emit(
  //       EditOrderState.status(
  //         data: state.data?.copyWith(status: StatusType.error),
  //       ),
  //     );
  //     Helpers.handleErrorApp(error: error);
  //   } finally {
  //     UIHelpers.dismissLoading();
  //   }
  // }

  // Future<void> getCart() async {
  //   try {
  //     emit(EditOrderState.status(
  //         data: state.data?.copyWith(status: StatusType.loading)));
  //     emit(EditOrderState.getCart(
  //         data: state.data?.copyWith(
  //       status: StatusType.loaded,
  //       listItemProduct: tableOrder.productsInCart.value,
  //     )));
  //     // await _appPrefs.removeCart();
  //     // await _appPrefs.saveCart(
  //     //     cartLines: ItemProduct.encode(tableOrder.productsInCart.value));
  //   } catch (error) {
  //     emit(
  //       EditOrderState.status(
  //         data: state.data?.copyWith(status: StatusType.error),
  //       ),
  //     );
  //     Helpers.handleErrorApp(error: error);
  //   } finally {
  //     UIHelpers.dismissLoading();
  //   }
  // }


   Future<void> getProducts({required List<int> ids}) async {
    print("hello");
    try {
      emit(EditOrderState.status(
          data: state.data!.copyWith(status: StatusType.loading)));
      late List<ProductResponse> product2 = [];
      ProductResponse product3;
      await Future.forEach<int>(ids, (item) async {
        product3 = await _dataRepository.getProductById(id: item);
        product2.add(product3);
      });
    
      print('product 2: ');
      print(product2);
      emit(EditOrderState.getProducts(
          data: state.data
              ?.copyWith(status: StatusType.loaded, product: product2 ?? [])));
    } catch (error) {
      emit(EditOrderState.status(
          data: state.data?.copyWith(status: StatusType.error)));
      Helpers.handleErrorApp(error: error);
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
    emit(EditOrderState.setProductSelected(state.data?.copyWith(
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
    emit(EditOrderState.setProductSelectedAll(
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
    emit(EditOrderState.setProductSelectedAll(state.data!.copyWith(
        productsSelected: productSelect,
        totalAmount: sum,
        countProductSelect: cout,
        products: productsRequest)));
  }

   String setDiscountType(
    String value,
  ) {
    emit(EditOrderState.setDiscount(state.data!.copyWith(discountType: value)));
    return value;
  }

   void setDiscount(
    double value,
  ) {
    emit(EditOrderState.setDiscount(state.data!.copyWith(discount: value)));
  }


   


   String setShippingMethod(
    String value,
  ) {
    emit(EditOrderState.setShippingMethod(
        state.data!.copyWith(shippingMethod: value)));
    return value;
  }


 

  void setShipping(
    double value,
  ) {
    emit(EditOrderState.setShipping(state.data!.copyWith(
      shipping: value,
    )));
  }


}
