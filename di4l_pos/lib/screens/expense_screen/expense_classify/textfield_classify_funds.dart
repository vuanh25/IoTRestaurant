import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:di4l_pos/screens/business_screen/cubit/business_cubit.dart';
import 'package:di4l_pos/screens/expense_screen/cubit/expense_cubit.dart';
import 'package:flutter/material.dart';
import 'package:di4l_pos/screens/expense_screen/expense_classify/showbottom_list_classify_funds.dart';
import 'package:di4l_pos/screens/expense_screen/widgets/button_suggest.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TextFieldClassifyFunds extends StatefulWidget {
  const TextFieldClassifyFunds({
    Key? key,
    required this.isClassify,
    required this.isCustomer,
    required this.isLocation,
    required this.labelText,
    required this.hintText,
    required this.controller,
    required this.onValueChanged,
  }) : super(key: key);

  static BlocProvider<ExpenseCubit> provider({
    bool isClassify = false,
    bool isCustomer = false,
    bool isLocation = false,
    required String labelText,
    required String hintText,
    required TextEditingController controller,
    required ValueChanged<int> onValueChanged,
  }) {
    return BlocProvider(
      create: (context) => ExpenseCubit(),
      child: TextFieldClassifyFunds(
        isClassify: isClassify,
        isCustomer: isCustomer,
        isLocation: isLocation,
        labelText: labelText,
        hintText: hintText,
        controller: controller,
        onValueChanged: onValueChanged,
      ),
    );
  }

  final bool isClassify, isCustomer, isLocation;
  final String labelText, hintText;
  final TextEditingController controller;
  final ValueChanged<int> onValueChanged;

  @override
  State<TextFieldClassifyFunds> createState() => _TextFieldClassifyFundsState();
}

class _TextFieldClassifyFundsState extends State<TextFieldClassifyFunds>
    with AfterLayoutMixin {
  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
    context.read<ExpenseCubit>().getExpenseCategories();
    context.read<BusinessCubit>().getBusinesss();
  }

  void _insertSuggest(String myText) {
    final newText = myText;
    widget.controller.text = newText;
    widget.controller.selection =
        TextSelection.fromPosition(TextPosition(offset: newText.length));
  }

  void _idChanged(int id) => widget.onValueChanged(id);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: widget.controller,
          onTap: () {
            showModalBottomSheet<void>(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10.0),
                      topLeft: Radius.circular(10.0)),
                ),
                context: context,
                builder: (BuildContext context) {
                  return ListClassifyFunds.provider(
                    isClassify: widget.isClassify,
                    isCustomer: widget.isCustomer,
                    isLocation: widget.isLocation,
                    onTextInput: (myText) => _insertSuggest(myText),
                    idChange: (id) => _idChanged(id),
                  );
                });
          },
          readOnly: true,
          decoration: InputDecoration(
            labelText: widget.labelText,
            labelStyle: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(0xff49545C),
                fontSize: 18),
            hintText: widget.hintText,
            hintStyle: const TextStyle(color: Color(0xff9DA1A4), fontSize: 14),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            suffixIcon:
                const Icon(Icons.keyboard_arrow_down, color: Color(0xff434345)),
            enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(
                width: 1,
                color: Color(0xffDFDFDF),
              ),
            ),
            focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(
                width: 1,
                color: Color(0xffDFDFDF),
              ),
            ),
          ),
          style: const TextStyle(fontSize: 14, color: Color(0xff545557)),
        ),
        widget.isClassify == true
            ? BlocBuilder<ExpenseCubit, ExpenseState>(
                builder: (context, state) {
                return Row(
                  children: List.generate(
                    state.data!.categories.length > 3
                        ? 3
                        : state.data!.categories.length,
                    (index) => ButtonSuggest(
                      id: state.data!.categories[index].id!,
                      text: state.data!.categories[index].name!,
                      onTextInput: _insertSuggest,
                      idChange: widget.onValueChanged,
                    ),
                  ),
                );
              })
            : const SizedBox(),
        widget.isLocation == true
            ? BlocBuilder<BusinessCubit, BusinessState>(
                builder: (context, state) {
                return Row(
                  children: List.generate(
                    state.data!.businesss.length > 3
                        ? 3
                        : state.data!.businesss.length,
                    (index) => ButtonSuggest(
                      id: state.data!.businesss[index].id!,
                      text: state.data!.businesss[index].name!,
                      onTextInput: _insertSuggest,
                      idChange: widget.onValueChanged,
                    ),
                  ),
                );
              })
            : const SizedBox(),
      ],
    );
  }
}
