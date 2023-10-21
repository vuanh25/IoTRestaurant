import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:di4l_pos/common/dimensions.dart';
import 'package:di4l_pos/common/ui_helpers.dart';
import 'package:di4l_pos/enums/add_type.dart';
import 'package:di4l_pos/models/branch/response/branch_response.dart';
import 'package:di4l_pos/screens/branch_screen/add_branch_screen/cubit/add_branch_cubit.dart';
import 'package:di4l_pos/widgets/custom_button/custom_button.dart';
import 'package:di4l_pos/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

import '../../../common/global_colors.dart';
import '../../../common/global_styles.dart';

class AddBranchScreen extends StatefulWidget {
  final AddType? addBranchType;
  final Branch? branch;

  const AddBranchScreen({
    Key? key,
    this.addBranchType,
    this.branch,
  }) : super(key: key);

  /// MARK: - Initials;
  static BlocProvider<AddBranchCubit> provider(
      {AddType? addBranchType, Branch? branch}) {
    return BlocProvider(
      create: (context) => AddBranchCubit(),
      child: AddBranchScreen(
        addBranchType: addBranchType,
        branch: branch,
      ),
    );
  }

  @override
  State<AddBranchScreen> createState() => _AddBranchScreenState();
}

class _AddBranchScreenState extends State<AddBranchScreen>
    with AfterLayoutMixin {
  /// MARK: - Initials;
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey();
  final TextEditingController _txtBranchName = TextEditingController();
  final TextEditingController _txtDescription = TextEditingController();

  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
    if (widget.addBranchType == AddType.UPDATE) {
      _txtBranchName.text = widget.branch?.name ?? '';
      _txtDescription.text = widget.branch?.description ?? '';
    }
  }

  @override
  void dispose() {
    _txtBranchName.dispose();
    _txtDescription.dispose();
    super.dispose();
  }

  String errMess = "";
  @override
  Widget build(BuildContext context) {
    return BlocListener<AddBranchCubit, AddBranchState>(
      key: _globalKey,
      listener: (context, state) {
        if (state.data!.error != '') {
          if (state.data!.error.contains('Name')) {
            errMess = state.data!.error;
          } else {
            UIHelpers.showDialogDefaultBloc(
              status: state.data!.status,
              text: state.data!.error,
            );
          }
        }
      },
      child: AnimatedPadding(
        padding:
            EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        duration: const Duration(milliseconds: 150),
        curve: Curves.easeOut,
        child: Container(
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(15))),
          height: Get.height * 0.6,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(
                Dimensions.PADDING_SIZE_DEFAULT,
                0,
                Dimensions.PADDING_SIZE_DEFAULT,
                Dimensions.PADDING_SIZE_DEFAULT),
            child: Stack(children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 48.0,
                        alignment: Alignment.center,
                        child: Text(
                          widget.addBranchType == AddType.NEW
                              ? 'add_branch'.tr
                              : 'update_branch'.tr,
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
                  CustomTextField(
                    hintLabel: 'branch_name'.tr,
                    redLabel: ' *',
                    controller: _txtBranchName,
                    hintText: "branch_name".tr,
                  ),
                  const SizedBox(
                    height: Dimensions.PADDING_SIZE_SMALL,
                  ),
                  CustomTextField(
                    hintLabel: 'description'.tr,
                    controller: _txtDescription,
                    hintText: "description".tr,
                  ),
                  const SizedBox(
                    height: Dimensions.PADDING_SIZE_SMALL,
                  ),
                  BlocBuilder<AddBranchCubit, AddBranchState>(
                    builder: (context, state) {
                      return errMess.isNotEmpty
                          ? Text(
                              errMess,
                              style: const TextStyle(color: Colors.red),
                            )
                          : const SizedBox();
                    },
                  ),
                  const SizedBox(
                    height: Dimensions.PADDING_SIZE_SMALL,
                  ),
                  const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),
                ],
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.1,
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      widget.addBranchType == AddType.UPDATE
                          ? CustomButton(
                              type: ButtonType.BUTTON_TEXT,
                              color: Colors.white,
                              label: "delete".tr,
                              style: const TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold,
                                  fontSize: Dimensions.FONT_SIZE_LARGE),
                              borderColor: Colors.red,
                              onPressed: () {
                                _globalKey.currentContext!
                                    .read<AddBranchCubit>()
                                    .deleteBrand(
                                      id: widget.branch!.id!,
                                    );
                              })
                          : CustomButton(
                              type: ButtonType.BUTTON_TEXT,
                              color: Colors.white,
                              label: "add_more".tr,
                              style: const TextStyle(
                                  color: GlobalColors.primaryColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: Dimensions.FONT_SIZE_LARGE),
                              borderColor: GlobalColors.primaryColor,
                              onPressed: () async {},
                            ),
                      const SizedBox(
                        width: Dimensions.PADDING_SIZE_SMALL,
                      ),
                      CustomButton(
                        type: ButtonType.BUTTON_TEXT,
                        color: GlobalColors.primaryColor,
                        label: "save".tr,
                        style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: Dimensions.FONT_SIZE_LARGE),
                        borderColor: GlobalColors.primaryColor,
                        onPressed: () {
                          if (widget.addBranchType == AddType.NEW) {
                            context.read<AddBranchCubit>().addBranch(
                                  name: _txtBranchName.text.trim(),
                                  description: _txtDescription.text.trim(),
                                );
                          } else {
                            context.read<AddBranchCubit>().updateBranch(
                                  brandId: widget.branch!.id!,
                                  name: _txtBranchName.text.trim(),
                                  description: _txtDescription.text.trim(),
                                );
                          }
                        },
                      ),
                    ],
                  ),
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
