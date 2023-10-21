// ignore_for_file: no_leading_underscores_for_local_identifiers, depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:di4l_pos/common/helpers.dart';
import 'package:di4l_pos/common/ui_helpers.dart';
import 'package:di4l_pos/enums/status_type.dart';
import 'package:di4l_pos/get_it.dart';
import 'package:di4l_pos/models/category/request/get_category_request.dart';
import 'package:di4l_pos/models/category/response/category_response.dart';
import 'package:di4l_pos/repositories/data_repository.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';
import 'package:tiengviet/tiengviet.dart';

import '../../../models/category/request/add_category_request.dart';

part 'category_cubit.freezed.dart';
part 'category_state.dart';

class CategoryCubit extends Cubit<CategoryState> {
  /// MAKR: - Initials;
  final _dataRepository = getIt<DataRepository>();

  CategoryCubit()
      : super(const CategoryState.initial(data: CategoryStateData()));

  Future<List<CategoryModel>?> getCategories() async {
    try {
      emit(CategoryState.status(
          data: state.data!.copyWith(status: StatusType.loading)));
      final _request = GetCategoryRequest(type: 'product');
      final _response = await _dataRepository.getCategory(request: _request);
      emit(
        CategoryState.getCategories(
            data: state.data?.copyWith(
          status: StatusType.loaded,
          categories: _response.data ?? [],
          categoriesOriginal: _response.data ?? [],
        )),
      );
      return _response.data;
    } catch (error) {
      emit(CategoryState.status(
          data: state.data!.copyWith(status: StatusType.error)));
      Helpers.handleErrorApp(error: error);
      return null;
    } finally {
      UIHelpers.dismissLoading();
    }
  }

  Future<void> addCategory(String name) async {
    try {
      emit(CategoryState.status(
          data: state.data!.copyWith(status: StatusType.loading)));
      final _request = AddCategoryRequest(name: name);
      await _dataRepository.addCategory(request: _request);
      emit(CategoryState.addCategory(
          data: state.data?.copyWith(
        status: StatusType.loaded,
      )));
    } catch (error) {
      emit(CategoryState.status(
          data: state.data!.copyWith(status: StatusType.error)));
      Helpers.handleErrorApp(error: error);
    } finally {
      UIHelpers.dismissLoading();
    }
  }

  void getCategory(CategoryModel categoryModel) {
    emit(CategoryState.getCategory(
        data: state.data?.copyWith(categoryModel: categoryModel)));
  }

  void addCategorySelected(CategoryModel? categoris) {
    emit(CategoryState.addCategorySelected(
        data: state.data?.copyWith(categorySelected: categoris)));

    // listOld.addAll(categoris);

    // emit(CategoryState.addCategoriesSelected(
    //     data: state.data?.copyWith(categoriesSelect: listOld)));
  }

  // void setCategoriesSelected(Set<CategoryModel> categoris) {
  //   emit(CategoryState.addCategoriesSelected(
  //       data: state.data?.copyWith(categoriesSelect: categoris)));
  // }

  void removeCategoriesSelected(CategoryModel categoryModel) {
    Set<CategoryModel> list = {};
    Set<CategoryModel> listOld;
    listOld = state.data!.categoriesSelect.isEmpty
        ? {}
        : state.data!.categoriesSelect;

    emit(CategoryState.removeCategoriesSelected(
        data: state.data?.copyWith(categoriesSelect: list)));

    listOld.remove(categoryModel);
    emit(CategoryState.removeCategoriesSelected(
        data: state.data?.copyWith(categoriesSelect: listOld)));
  }

  Future<void> deleteCategory({required int id}) async {
    UIHelpers.showCustomDialog(
      context: Get.context!,
      message: 'are_you_sure'.tr,
      onComfirm: () async {
        UIHelpers.showLoading();
        try {
          emit(CategoryState.status(
              data: state.data!.copyWith(status: StatusType.loading)));
          await _dataRepository.deleteCategory(id: id).then((value) {
            navigator!.pop();
            navigator!.pop();
            getCategories();
          });
          emit(CategoryState.addCategory(
              data: state.data?.copyWith(
            status: StatusType.loaded,
          )));
        } catch (error) {
          debugPrint('Delete Category Error: $error');
          Helpers.handleErrorApp(error: error);
        } finally {
          UIHelpers.dismissLoading();
        }
      },
      isShowClose: true,
    );
  }

  Future<void> searchCategory({required String searchText}) async {
    emit(CategoryState.status(
        data: state.data!.copyWith(status: StatusType.loading)));
    // ignore: avoid_print
    print(searchText);
    List<CategoryModel> _categoryOriginal = [...state.data!.categoriesOriginal];
    if (searchText.isEmpty) {
      emit(CategoryState.getCategories(
          data: state.data?.copyWith(
              categories: _categoryOriginal, status: StatusType.loaded)));
    } else {
      final searchTextVN = TiengViet.parse(searchText.toLowerCase());
      final _category = _categoryOriginal
          .where((CategoryModel element) => TiengViet.parse(element.name!)
              .toLowerCase()
              .contains(searchTextVN))
          .toList();
      emit(CategoryState.getCategories(
          data: state.data
              ?.copyWith(categories: _category, status: StatusType.loaded)));
    }
  }
}
