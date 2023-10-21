import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:di4l_pos/common/helpers.dart';
import 'package:di4l_pos/common/ui_helpers.dart';
import 'package:di4l_pos/enums/status_type.dart';
import 'package:di4l_pos/get_it.dart';
import 'package:di4l_pos/models/variants/response/variants_response.dart';
import 'package:di4l_pos/repositories/data_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';
import 'package:tiengviet/tiengviet.dart';

part 'variant_state.dart';
part 'variant_cubit.freezed.dart';

class VariantCubit extends Cubit<VariantState> {
  /// MARK: - Initials;
  final _dataRepository = getIt<DataRepository>();

  VariantCubit() : super(const VariantState.initial(data: VariantStateData()));

  /// Get Variants
  Future<List<VariantModel>?> getVariants() async {
    try {
      emit(VariantState.status(
          data: state.data?.copyWith(status: StatusType.loading)));
      final response = await _dataRepository.getVariants();
      emit(VariantState.getVariants(
          data: state.data?.copyWith(
              status: StatusType.loaded,
              variants: response.data ?? [],
              variantOriginal: response.data ?? [])));
    } catch (error) {
      emit(VariantState.status(
          data: state.data?.copyWith(status: StatusType.error)));
      Helpers.handleErrorApp(error: error);
    } finally {
      UIHelpers.dismissLoading();
    }
  }

  void getVariant(Variant variant) {
    emit(VariantState.getVariant(data: state.data?.copyWith(variant: variant)));
  }

  Future<Variant> getVariantById(int id) async {
    Variant v = Variant();
    await getVariants();
    for (var element in state.data!.variants) {
      if (element.id == id) v = element;
    }
    return v;
  }

  /// Refresh List Product
  Future<void> refreshDatas({Variant? variant}) async {
    List<Variant> datas = [...state.data!.variants];
    final index = datas.indexWhere((element) => element.id == variant?.id);
    if (index != -1) {
      datas[index] = variant!;
      emit(VariantState.getVariants(
          data: state.data?.copyWith(variants: datas)));
    }
  }

  void variantSelected(Variant? v) {
    emit(VariantState.variantSelected(
        data: state.data?.copyWith(variantSelected: v)));
  }

  void showValue(int? value) {
    emit(VariantState.showValue(data: state.data!.copyWith(showValue: value!)));
  }

  Future<void> deleteVariant({required int id}) async {
    print("############################### Day la id variant");
    print(id);
    UIHelpers.showCustomDialog(
      context: Get.context!,
      message: 'message_confirm_delete_variant'.tr,
      onComfirm: () async {
        UIHelpers.showLoading();
        try {
          await _dataRepository.deleteVariantion(id: id);
          await Future.delayed(const Duration(microseconds: 200), () {
            navigator!.pop();
            navigator!.pop();
            getVariants();
            emit(VariantState.status(
                data: state.data!.copyWith(
                    status: StatusType.loaded,
                    error: "delete varian success".tr)));
          });
        } catch (error) {
          debugPrint('Delete Variant Error: $error');
          emit(VariantState.status(
              data: state.data!.copyWith(
                  status: StatusType.error,
                  error: "Something went wrong!".tr)));
          Helpers.handleErrorApp(error: error);
        } finally {
          UIHelpers.dismissLoading();
        }
      },
      isShowClose: true,
    );
  }

  Future<void> searchVariant({required String searchText}) async {
    emit(VariantState.status(
        data: state.data!.copyWith(
      status: StatusType.loading,
    )));
    List<Variant> variantOriginal = [...state.data!.variantOriginal];
    if (searchText.isEmpty) {
      emit(VariantState.getVariants(
          data: state.data?.copyWith(
              variants: variantOriginal, status: StatusType.loaded)));
    } else {
      final searchTextVN = TiengViet.parse(searchText.toLowerCase());
      final variant = variantOriginal
          .where((Variant element) => TiengViet.parse(element.name!)
              .toLowerCase()
              .contains(searchTextVN))
          .toList();
      emit(VariantState.getVariants(
          data: state.data
              ?.copyWith(variants: variant, status: StatusType.loaded)));
    }
  }
}

mixin VariantModel {}
