import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/common/ui_helpers.dart';
import 'package:di4l_pos/enums/add_type.dart';
import 'package:di4l_pos/models/shopinfo/response/ShopSettingRp.dart';
import 'package:di4l_pos/screens/business_screen/sub_screen/add_status_order/cubit/add_status_order_cubit.dart';
import 'package:di4l_pos/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/utils.dart';

class AddStatusOrder extends StatefulWidget {
  const AddStatusOrder(
      {Key? key, this.addStatusOrderType, this.statusOrderModel})
      : super(key: key);
  final AddType? addStatusOrderType;
  final StatusOrder? statusOrderModel;

  static BlocProvider<AddStatusOrderCubit> provider(
      {AddType? addStatusOrderType, StatusOrder? statusOrderModel}) {
    return BlocProvider(
      create: (context) => AddStatusOrderCubit(),
      child: AddStatusOrder(
        addStatusOrderType: addStatusOrderType,
        statusOrderModel: statusOrderModel,
      ),
    );
  }

  @override
  State<AddStatusOrder> createState() => _AddStatusOrderState();
}

class _AddStatusOrderState extends State<AddStatusOrder> with AfterLayoutMixin {
  final TextEditingController _txtValue = TextEditingController();

  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
    if (widget.addStatusOrderType == AddType.UPDATE) {
      _txtValue.text = widget.statusOrderModel!.value ?? '';
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AddStatusOrderCubit, AddStatusOrderState>(
      listener: (context, state) {
        if (state.data!.error != '') {
          if (state.data!.error.contains('Required')) {
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
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          ListTile(
            title: Center(
                child: Text(
              widget.addStatusOrderType == AddType.NEW
                  ? 'add_status_order'.tr
                  : 'Update_status_order'.tr,
            )),
            // minLeadingWidth: 0,
            // leading: IconButton(
            //   icon: const Icon(Icons.arrow_back_ios_new),
            //   onPressed: () {},
            // ),
          ),
          CustomTextField(
            controller: _txtValue,
            hintLabel: 'status_order'.tr,
          ),
          widget.addStatusOrderType == AddType.UPDATE
              ? ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: GlobalColors.primaryColor),
                  onPressed: () {
                    context.read<AddStatusOrderCubit>().updateStatusOrder(
                        value: _txtValue.text.trim(),
                        id: widget.statusOrderModel!.id!);
                  },
                  child: Text(
                    widget.addStatusOrderType == AddType.NEW
                        ? 'add_status_order'.tr
                        : 'Update_status_order'.tr,
                  ))
              : ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: GlobalColors.primaryColor),
                  onPressed: () {
                    context
                        .read<AddStatusOrderCubit>()
                        .addStatusOrder(value: _txtValue.text.trim());
                  },
                  child: Text(
                    widget.addStatusOrderType == AddType.NEW
                        ? 'add_status_order'.tr
                        : 'Update_status_order'.tr,
                  ))
        ]),
      ),
    );
  }
}
