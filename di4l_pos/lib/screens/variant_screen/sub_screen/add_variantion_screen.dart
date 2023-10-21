import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:di4l_pos/common/dimensions.dart';
import 'package:di4l_pos/common/ui_helpers.dart';
import 'package:di4l_pos/enums/add_type.dart';
import 'package:di4l_pos/models/variants/response/variants_response.dart';
import 'package:di4l_pos/screens/variant_screen/sub_screen/cubit/add_variantion_cubit.dart';
import 'package:di4l_pos/screens/variant_screen/widgets/add_value_variantion.dart';
import 'package:di4l_pos/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

import '../../../common/global_colors.dart';
import '../../../common/global_styles.dart';
import '../../../models/variants/request/add_variantion_request.dart';
import '../../../widgets/custom_button/custom_button.dart';
import '../cubit/variant_cubit.dart';

class AddVariantionScreen extends StatefulWidget {
  /// MARK: - Initials;
  final AddType? addVariantionType;
  final Variant? variant;
  final GlobalKey<ScaffoldState>? globalKey;
  static BlocProvider<AddVariantionCubit> provider(
      {AddType? addVariantionType,
      Variant? variant,
      GlobalKey<ScaffoldState>? globalKey}) {
    return BlocProvider(
        create: (context) => AddVariantionCubit(),
        child: BlocProvider(
          create: (context) => VariantCubit(),
          child: AddVariantionScreen(
            addVariantionType: addVariantionType,
            variant: variant,
            globalKey: globalKey,
          ),
        ));
  }

  const AddVariantionScreen({
    Key? key,
    this.addVariantionType,
    this.variant,
    this.globalKey,
  }) : super(key: key);

  @override
  State<AddVariantionScreen> createState() => _AddVariantionScreenState();
}

