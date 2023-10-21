// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:di4l_pos/common/helpers.dart';
import 'package:di4l_pos/enums/status_type.dart';
import 'package:di4l_pos/get_it.dart';
import 'package:di4l_pos/models/category/request/add_category_request.dart';
import 'package:di4l_pos/repositories/data_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';
part 'add_category_state.dart';
part 'add_category_cubit.freezed.dart';

class AddCategoryCubit extends Cubit<AddCategoryState> {
  final _dataRepository = getIt<DataRepository>();

  AddCategoryCubit()
      : super(const AddCategoryState.initial(data: AddCategoryStateData()));

  get description => null;

  Future<void> addNewCategory({
    required String name,
  }) async {
    try {
      String check = await checkEmpty(name);
      if (check.isNotEmpty) {
        emit(AddCategoryState.error(data: state.data!.copyWith(error: check)));
        await Future<void>.delayed(const Duration(seconds: 1));
        emit(AddCategoryState.error(data: state.data!.copyWith(error: '')));
      } else {
        emit(AddCategoryState.status(
            data: state.data!
                .copyWith(error: 'Loading...', status: StatusType.loading)));
        final request = AddCategoryRequest(
          name: name,
          // shortCode: shortCode,
          categoryType: 'product',
          // description: description,
          // addSubCat: state.data!.addSubCategory == true ? 1 : 0,
          // parentId: parentId,
        );
        final response = await _dataRepository.addCategory(request: request);
        if (response.data != null) {
          await Future.delayed(const Duration(seconds: 1), () => navigator!.pop());
          emit(AddCategoryState.status(
              data: state.data!.copyWith(
                  error: 'add_category_success'.tr,
                  status: StatusType.loaded)));
        }
      }
    } catch (error) {
      emit(AddCategoryState.status(
          data: state.data!.copyWith(
              status: StatusType.error, error: 'Something went wrong!')));
      Helpers.handleErrorApp(error: error, isShowDialog: true);
    } finally {}
  }

  void nameCheck(bool? value) {
    emit(AddCategoryState.nameCheck(
        data: state.data!.copyWith(nameCheck: value!)));
  }

  Future<void> updateCategory({
    required int categoryId,
    required String name,
    // required String shortCode,
    // required String description,
    // required int parentId,
  }) async {
    try {
      String check = await checkEmpty(name);
      if (check.isNotEmpty) {
        emit(AddCategoryState.error(data: state.data!.copyWith(error: check)));
        await Future<void>.delayed(const Duration(seconds: 1));
        emit(AddCategoryState.error(data: state.data!.copyWith(error: '')));
      } else {
        emit(AddCategoryState.status(
            data: state.data!
                .copyWith(error: 'Loading...', status: StatusType.loading)));
        final request = AddCategoryRequest(
          name: name,
          // shortCode: shortCode,
          categoryType: 'product',
          description: description,
          addSubCat: state.data!.addSubCategory == true ? 1 : 0,
          // parentId: parentId,
        );
        final response = await _dataRepository.updateCategory(
            request: request, id: categoryId);
        if (response.data != null) {
          await Future.delayed(const Duration(seconds: 1), () => navigator!.pop());
          emit(AddCategoryState.status(
              data: state.data!.copyWith(
                  error: 'update_category_success'.tr,
                  status: StatusType.loaded)));
        }
      }
    } catch (error) {
      emit(AddCategoryState.status(
          data: state.data!.copyWith(
              status: StatusType.error, error: 'Something went wrong!')));
      Helpers.handleErrorApp(error: error, isShowDialog: true);
    } finally {
      Future.delayed(const Duration(seconds: 2), () => navigator!.pop());
    }
  }

  void changeAddSubCat(bool? value) {
    emit(AddCategoryState.addSubCategory(
        data: state.data!.copyWith(addSubCategory: value!)));
  }

  Future<String> checkEmpty(
    String name,
    // String shortCode,
    // bool addSubCat,
    // int? parentId,
  ) async {
    if (name.isEmpty) {
      return 'Required';
    }
    //  else if (shortCode.isEmpty) {
    //   return 'ShortCode is Empty';
    // } else if (addSubCat == true) {
    //   if (parentId == null) {
    //     return 'Please Selected Category';
    //   }
    //   return '';
    // }
    else {
      return '';
    }
  }
}
