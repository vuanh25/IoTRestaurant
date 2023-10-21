import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:di4l_pos/common/dimensions.dart';
import 'package:di4l_pos/common/ui_helpers.dart';
import 'package:di4l_pos/enums/add_type.dart';
import 'package:di4l_pos/models/price/response/price_response.dart';
import 'package:di4l_pos/screens/price_screen/add_price_screen/cubit/add_price_cubit.dart';
import 'package:di4l_pos/widgets/custom_appbar.dart';
import 'package:di4l_pos/widgets/custom_button/custom_button.dart';
import 'package:di4l_pos/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class AddPriceScreen extends StatefulWidget {
  /// MARK: - Initials;
  final AddType? addPriceType;
  final Price? price;
  static BlocProvider<AddPriceCubit> provider(
      {AddType? addPriceType, Price? price}) {
    return BlocProvider(
      create: (context) => AddPriceCubit(),
      child: AddPriceScreen(
        addPriceType: addPriceType,
        price: price,
      ),
    );
  }

  const AddPriceScreen({
    Key? key,
    this.addPriceType,
    this.price,
  }) : super(key: key);

  @override
  State<AddPriceScreen> createState() => _AddPriceScreenState();
}

class _AddPriceScreenState extends State<AddPriceScreen> with AfterLayoutMixin {
  /// MARK: - Initials;
  final TextEditingController _txtName = TextEditingController();
  final TextEditingController _txtDescription = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey();

  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
    if (widget.addPriceType == AddType.UPDATE) {
      this._txtName.text = widget.price!.name ?? '';
      this._txtDescription.text = widget.price!.description ?? '';
    }
  }

  @override
  void dispose() {
    _txtName.dispose();
    _txtDescription.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AddPriceCubit, AddPriceState>(
      listener: (context, state) {
        if (state.data!.error != '') {
          if (state.data!.error.contains('ActualName') ||
              state.data!.error.contains('ShortName') ||
              state.data!.error.contains('Please')) {
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
      child: Scaffold(
        key: _globalKey,
        appBar: CustomAppBar(
            title: widget.addPriceType == AddType.NEW
                ? 'add_price'.tr
                : 'update_price'.tr),
        body: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: Dimensions.PADDING_SIZE_DEFAULT,
              vertical: Dimensions.PADDING_SIZE_SMALL),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                /// Name
                CustomTextField(
                  controller: _txtName,
                  hintLabel: 'price_name'.tr,
                ),

                /// Description
                const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),
                Container(
                  height: 200,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.all(Radius.circular(
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

                /// Save Buttton
                const SizedBox(height: Dimensions.PADDING_SIZE_Thirty_Five),
                CustomButton(
                  type: ButtonType.BUTTON_WITH_ICON,
                  label: 'save'.tr,
                  icon: const Icon(
                    Icons.save,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    if (widget.addPriceType == AddType.NEW) {
                      _globalKey.currentContext!.read<AddPriceCubit>().addPrice(
                            name: _txtName.text.trim(),
                            description: _txtDescription.text.trim(),
                          );
                    } else if (widget.addPriceType == AddType.UPDATE) {
                      _globalKey.currentContext!
                          .read<AddPriceCubit>()
                          .updatePrice(
                            priceId: widget.price!.id!,
                            name: _txtName.text.trim(),
                            description: _txtDescription.text.trim(),
                          );
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