class _AddVariantionScreenState extends State<AddVariantionScreen>
    with AfterLayoutMixin {
  /// MARK: - Initials;
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _txtName = TextEditingController();
  // List<TextEditingController> _values = [];
  final List<ValueVr> _variantionValues = [];

  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
    if (widget.addVariantionType == AddType.UPDATE) {
      _txtName.text = widget.variant!.name ?? '';
      context.read<AddVariantionCubit>().getValueEdits(widget.variant!.values!);
    } else {
      context.read<AddVariantionCubit>().addValue();
    }
  }

  @override
  void dispose() {
    _txtName.dispose();
    super.dispose();
  }

  String errMess = "";
  bool isAddValue = false;
  @override
  Widget build(BuildContext context) {
    return BlocListener<AddVariantionCubit, AddVariantionState>(
      listener: (context, state) {
        if (state.data!.error != '') {
          if (!state.data!.error.contains('required')) {
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
        child: Container(
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(15))),
          height: Get.height * 0.9,
          child: Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: 0, vertical: Dimensions.PADDING_SIZE_SMALL),
            child: Stack(
              children: [
                Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          color: Colors.white,
                          height: 48.0,
                          alignment: Alignment.center,
                          child: Text(
                            widget.addVariantionType == AddType.NEW
                                ? "add_variant".tr
                                : "update_variant".tr,
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
                    Expanded(
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Column(
                          children: [
                            Form(
                              key: _formKey,
                              child: Container(
                                color: Colors.white,
                                child: Padding(
                                  padding: const EdgeInsets.all(
                                      Dimensions.PADDING_SIZE_DEFAULT),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      /// Name
                                      CustomTextField(
                                        redLabel: '*',
                                        controller: _txtName,
                                        hintLabel: 'variant_template'.tr,
                                      ),
                                      const SizedBox(
                                          height:
                                              Dimensions.PADDING_SIZE_DEFAULT),

                                      BlocBuilder<AddVariantionCubit,
                                              AddVariantionState>(
                                          builder: (context, state) =>
                                              state.data!.error.isNotEmpty
                                                  ? Text(
                                                      state.data!.error,
                                                      style: const TextStyle(
                                                          color: Colors.red),
                                                    )
                                                  : const SizedBox()),
                                      const SizedBox(
                                          height:
                                              Dimensions.PADDING_SIZE_DEFAULT),
                                      Text(
                                        'add_value_variant'.tr,
                                        style:
                                            GlobalStyles.titilliumBold(context),
                                        textScaleFactor: 1.1,
                                      ),
                                      BlocBuilder<AddVariantionCubit,
                                          AddVariantionState>(
                                        builder: (context, state) {
                                          dynamic data;
                                          if (widget.addVariantionType ==
                                                  AddType.UPDATE &&
                                              !isAddValue &&
                                              _variantionValues.isEmpty) {
                                            data = widget.variant!.values;
                                            for (var i = 0;
                                                i < data!.length;
                                                i++) {
                                              _variantionValues.add(ValueVr(
                                                data[i].id!,
                                                TextEditingController(
                                                    text: data[i].name!),
                                              ));
                                            }
                                            if (_variantionValues.isEmpty) {
                                              _variantionValues.add(ValueVr(
                                                  -1, TextEditingController()));
                                            }

                                            //isAddValue = true;
                                          } else {
                                            data = state.data?.valuesAdd ?? [];
                                          }

                                          return Column(
                                            children: List.generate(
                                              widget.addVariantionType ==
                                                      AddType.UPDATE
                                                  ? _variantionValues.length
                                                  : data.length,
                                              (index) => AddValueVariantion(
                                                controller:
                                                    widget.addVariantionType ==
                                                            AddType.UPDATE
                                                        ? _variantionValues[
                                                                index]
                                                            .name
                                                        : data[index],
                                                isDel:
                                                    index == 0 ? false : true,
                                                isChill:
                                                    index == 0 ? false : true,
                                                onPressed: () {
                                                  if (index == 0) {
                                                    if (widget
                                                            .addVariantionType ==
                                                        AddType.UPDATE) {
                                                      _variantionValues.add(ValueVr(
                                                          -1,
                                                          TextEditingController()));
                                                      context
                                                          .read<
                                                              AddVariantionCubit>()
                                                          .isAddNewValue(!state
                                                              .data!
                                                              .isAddNewValue);
                                                    } else {
                                                      context
                                                          .read<
                                                              AddVariantionCubit>()
                                                          .addValue();
                                                    }
                                                  } else {
                                                    if (widget
                                                            .addVariantionType ==
                                                        AddType.UPDATE) {
                                                      isAddValue = true;

                                                      _variantionValues
                                                          .removeAt(index);
                                                      context
                                                          .read<
                                                              AddVariantionCubit>()
                                                          .isAddNewValue(
                                                              isAddValue);
                                                    } else {
                                                      context
                                                          .read<
                                                              AddVariantionCubit>()
                                                          .removeValue(index);
                                                    }
                                                  }
                                                },
                                              ),
                                            ),
                                          );
                                        },
                                      ),

                                      /// Save Buttton
                                      const SizedBox(
                                          height: Dimensions
                                              .PADDING_SIZE_Thirty_Five),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
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
                        widget.addVariantionType == AddType.UPDATE
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
                                  context
                                      .read<VariantCubit>()
                                      .deleteVariant(id: widget.variant!.id!);
                                },
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
                          onPressed: () async {
                            List<VariantionValue> editValues = [];
                            for (var i = 0; i < _variantionValues.length; i++) {
                              VariantionValue value = VariantionValue(
                                  id: _variantionValues[i].id == -1
                                      ? null
                                      : _variantionValues[i].id,
                                  name: _variantionValues[i].name.text);

                              editValues.add(value);
                            }
                            if (widget.addVariantionType == AddType.NEW) {
                              context
                                  .read<AddVariantionCubit>()
                                  .addVariantion(name: _txtName.text.trim());
                            } else {
                              context
                                  .read<AddVariantionCubit>()
                                  .updateVariantion(
                                    id: widget.variant!.id!,
                                    name: _txtName.text.trim(),
                                    editValues: editValues,
                                  );
                            }
                          },
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ValueVr {
  int? id;
  TextEditingController name;
  ValueVr(this.id, this.name);
}
