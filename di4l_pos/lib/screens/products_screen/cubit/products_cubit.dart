import 'package:di4l_pos/models/products/response/variation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:di4l_pos/common/helpers.dart';
import 'package:di4l_pos/common/ui_helpers.dart';
import 'package:di4l_pos/enums/status_type.dart';
import 'package:di4l_pos/get_it.dart';
import 'package:di4l_pos/models/branch/response/branch_response.dart';
import 'package:di4l_pos/models/category/response/category_response.dart';
import 'package:di4l_pos/models/products/request/get_products_request.dart';
import 'package:di4l_pos/models/products/request/product_of_sell_request.dart';
import 'package:di4l_pos/models/products/response/product_response.dart';
import 'package:di4l_pos/repositories/data_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';
import 'package:tiengviet/tiengviet.dart';

import '../../../enums/product_filtter.dart';
import '../../../models/unit/response/unit_response.dart';

part 'products_state.dart';
part 'products_cubit.freezed.dart';

class ProductsCubit extends Cubit<ProductsState> {
  /// MARK - Initials
  final _dataRepository = getIt<DataRepository>();

  ProductsCubit()
      : super(const ProductsState.initial(data: ProductsStateData()));

  Future<void> getProducts() async {
    try {
      emit(ProductsState.status(
          data: state.data?.copyWith(status: StatusType.loading)));
      final request = GetProductsRequest();
      final productsResponse =
          await _dataRepository.getProducts(request: request);
      emit(ProductsState.getProducts(
          data: state.data?.copyWith(
        status: StatusType.loaded,
        products: productsResponse.data ?? [],
        productsOriginal: productsResponse.data ?? [],
      )));
    } catch (error) {
      //debugPrint('Get Products Error: $error');
      emit(ProductsState.status(
          data: state.data?.copyWith(status: StatusType.error)));
      Helpers.handleErrorApp(error: error);
    } finally {
      UIHelpers.dismissLoading();
    }
  }

  ///Search Product
  Future<void> searchProduct({required String searchText}) async {
    List<Product> productOriginal = [...state.data!.productsOriginal];
    emit(ProductsState.status(
        data: state.data?.copyWith(status: StatusType.loading)));
    if (searchText.isEmpty) {
      emit(ProductsState.getProducts(
          data: state.data?.copyWith(
              products: productOriginal, status: StatusType.loaded)));
    } else {
      final searchTextVN = TiengViet.parse(searchText.toLowerCase());
      final products = productOriginal
          .where((Product element) =>
              element.name!.toLowerCase().contains(searchTextVN))
          .toList();
      emit(ProductsState.getProducts(
          data: state.data
              ?.copyWith(products: products, status: StatusType.loaded)));
    }
  }

