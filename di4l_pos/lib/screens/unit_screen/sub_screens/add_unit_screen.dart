import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:di4l_pos/common/dimensions.dart';
import 'package:di4l_pos/common/global_formatter.dart';
import 'package:di4l_pos/enums/add_type.dart';
import 'package:di4l_pos/models/unit/response/unit_response.dart';
import 'package:di4l_pos/screens/unit_screen/cubit/unit_cubit.dart';
import 'package:di4l_pos/screens/unit_screen/sub_screens/cubit/add_unit_cubit.dart';
import 'package:di4l_pos/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

import '../../../common/global_colors.dart';
import '../../../common/global_styles.dart';
import '../../../common/ui_helpers.dart';
import '../../../widgets/custom_button/custom_button.dart';
import '../../../widgets/custom_dropdown.dart';

class AddUnitScreen extends StatefulWidget {
  /// MARK: - Initials;
  final AddType? addUnitType;
  final Unit? unit;
  final GlobalKey<ScaffoldState>? globalKey;
  static MultiBlocProvider provider(
      {AddType? addUnitType, Unit? unit, GlobalKey<ScaffoldState>? globalKey}) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AddUnitCubit>(
          create: (BuildContext context) => AddUnitCubit(),
        ),
        BlocProvider<UnitCubit>(
          create: (BuildContext context) => UnitCubit(),
        ),
      ],
      child: AddUnitScreen(
        addUnitType: addUnitType,
        unit: unit,
        globalKey: globalKey,
      ),
    );
  }

  const AddUnitScreen({
    Key? key,
    this.addUnitType,
    this.unit,
    this.globalKey,
  }) : super(key: key);

  @override
  State<AddUnitScreen> createState() => _AddUnitScreenState();
}

class _AddUnitScreenState extends State<AddUnitScreen> with AfterLayoutMixin {
  /// MARK: - Initials;

  final TextEditingController _txtName = TextEditingController();
  final TextEditingController _txtShortName = TextEditingController();
  final TextEditingController _txtbaseUnitMultiplier = TextEditingController();

