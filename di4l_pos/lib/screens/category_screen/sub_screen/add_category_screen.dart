// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:di4l_pos/common/dimensions.dart';
import 'package:di4l_pos/common/global_styles.dart';
import 'package:di4l_pos/common/ui_helpers.dart';
import 'package:di4l_pos/enums/add_type.dart';
import 'package:di4l_pos/models/category/response/category_response.dart';
import 'package:di4l_pos/screens/category_screen/cubit/category_cubit.dart';
import 'package:di4l_pos/screens/category_screen/sub_screen/cubit/add_category_cubit.dart';
import 'package:di4l_pos/widgets/custom_appbar.dart';
import 'package:di4l_pos/widgets/custom_button/custom_button.dart';
import 'package:di4l_pos/widgets/custom_dropdown.dart';
import 'package:di4l_pos/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class AddCategoryScreen extends StatefulWidget {
  final AddType? addCategoryType;
  final CategoryModel? categoryModel;

  const AddCategoryScreen({
    Key? key,
    this.addCategoryType,
    this.categoryModel,
  }) : super(key: key);

  /// MARK: - Initials;
  static MultiBlocProvider provider(
      {AddType? addCategoryType, CategoryModel? categoryModel}) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AddCategoryCubit>(
          create: (BuildContext context) => AddCategoryCubit(),
        ),
        BlocProvider<CategoryCubit>(
          create: (BuildContext context) => CategoryCubit(),
        ),
      ],
      child: AddCategoryScreen(
        addCategoryType: addCategoryType,
        categoryModel: categoryModel,
      ),
    );
  }

  @override
  State<AddCategoryScreen> createState() => _AddCategoryScreenState();
}

class _AddCategoryScreenState extends State<AddCategoryScreen>
    with AfterLayoutMixin {
  /// MARK: - Initials;
  final GlobalKey<FormState> _formKey = GlobalKey();
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey();

  final TextEditingController _txtCategoryName = TextEditingController();
  final TextEditingController _txtShortCode = TextEditingController();
  final TextEditingController _txtDescription = TextEditingController();
  int selectId = 0;
  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
    context.read<CategoryCubit>().getCategories();
    if (widget.addCategoryType == AddType.UPDATE) {
      _txtCategoryName.text = widget.categoryModel?.name ?? '';
      _txtShortCode.text = widget.categoryModel?.shortCode ?? '';
      _txtDescription.text = widget.categoryModel?.description ?? '';
    }
  }

  @override
  void dispose() {
    _txtCategoryName.dispose();
    _txtShortCode.dispose();
    _txtDescription.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AddCategoryCubit, AddCategoryState>(
      listener: (context, state) {
        if (state.data!.error != '') {
          if (state.data!.error.contains('Name') ||
              state.data!.error.contains('ShortCode') ||
              state.data!.error.contains('Please')) {
            UIHelpers.showSnackBar(
              message: state.data!.error,
              type: SnackBarType.ERROR,
            );
          } else {
            UIHelpers.showDialogDefaultBloc(
              status: state.data!.status,
              text: state.data!.error,
            );
          }
        }
      },
      child: Scaffold(
        key: _globalKey,
        resizeToAvoidBottomInset: false,
        appBar: CustomAppBar(
            title: widget.addCategoryType == AddType.NEW
                ? 'add_category'.tr
                : 'update_category'.tr),
        body: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: Dimensions.PADDING_SIZE_DEFAULT,
                  vertical: Dimensions.PADDING_SIZE_SMALL),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /// Category name
                  CustomTextField(
                    controller: _txtCategoryName,
                    hintLabel: 'category_name'.tr,
                  ),

                  /// short code
                  const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),
                  CustomTextField(
                    controller: _txtShortCode,
                    hintLabel: 'short_name'.tr,
                  ),

                  /// category description
                  const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),
                  Container(
                    height: 180,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: const BorderRadius.all(Radius.circular(
                            Dimensions.PADDING_SIZE_EXTRA_SMALL))),
                    padding: const EdgeInsets.symmetric(
                        horizontal: Dimensions.PADDING_SIZE_SMALL),
                    child: TextField(
                      controller: _txtDescription,
                      textInputAction: TextInputAction.done,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'description'.tr,
                      ),
                      maxLines: null,
                      textAlignVertical: TextAlignVertical.top,
                    ),
                  ),

                  /// Add as multiple of other unit
                  const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),
                  BlocBuilder<AddCategoryCubit, AddCategoryState>(
                    builder: (context, state) => Column(
                      children: [
                        CheckboxListTile(
                          controlAffinity: ListTileControlAffinity.leading,
                          contentPadding: const EdgeInsets.all(0),
                          title: Text(
                            "add_sub_category".tr,
                            style: GlobalStyles.titleRegular(context),
                          ),
                          value: state.data!.addSubCategory,
                          onChanged: (value) => _globalKey.currentContext!
                              .read<AddCategoryCubit>()
                              .changeAddSubCat(value),
                        ),
                        state.data!.addSubCategory == true
                            ? BlocBuilder<CategoryCubit, CategoryState>(
                                builder: (context, state) {
                                  final _categories = state.data!.categories;
                                  state.data!.categoryModel == null
                                      ? selectId = 0
                                      : selectId =
                                          state.data!.categoryModel!.id!;
                                  return CustomDropDownWithT<CategoryModel>(
                                    labelText: 'category'.tr,
                                    items: _categories
                                        .map<DropdownMenuItem<CategoryModel>>(
                                          (CategoryModel value) =>
                                              DropdownMenuItem<CategoryModel>(
                                            value: value,
                                            child: Text(value.name!),
                                          ),
                                        )
                                        .toList(),
                                    value: state.data!.categoryModel,
                                    onChanged: (dynamic value) => _globalKey
                                        .currentContext!
                                        .read<CategoryCubit>()
                                        .getCategory(value),
                                  );
                                },
                              )
                            : const SizedBox(),
                      ],
                    ),
                  ),

                  /// Button Save
                  const SizedBox(height: Dimensions.PADDING_SIZE_Thirty_Five),
                  CustomButton(
                    type: ButtonType.BUTTON_WITH_ICON,
                    label: 'save'.tr,
                    icon: const Icon(
                      Icons.save,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      if (widget.addCategoryType == AddType.NEW) {
                        _globalKey.currentContext!
                            .read<AddCategoryCubit>()
                            .addNewCategory(
                              name: _txtCategoryName.text.trim(),
                              // shortCode: _txtShortCode.text.trim(),
                              // description: _txtDescription.text.trim(),
                              // parentId: _selectId,
                            );
                      } else if (widget.addCategoryType == AddType.UPDATE) {
                        _globalKey.currentContext!
                            .read<AddCategoryCubit>()
                            .updateCategory(
                              categoryId: widget.categoryModel!.id!,
                              name: _txtCategoryName.text.trim(),
                              // shortCode: _txtShortCode.text.trim(),
                              // description: _txtDescription.text.trim(),
                              // parentId: _selectId,
                            );
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