  void setProductSelected(Product product, bool isDell, int idVarriant) {
    List<Product> productSeclected = [...state.data!.productsSelected];
    bool flag = false;
    double sum = 0;
    int cout = 0;
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
        }
        flag = false;
      }
    } else {
      int delIndex = -1;
      for (var element in productSeclected) {
        int index = productSeclected.indexOf(element);

        if (element.id == product.id) {
          element.variantsSelect.elementAt(index).variantId = idVarriant;
          element.variantsSelect.elementAt(index).count--;
          if (element.variantsSelect.elementAt(index).count <= 0) {
            flag = true;
            delIndex = productSeclected.indexOf(element);
            //continue;
          }
        }

        for (var element1 in element.variantsSelect) {
          sum += double.parse(element.productVariations!.first!.variations!
                  .elementAt(element1.variantIndex)!
                  .defaultSellPrice!) *
              element1.count;
          cout += element1.count;
        }
      }
      if (delIndex > -1) {
        productSeclected.removeAt(delIndex);
      }
    }
    List<Product> products = productSeclected;
    emit(ProductsState.setProductSelected(state.data?.copyWith(
        productsSelected: products,
        totalAmount: sum,
        countProductSelect: cout)));
  }

  void selectVariant(int variantID, Product product) {}

  // void setProductSSelectAll(Map<Product, int> values) {
  //   double sum = 0;
  //   int cout = 0;
  //   values.forEach((key, value) {
  //     cout += value;
  //     sum += double.parse(key
  //             .productVariations!.first!.variations!.first!.defaultSellPrice!) *
  //         value.toInt();
  //   });
  //   emit(ProductsState.getProduct(
  //       data: state.data!.copyWith(
  //           productsSelected: values,
  //           countProductSelect: cout,
  //           totalAmount: sum)));
  // }

  Future<void> filtterProduct(
      {required Map<ProductFiltter, int?> productFiltter}) async {
    List<Product> productOriginal = [...state.data!.productsOriginal];
    emit(ProductsState.status(
        data: state.data?.copyWith(status: StatusType.loading)));
    if (productFiltter[ProductFiltter.category] == -1 &&
        productFiltter[ProductFiltter.unit] == -1 &&
        productFiltter[ProductFiltter.branch] == -1) {
      emit(ProductsState.getProducts(
          data: state.data?.copyWith(
              products: productOriginal, status: StatusType.loaded)));
    } else {
      final products = productOriginal;

      for (var element in products) {
        if (element.category == null) {
          element.category = CategoryModel(id: -1);
        } else if (element.unit == null) {
          element.unit = Unit(id: -1);
        } else {
          element.brand ??= Branch(id: -1);
        }
      }
      List<Product> productsResult = products;

      productFiltter.forEach((key, value) {
        int? a = 0;

        if (value != -1) {
          productsResult = productsResult.where((Product element) {
            if (key == ProductFiltter.category) {
              a = element.category!.id;
            } else if (key == ProductFiltter.unit) {
              a = element.unit!.id;
            } else {
              a = element.brand!.id;
            }

            return productFiltter[key] == a;
          }).toList();
        }
      });

      for (var element in products) {
        if (element.category!.id == -1) {
          element.category!.id = null;
        } else if (element.unit!.id == -1) {
          element.unit!.id = null;
        } else if (element.brand == -1) {
          element.brand!.id = null;
        }
      }

      emit(ProductsState.getProducts(
          data: state.data?.copyWith(
        products: productsResult,
        status: StatusType.loaded,
      )));
    }
  }

  void getProduct(Product product) {
    emit(
        ProductsState.getProduct(data: state.data!.copyWith(product: product)));
  }

  Future<void> getProductById({required int id}) async {
    try {
      final response = await _dataRepository.getProductById(id: id);
      emit(ProductsState.getProduct(
          data: state.data?.copyWith(product: response.data!.first)));
    } catch (error) {
      emit(ProductsState.status(
          data: state.data?.copyWith(status: StatusType.error)));
      Helpers.handleErrorApp(error: error);
    } finally {
      UIHelpers.dismissLoading();
    }
  }

  Future<void> getProductByVariantion({required int variationId}) async {
    try {
      emit(ProductsState.status(
          data: state.data?.copyWith(status: StatusType.loading)));
      final request = GetProductsRequest();
      final productsResponse =
          await _dataRepository.getProducts(request: request);

      Product? productByVariation;
      ProductVariation? productVariation;
      Variation? variation;
      for (var product in productsResponse.data!) {
        var productVariations = product.productVariations;
        for (var pVariation in productVariations!) {
          var variations = pVariation!.variations;
          for (var variant in variations!) {
            if (variant!.id == variationId) {
              productByVariation = product;
              productVariation = pVariation;
              variation = variant;
            }
          }
        }
      }

      emit(
        ProductsState.getProducts(
          data: state.data?.copyWith(
            status: StatusType.loaded,
            product: productByVariation,
            productVariation: productVariation,
            variation: variation,
          ),
        ),
      );
    } catch (error) {
      //debugPrint('Get Products Error: $error');
      emit(ProductsState.status(
          data: state.data?.copyWith(status: StatusType.error)));
      Helpers.handleErrorApp(error: error);
    } finally {
      UIHelpers.dismissLoading();
    }
  }

  // void setProductSelected(Product product) {
  //   List<Product> products = state.data!.productsSelected;
  //   products.add(product);
  //   emit(ProductsState.setProductSelected(
  //       state.data!.copyWith(productsSelected: products)));
  // }

  Future deleteProduct({required int id}) async {
    UIHelpers.showCustomDialog(
      context: Get.context!,
      message: 'message_confirm_delete_product'.tr,
      onComfirm: () async {
        try {
          await _dataRepository.deleteProduct(id: id);
          await Future.delayed(const Duration(seconds: 1), () {
            UIHelpers.showSnackBar(message: 'delete_product_success'.tr);
            navigator!.pop();
          });
        } catch (error) {
          debugPrint('Delete Product Error: $error');
          Helpers.handleErrorApp(error: error);
        } finally {
          UIHelpers.dismissLoading();
        }
      },
      isShowClose: true,
    );
  }

  Future<void> searchProductsByVariation({required String text}) async {
    List<Product> productOriginal = [...state.data!.productsOriginal];
    List<Product> productList = [];
    List<Variation> variationList = [];
    List<ProductVariation> productVariations = [];
    for (var product in productOriginal) {
      for (var productVars in product.productVariations!) {
        for (var variation in productVars!.variations!) {
          productList.add(product);
          productVariations.add(productVars);
          variationList.add(variation!);
        }
      }
    }
    emit(ProductsState.status(
        data: state.data?.copyWith(status: StatusType.loading)));
    if (text.isEmpty) {
      emit(
        ProductsState.getProducts(
          data: state.data?.copyWith(
            products: productList,
            variations: variationList,
            productVariations: productVariations,
            status: StatusType.loaded,
          ),
        ),
      );
    } else {
      final searchTextVN = TiengViet.parse(text.toLowerCase());
      List<int> indexes = [];
      for (int i = 0;
          i < productList.length &&
              i < productVariations.length &&
              i < variationList.length;
          i++) {
        if (productList[i].name!.toLowerCase().contains(searchTextVN) ||
            productList[i].sku!.toLowerCase().contains(searchTextVN) ||
            variationList[i].subSku!.toLowerCase().contains(searchTextVN) ||
            variationList[i].name!.toLowerCase().contains(searchTextVN)) {
          indexes.add(i);
        }
      }
      if (indexes.isEmpty) {
        emit(
          ProductsState.getProducts(
            data: state.data?.copyWith(
              products: [],
              variations: [],
              productVariations: [],
              status: StatusType.loaded,
            ),
          ),
        );
      } else {
        List<Product> products = [];
        List<Variation> variations = [];
        List<ProductVariation> pVariations = [];
        for (int index in indexes) {
          products.add(productList.elementAt(index));
          variations.add(variationList.elementAt(index));
          pVariations.add(productVariations.elementAt(index));
        }
        emit(
          ProductsState.getProducts(
            data: state.data?.copyWith(
              products: products,
              variations: variations,
              productVariations: pVariations,
              status: StatusType.loaded,
            ),
          ),
        );
      }
    }
  }

  void getProductVariations(List<ProductVariation?>? productVariations) {
    emit(ProductsState.getProductVariations(
        data: state.data!.copyWith(productVariations: productVariations!)));
  }

  void getProductVariation(ProductVariation productVariation) {
    emit(ProductsState.getProductVariation(
        data: state.data!.copyWith(productVariation: productVariation)));
  }

  void addProductSelected(Product? product) {
    emit(ProductsState.addProductSelected(
        data: state.data?.copyWith(productSelected: product)));

    // listOld.addAll(categoris);

    // emit(CategoryState.addCategoriesSelected(
    //     data: state.data?.copyWith(categoriesSelect: listOld)));
  }

  void productSelected(Product? p) {
    emit(ProductsState.productSelected(
        data: state.data?.copyWith(productSelected: p)));
  }

  void productsSelected(List<Product>? p) {
    emit(ProductsState.productSelected(
        data: state.data?.copyWith(productsSelected: p ?? [])));
  }

  void showValue(int? value) {
    emit(
        ProductsState.showValue(data: state.data!.copyWith(showValue: value!)));
  }

  void isGrid(bool value) {
    emit(ProductsState.isGrid(data: state.data!.copyWith(isGrid: value)));
  }

  void isOpenSearch(bool value) {
    emit(ProductsState.isOpenSearch(
        data: state.data!.copyWith(isOpenSearch: value)));
  }

  void isCategoryScreen(bool value) {
    emit(ProductsState.isCategoryScreen(
        data: state.data!.copyWith(isCategoryScreen: value)));
  }

  Future<void> minusQuantity(int id) async {
    num qty = state.data!.quantity;
    if (qty <= 1) {
      return;
    }
    qty -= 1;
    emit(MinusQuantity(state.data!.copyWith(quantity: qty.toInt())));
  }

  /// Plus quantity
  Future<void> plusQuantity(int id) async {
    num qty = state.data!.quantity;
    qty += 1;
    emit(PlusQuantity(state.data!.copyWith(quantity: qty.toInt())));
  }
}
// class ValueOfProduct{
//   int productid;
//   Product product;
  
//   ProductVariation productVariation;
//   int count;
//   ValueOfProduct(this.productVariation, this.count);
  
// }