  int? _selectId;
  bool isMulti = false;
  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
    context.read<UnitCubit>().getUnits();
    if (widget.addUnitType == AddType.UPDATE) {
      _txtName.text = widget.unit!.actualName ?? '';
      _txtShortName.text = widget.unit!.shortName ?? '';
      context.read<AddUnitCubit>()
        ..changedAllowDecimal(widget.unit!.allowDecimal == 1 ? true : false)
        ..changeBaseUnit(
            widget.unit!.baseUnitMultiplier != null ? true : false);
      _txtbaseUnitMultiplier.text = GlobalFormatter.formatNumber(
          source: widget.unit!.baseUnitMultiplier ?? '');
      if (widget.unit!.baseUnitMultiplier != null) {
        isMulti = true;
      }
    }
  }

  @override
  void dispose() {
    _txtName.dispose();
    _txtShortName.dispose();
    super.dispose();
  }

  String? messErro;
  @override
  Widget build(BuildContext context) {
    return BlocListener<AddUnitCubit, AddUnitState>(
      listener: (context, state) {
        if (state.data!.error != '') {
          if (state.data!.error.contains('Name')) {
            messErro = state.data!.error;
          } else {
            UIHelpers.showDialogDefaultBloc(
              status: state.data!.status,
              text: state.data!.error,
            );
            messErro = null;
            widget.globalKey!.currentContext!.read<UnitCubit>().getUnits();
          }
        }
      },
      child: BlocBuilder<AddUnitCubit, AddUnitState>(
        builder: (context, state) => Padding(
          padding: const EdgeInsets.fromLTRB(Dimensions.PADDING_SIZE_DEFAULT, 0,
              Dimensions.PADDING_SIZE_DEFAULT, Dimensions.PADDING_SIZE_DEFAULT),
          child: AnimatedPadding(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom),
            duration: const Duration(milliseconds: 150),
            curve: Curves.easeOut,
            child: Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              height: Get.height * 0.9,
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
                            widget.addUnitType == AddType.NEW
                                ? "add_unit".tr
                                : "update_unit".tr,
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
                      hintLabel: 'unit_name'.tr,
                      redLabel: ' *',
                      controller: _txtName,
                      hintText: "unit_name".tr,
                    ),
                    const SizedBox(
                      height: Dimensions.PADDING_SIZE_SMALL,
                    ),
                    CustomTextField(
                      hintLabel: 'short_name'.tr,
                      redLabel: ' *',
                      controller: _txtShortName,
                      hintText: "short_name".tr,
                    ),
                    const SizedBox(
                      height: Dimensions.PADDING_SIZE_SMALL,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "allow_decimal".tr,
                          style: const TextStyle(
                            fontSize: 15,
                          ),
                        ),
                        Container(
                          height: 40.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey[300],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(2),
                            child: Row(
                              children: [
                                TextButton(
                                  onPressed: () {
                                    context
                                        .read<AddUnitCubit>()
                                        .changedAllowDecimal(
                                            !state.data!.allowDecimal);
                                  },
                                  style: TextButton.styleFrom(
                                    backgroundColor: state.data!.allowDecimal
                                        ? Colors.white
                                        : Colors.transparent,
                                    padding: const EdgeInsets.all(5.0),
                                    elevation: 0.0,
                                    side: BorderSide(
                                      color: state.data!.allowDecimal
                                          ? GlobalColors.primaryColor
                                          : Colors.transparent,
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          8), // <-- Radius
                                    ),
                                  ),
                                  child: Text(
                                    "yes".tr,
                                    style: TextStyle(
                                        color: state.data!.allowDecimal
                                            ? GlobalColors.primaryColor
                                            : Colors.black54,
                                        fontWeight: FontWeight.w300),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {
                                    context
                                        .read<AddUnitCubit>()
                                        .changedAllowDecimal(
                                            !state.data!.allowDecimal);
                                  },
                                  style: TextButton.styleFrom(
                                    padding: const EdgeInsets.all(5.0),
                                    backgroundColor: !state.data!.allowDecimal
                                        ? Colors.white
                                        : Colors.transparent,
                                    elevation: 0.0,
                                    side: BorderSide(
                                      color: !state.data!.allowDecimal
                                          ? Colors.red
                                          : Colors.transparent,
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          8), // <-- Radius
                                    ),
                                  ),
                                  child: Text(
                                    "no".tr,
                                    style: TextStyle(
                                        color: !state.data!.allowDecimal
                                            ? Colors.red
                                            : Colors.black54,
                                        fontWeight: FontWeight.w300),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: Dimensions.PADDING_SIZE_SMALL,
                    ),
                    const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),
                    BlocBuilder<AddUnitCubit, AddUnitState>(
                      builder: (context, state) => Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "define_base_unit".tr,
                                style: const TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                              Switch(
                                activeColor: GlobalColors.primaryColor,
                                value: isMulti,
                                onChanged: (bool value) {
                                  isMulti = !isMulti;
                                  context
                                      .read<AddUnitCubit>()
                                      .changeBaseUnit(isMulti);
                                },
                              ),
                            ],
                          ),

                          Text(
                            'Note: 1 Unit = Time base unit (Unit)',
                            style: GlobalStyles.titilliumItalic(context),
                          ),

                          /// add as sub taxonomy
                          const SizedBox(height: Dimensions.PADDING_SIZE_SMALL),
                          if (state.data!.baseUnit == true) ...[
                            CustomTextField(
                              controller: _txtbaseUnitMultiplier,
                              keyboardKey: TextInputType.number,
                              hintLabel: 'times_base_unit'.tr,
                            ),
                            const SizedBox(
                                width: Dimensions.PADDING_SIZE_EXTRA_SMALL),
                            BlocBuilder<UnitCubit, UnitState>(
                              builder: (context, state) {
                                final units = state.data!.units;
                                state.data!.unit == null
                                    ? _selectId = null
                                    : _selectId = state.data!.unit!.id!;
                                return CustomDropDownWithT<Unit>(
                                    labelText: 'unit'.tr,
                                    items: units
                                        .map<DropdownMenuItem<Unit>>(
                                            (Unit value) =>
                                                DropdownMenuItem<Unit>(
                                                  value: value,
                                                  child:
                                                      Text(value.actualName!),
                                                ))
                                        .toList(),
                                    value: state.data!.unit,
                                    onChanged: (dynamic value) {
                                      context.read<UnitCubit>().getUnit(value);
                                    });
                              },
                            )
                          ] else ...[
                            const SizedBox()
                          ],
                        ],
                      ),
                    ),
                    messErro != null
                        ? Container(
                            width: Get.width,
                            padding: const EdgeInsets.only(
                                top: Dimensions.PADDING_SIZE_SMALL),
                            child: Text(
                              '$messErro'.tr,
                              style: const TextStyle(color: Colors.red),
                              textAlign: TextAlign.start,
                            ),
                          )
                        : const SizedBox(),
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
                        widget.addUnitType == AddType.UPDATE
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
                                  context.read<AddUnitCubit>().deleteUnit(
                                      id: widget.unit!.id!, context: context);
                                  //Navigator.pop(context);
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
                        //
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
                            if (widget.addUnitType == AddType.UPDATE) {
                              context.read<AddUnitCubit>().updateUnit(
                                    unitId: widget.unit!.id!,
                                    actualName: _txtName.text.trim(),
                                    shortName: _txtShortName.text.trim(),
                                    baseUnitId: _selectId,
                                    baseUnitMultiplier:
                                        _txtbaseUnitMultiplier.text.trim(),
                                  );
                            } else {
                              context.read<AddUnitCubit>().addUnit(
                                    actualName: _txtName.text.trim(),
                                    shortName: _txtShortName.text.trim(),
                                    baseUnitId: _selectId,
                                    baseUnitMultiplier:
                                        _txtbaseUnitMultiplier.text.trim(),
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
      ),
    );
  }
}
