import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:di4l_pos/common/dimensions.dart';
import 'package:di4l_pos/common/global_constants.dart';
import 'package:di4l_pos/common/ui_helpers.dart';
import 'package:di4l_pos/enums/add_type.dart';
import 'package:di4l_pos/models/warranty/warranty_response.dart';
import 'package:di4l_pos/screens/warranties_screen/cubit/warranties_cubit.dart';
import 'package:di4l_pos/screens/warranties_screen/sub_screen/cubit/add_warranty_cubit.dart';
import 'package:di4l_pos/widgets/custom_button/custom_button.dart';
import 'package:di4l_pos/widgets/custom_dropdown.dart';
import 'package:di4l_pos/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

import '../../../common/global_colors.dart';
import '../../../common/global_styles.dart';

class AddWarrantyScreen extends StatefulWidget {
  /// MARK: - Initials;
  final AddType? addWarrantyType;
  final Warranty? warranty;

  static MultiBlocProvider provider(
      {AddType? addWarrantyType, Warranty? warranty}) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AddWarrantyCubit>(
          create: (BuildContext context) => AddWarrantyCubit(),
        ),
        BlocProvider<WarrantiesCubit>(
          create: (BuildContext context) => WarrantiesCubit(),
        ),
      ],
      child: AddWarrantyScreen(
        addWarrantyType: addWarrantyType,
        warranty: warranty,
      ),
    );
  }

  const AddWarrantyScreen({
    Key? key,
    this.addWarrantyType,
    this.warranty,
  }) : super(key: key);

  @override
  State<AddWarrantyScreen> createState() => _AddWarrantyScreenState();
}

class _AddWarrantyScreenState extends State<AddWarrantyScreen>
    with AfterLayoutMixin {
  /// MARK: - Initials;

  final TextEditingController _txtName = TextEditingController();
  final TextEditingController _txtDescription = TextEditingController();
  final TextEditingController _txtDuration = TextEditingController();

  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
    if (widget.addWarrantyType == AddType.UPDATE) {
      _txtName.text = widget.warranty!.name ?? '';
      _txtDescription.text = widget.warranty!.description ?? '';
      _txtDuration.text = widget.warranty!.duration.toString();
      context.read<AddWarrantyCubit>().getType(widget.warranty!.durationType!);
    }
  }

  @override
  void dispose() {
    _txtName.dispose();
    _txtDescription.dispose();
    _txtDuration.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AddWarrantyCubit, AddWarrantyState>(
      listener: (context, state) {
        if (state.data!.error != '') {
          if (state.data!.error.contains('Name')) {
            UIHelpers.showSnackBar(
                message: state.data!.error, type: SnackBarType.ERROR);
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
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 48.0,
                        alignment: Alignment.center,
                        child: Text(
                          widget.addWarrantyType == AddType.NEW
                              ? 'add_warranty'.tr
                              : 'update_warranty'.tr,
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
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      /// Name
                      CustomTextField(
                        controller: _txtName,
                        redLabel: " *",
                        hintLabel: 'warranty_name'.tr,
                      ),

                      /// Short Name
                      const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),
                      CustomTextField(
                        controller: _txtDescription,
                        hintLabel: 'description'.tr,
                      ),

                      const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),
                      Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: CustomTextField(
                              controller: _txtDuration,
                              hintLabel: 'duration'.tr,
                              redLabel: ' *',
                              keyboardKey: TextInputType.number,
                            ),
                          ),
                          const SizedBox(width: Dimensions.PADDING_SIZE_SMALL),
                          Expanded(
                            flex: 1,
                            child:
                                BlocBuilder<AddWarrantyCubit, AddWarrantyState>(
                              builder: (context, state) => CustomDropDown(
                                labelText: 'pay_term_type'.tr,
                                items: GlobalConstants.payTermTypes,
                                value: state.data!.payType,
                                onChanged: (dynamic value) => context
                                    .read<AddWarrantyCubit>()
                                    .getType(value),
                              ),
                            ),
                          ),
                        ],
                      ),

                      /// Save Buttton
                      const SizedBox(
                          height: Dimensions.PADDING_SIZE_Thirty_Five),
                    ],
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
                      widget.addWarrantyType == AddType.UPDATE
                          ? CustomButton(
                              type: ButtonType.BUTTON_TEXT,
                              color: Colors.white,
                              label: "delete".tr,
                              style: const TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold,
                                  fontSize: Dimensions.FONT_SIZE_LARGE),
                              borderColor: Colors.red,
                              onPressed: () {},
                            )
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
                          if (widget.addWarrantyType == AddType.UPDATE) {
                            context.read<AddWarrantyCubit>().updateWarranties(
                                  warrantiesId: widget.warranty!.id!,
                                  name: _txtName.text.trim(),
                                  description: _txtDescription.text.trim(),
                                  duration: int.parse(_txtDuration.text.trim()),
                                );
                          } else {
                            context.read<AddWarrantyCubit>().addWarranties(
                                  name: _txtName.text.trim(),
                                  description: _txtDescription.text.trim(),
                                  duration: int.parse(_txtDuration.text.trim()),
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
