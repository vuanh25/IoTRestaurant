import 'package:di4l_pos/common/dimensions.dart';
import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/screens/expense_screen/cubit/expense_cubit.dart';
import 'package:di4l_pos/widgets/custom_button/custom_button.dart';
import 'package:di4l_pos/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import '../widgets/textfield_input_money.dart';

class CreateClassify extends StatefulWidget {
  const CreateClassify({
    Key? key,
    required this.isClassify,
  }) : super(key: key);
  final bool isClassify;

  static BlocProvider<ExpenseCubit> provider({required bool isClassify}) {
    return BlocProvider(
      create: (context) => ExpenseCubit(),
      child: CreateClassify(isClassify: isClassify),
    );
  }

  @override
  State<CreateClassify> createState() => _CreateClassifyState();
}

class _CreateClassifyState extends State<CreateClassify> {
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController codeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      key: _globalKey,
      height: MediaQuery.of(context).size.height / 2.4,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(10.0), topLeft: Radius.circular(10.0)),
      ),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Text(
                  widget.isClassify == true ? 'variant_n'.tr : 'Tạo mới',
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              IconButton(
                onPressed: () => Navigator.of(context).pop(true),
                icon: const Icon(Icons.clear, size: 18),
              )
            ],
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Column(
                children: [
                  CustomTextField(
                    controller: nameController,
                    hintLabel: 'first_name'.tr,
                    hintText: '${'ex'.tr}: Tiền hàng',
                    errorText: null,
                  ),
                  CustomTextField(
                    controller: codeController,
                    hintLabel: 'Code',
                    hintText: '123',
                    errorText: null,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: widget.isClassify == false
                ? TextFieldInput(
                    labelText: 'Số dư ban đầu',
                    controller: nameController,
                  )
                : const Text(''),
          ),
          Container(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomButton(
                  type: ButtonType.BUTTON_TEXT,
                  color: Colors.white,
                  label: "back".tr,
                  style: const TextStyle(
                      color: GlobalColors.primaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: Dimensions.FONT_SIZE_LARGE),
                  borderColor: GlobalColors.primaryColor,
                  onPressed: () => navigator!.pop(context),
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
                    _globalKey.currentContext!
                        .read<ExpenseCubit>()
                        .addExpenseCateogory(
                          name: nameController.text,
                          code: codeController.text,
                        );
                    navigator!.pop(context);
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
