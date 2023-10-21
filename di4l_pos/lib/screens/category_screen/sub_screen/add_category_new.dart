// ignore_for_file: prefer_const_constructors_in_immutables, use_build_context_synchronously

import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:di4l_pos/common/dimensions.dart';
import 'package:di4l_pos/common/global_styles.dart';
import 'package:di4l_pos/common/ui_helpers.dart';
import 'package:di4l_pos/enums/add_type.dart';
import 'package:di4l_pos/models/category/response/category_response.dart';
import 'package:di4l_pos/screens/category_screen/cubit/category_cubit.dart';
import 'package:di4l_pos/screens/category_screen/sub_screen/cubit/add_category_cubit.dart';
import 'package:di4l_pos/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

import '../../../common/global_colors.dart';

class AddCategoryScreenN extends StatefulWidget {
  final AddType? addCategoryType;
  final CategoryModel? categoryModel;
  AddCategoryScreenN({
    Key? key,
    this.addCategoryType,
    this.categoryModel,
    this.globalKey,
  }) : super(key: key);
  final GlobalKey<ScaffoldState>? globalKey;

  /// MARK: - Initials;
  static MultiBlocProvider provider(
      {AddType? addCategoryType,
      CategoryModel? categoryModel,
      GlobalKey<ScaffoldState>? globalKey}) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AddCategoryCubit>(
          create: (BuildContext context) => AddCategoryCubit(),
        ),
        BlocProvider<CategoryCubit>(
          create: (BuildContext context) => CategoryCubit(),
        ),
      ],
      child: AddCategoryScreenN(
        addCategoryType: addCategoryType,
        categoryModel: categoryModel,
        globalKey: globalKey,
      ),
    );
  }

  @override
  State<AddCategoryScreenN> createState() => _AddCategoryScreenNState();
}

class _AddCategoryScreenNState extends State<AddCategoryScreenN>
    with AfterLayoutMixin {
  /// MARK: - Initials;

  final TextEditingController _txtCategoryName = TextEditingController();
  final TextEditingController _txtShortCode = TextEditingController();
  final TextEditingController _txtDescription = TextEditingController();
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
  void initState() {
    SystemChannels.textInput.invokeMethod('TextInput.hide');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedPadding(
      padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      duration: const Duration(milliseconds: 150),
      curve: Curves.easeOut,
      child: Container(
        height: Get.height * 0.2,
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(15))),
        child: BlocListener<AddCategoryCubit, AddCategoryState>(
          listener: (context, state) {
            if (state.data!.error != '') {
              {
                UIHelpers.showDialogDefaultBloc(
                  status: state.data!.status,
                  text: state.data!.error,
                );
              }
            }
          },
          child: BlocBuilder<AddCategoryCubit, AddCategoryState>(
            builder: (context, state) => Padding(
              padding: const EdgeInsets.fromLTRB(
                  Dimensions.PADDING_SIZE_DEFAULT,
                  0,
                  Dimensions.PADDING_SIZE_DEFAULT,
                  Dimensions.PADDING_SIZE_DEFAULT),
              child: Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 48.0,
                        alignment: Alignment.center,
                        child: Text(
                          widget.addCategoryType == AddType.NEW
                              ? "add_category".tr
                              : "update_category".tr,
                          style: GlobalStyles.titilliumSemiBold(context),
                          textScaleFactor: 1.2,
                        ),
                      ),
                      Container(
                        alignment: Alignment.centerRight,
                        child: IconButton(
                          onPressed: () => Navigator.pop(context),
                          icon: const Icon(Icons.close_outlined),
                        ),
                      )
                    ],
                  ),
                  Container(
                    color: GlobalColors.bgSearch,
                    height: 0.8,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Expanded(
                        child: CustomTextField(
                          onTap: () =>
                              context.read<AddCategoryCubit>().nameCheck(false),
                          controller: _txtCategoryName,
                          hintText: "category_name".tr,
                        ),
                      ),
                      const SizedBox(
                        width: Dimensions.PADDING_SIZE_SMALL,
                      ),
                      widget.addCategoryType == AddType.UPDATE
                          ? Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                SizedBox(
                                  width: 87,
                                  child: ElevatedButton(
                                    onPressed: () {
                                      context
                                          .read<CategoryCubit>()
                                          .deleteCategory(
                                              id: widget.categoryModel!.id!);
                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: GlobalColors.blackColor,
                                    ),
                                    child: Text("delete".tr,
                                        style: const TextStyle(
                                          color: Colors.white,
                                        )),
                                  ),
                                ),
                              ],
                            )
                          : const SizedBox(
                              width: Dimensions.PADDING_SIZE_SMALL,
                            ),
                      const SizedBox(
                        width: Dimensions.PADDING_SIZE_SMALL,
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: GlobalColors.primaryColor,
                            // This is what you need!
                          ),
                          onPressed: () async {
                            if (_txtCategoryName.text.isEmpty) {
                              context.read<AddCategoryCubit>().nameCheck(true);
                            } else {
                              if (widget.addCategoryType == AddType.NEW) {
                                await context
                                    .read<AddCategoryCubit>()
                                    .addNewCategory(
                                        name: _txtCategoryName.text);
                                widget.globalKey!.currentContext!
                                    .read<CategoryCubit>()
                                    .getCategories();
                              } else {
                                await context
                                    .read<AddCategoryCubit>()
                                    .updateCategory(
                                        categoryId:
                                            widget.categoryModel!.id!.toInt(),
                                        name: _txtCategoryName.text);
                              }
                            }
                          },
                          child: Text(widget.addCategoryType == AddType.NEW
                              ? "create".tr
                              : "update".tr)),
                    ],
                  ),
                  state.data!.nameCheck
                      ? Container(
                          width: Get.width,
                          padding: const EdgeInsets.only(
                              top: Dimensions.PADDING_SIZE_SMALL),
                          child: Text(
                            'name_is_required'.tr,
                            style: const TextStyle(color: Colors.red),
                            textAlign: TextAlign.start,
                          ),
                        )
                      : const SizedBox(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
