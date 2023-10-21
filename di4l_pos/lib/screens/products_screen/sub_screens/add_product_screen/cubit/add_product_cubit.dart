import 'dart:io';

import 'package:di4l_pos/common/global_constants.dart';
import 'package:di4l_pos/common/ui_helpers.dart';
import 'package:di4l_pos/enums/status_type.dart';
import 'package:di4l_pos/get_it.dart';
import 'package:di4l_pos/models/products/request/add_product_request.dart';
import 'package:di4l_pos/repositories/data_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../../common/helpers.dart';

part 'add_product_state.dart';
part 'add_product_cubit.freezed.dart';

class AddProductCubit extends Cubit<AddProductState> {
  final _dataRepository = getIt<DataRepository>();

  AddProductCubit()
      : super(const AddProductState.initial(data: AddProductStateData()));

  Future<void> addProduct({
    required String name,
    String? sku,
    dynamic branchId,
    dynamic unitId,
    dynamic categoryId,
    dynamic tax,
    String? alertQuantity,
    String? productDescription,
    double? defaultSellPrice,
    double? defaultPurchasePrice,
    dynamic subUnitIds,
    dynamic expiryPeriodType,
    dynamic expiryPeriod,
    List<ProductVariationRequest>? productVariationRequests,
  }) async {
    try {
      
      String check = await checkEmpty(name);
      if (check.isNotEmpty) {
        emit(AddProductState.error(data: state.data!.copyWith(error: check)));
        await Future.delayed(const Duration(seconds: 1));
        emit(AddProductState.error(data: state.data!.copyWith(error: '')));
      } else {
        emit(AddProductState.status(
            data: state.data!
                .copyWith(status: StatusType.loading, error: 'Loading...')));
        final response = await _dataRepository.addProduct(
          name: name,
          branchId: branchId,
          unitId: unitId,
          categoryId: categoryId,
          tax: tax,
          taxType: state.data!.taxType,
          barcodeType: state.data!.barCodeType,
          sku: sku,
          alertQuantity: alertQuantity,
          productDescription: productDescription,
          type: state.data!.productType,
          enableStock: state.data!.outOfStock == true ? 0 : 1,
          notForSelling: state.data!.notForSell == true ? 1 : 0,
          enableProductExpiry: state.data!.enableProductExpiry,
          expiryPeriodType: expiryPeriodType,
          expiryPeriod: expiryPeriod,
          defaultPurchasePrice: defaultPurchasePrice,
          defaultSellPrice: defaultPurchasePrice,
          enableSrNo: state.data!.checkManageStock == true ? 1 : 0,
          productVariationRequests: productVariationRequests,
          file: state.data?.image,
        );

        if (response.data != null) {
          await Future.delayed(
              const Duration(seconds: 1), () => navigator!.pop());
          emit(AddProductState.status(
              data: state.data!.copyWith(
                  status: StatusType.loaded, error: 'add_product_success'.tr)));
        }
      }
    } catch (error) {
      emit(AddProductState.status(
          data: state.data!.copyWith(
              status: StatusType.error, error: 'Something went wrong!')));
      debugPrint('AddProduct Error: $error');
    } finally {
      UIHelpers.dismissLoading();
    }
  }

  Future<void> updateProduct({
    required int productId,
    required String name,
    dynamic branchId,
    dynamic unitId,
    dynamic categoryId,
    dynamic tax,
    String? sku,
    String? alertQuantity,
    String? productDescription,
    dynamic singleVariationId,
    String? singleDpp,
    String? singleDppIncTax,
    dynamic profitPercent,
    String? singleDsp,
    double? defaultSellPrice,
    double? defaultPurchasePrice,
    String? singleDspIncTax,
    dynamic expiryPeriodType,
    dynamic expiryPeriod,
    List<ProductVariationRequest>? productVariationRequests,
    String? slug,
    String? barcodeType,
    String? subCategoryId,
    String? productLocations,
    String? enableStock,
    String? imageName,
    String? weight,
    String? productCustomField1,
    String? productCustomField2,
    String? productCustomField3,
    String? productCustomField4,
    String? taxType,
    String? featured,
    String? submitType,
  }) async {
    try {
      String check = await checkEmpty(name);
      if (check.isNotEmpty) {
        emit(AddProductState.error(data: state.data!.copyWith(error: check)));
        await Future<void>.delayed(const Duration(seconds: 1));
        emit(AddProductState.error(data: state.data!.copyWith(error: '')));
      } else {
        emit(AddProductState.status(
            data: state.data!
                .copyWith(status: StatusType.loading, error: 'Loading...')));
        final response = await _dataRepository.updateProduct(
            id: productId,
            name: name,
            branchId: branchId,
            unitId: unitId,
            categoryId: categoryId,
            tax: tax,
            taxType: state.data!.taxType,
            barcodeType: state.data!.barCodeType,
            sku: sku.toString(),
            alertQuantity: alertQuantity,
            productDescription: productDescription,
            type: state.data!.productType,
            enableStock: state.data!.checkManageStock == true ? 1 : 0,
            notForSelling: state.data!.notForSell == true ? 1 : 0,
            enableProductExpiry: state.data!.enableProductExpiry,
            expiryPeriodType: expiryPeriodType,
            expiryPeriod: expiryPeriod,
            defaultPurchasePrice: defaultPurchasePrice,
            defaultSellPrice: defaultPurchasePrice,
            enableSrNo: state.data!.checkManageStock == true ? 1 : 0,
            productVariationRequests: productVariationRequests,
            file: state.data?.image,
            slug: "ao-thun-mua-he",
            subCategoryId: null,
            productLocations: "68",
            imageName: null,
            weight: "1000",
            productCustomField1: null,
            productCustomField2: null,
            productCustomField3: null,
            productCustomField4: null,
            featured: "0",
            singleVariationId: "530",
            singleDpp: "300,000.00",
            singleDppIncTax: "300,000.00",
            profitPercent: "375,000.00",
            singleDsp: "300,000.00",
            singleDspIncTax: "375,000.00",
            submitType: "submit");

        if (response.data != null) {
          await Future.delayed(
              const Duration(seconds: 1), () => navigator!.pop());
          emit(AddProductState.status(
              data: state.data!.copyWith(
                  status: StatusType.loaded,
                  error: 'update_product_success'.tr)));
        }
      }
    } catch (error) {
      emit(AddProductState.status(
          data: state.data!.copyWith(
              status: StatusType.error, error: 'Something went wrong!')));
    } finally {
      UIHelpers.dismissLoading();
    }
  }

  Future<String> checkEmpty(
    String name,
    // String sku,
  ) async {
    if (name.isEmpty) {
      return 'Product Name is Required';
    }

    // }
    else {
      return '';
    }
  }

  void changeNotForSell(bool? value) {
    emit(AddProductState.notForSell(
        data: state.data!.copyWith(notForSell: value!)));
  }

  void setTypeProduct(String? value) {
    emit(AddProductState.enableVariant(
        data: state.data!.copyWith(productType: value!)));
  }

  void changeCheckManageStock(bool? value) {
    emit(AddProductState.checkManageStock(
        data: state.data!.copyWith(checkManageStock: value!)));
  }

  void changeEnableProductExpiry(bool? value) {
    emit(AddProductState.enableProductExpiry(
        data: state.data!.copyWith(enableProductExpiry: value!)));
  }

  void getBarCodeType(String barCodeTypeName) {
    Map<String, String> barcodes = GlobalConstants.barCodeTypes;

    emit(AddProductState.getBarCodeType(
        data: state.data!.copyWith(
            barCodeTypeName: barCodeTypeName,
            barCodeType: barcodes[barCodeTypeName]!)));
  }

  void getTaxType(String taxType) {
    emit(AddProductState.getTaxType(
        data: state.data!.copyWith(taxType: taxType)));
  }

  void getProductType(String productType) {
    emit(AddProductState.getProductType(
        data: state.data!.copyWith(productType: productType)));
  }

  void selectImage(ImageSource? source) async {
    final image = await ImagePicker().pickImage(source: source!);
    emit(AddProductState.getImage(
        data: state.data!.copyWith(image: File(image!.path))));
  }

  void IsOutOfStock(bool? value) {
    emit(AddProductState.outOfStock(
        data: state.data!.copyWith(outOfStock: value!)));
  }

  void enableVariant(bool? value, String type) {
    emit(AddProductState.enableVariant(
        data: state.data!.copyWith(enableVariant: value!, productType: type)));
  }

  Future deleteProduct({required int id}) async {
    UIHelpers.showCustomDialog(
      context: Get.context!,
      message: 'message_confirm_delete_product'.tr,
      onComfirm: () async {
        try {
          UIHelpers.showLoading();
          var r = await _dataRepository.deleteProduct(id: id);
          print(r);
          await Future.delayed(const Duration(seconds: 1), () {
            UIHelpers.showSnackBar(message: 'delete_product_success'.tr);
            navigator!.pop();
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
}
