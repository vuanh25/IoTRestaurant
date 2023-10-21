import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:di4l_pos/common/global_styles.dart';
import 'package:di4l_pos/screens/business_screen/cubit/business_cubit.dart';
import 'package:di4l_pos/screens/contacts_screen/customers_screen/cubit/customers_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

import 'package:di4l_pos/screens/expense_screen/cubit/expense_cubit.dart';
import 'package:di4l_pos/screens/expense_screen/widgets/button_funds.dart';
import 'package:di4l_pos/screens/expense_screen/expense_classify/create_classify_funds.dart';

class ListClassifyFunds extends StatefulWidget {
  const ListClassifyFunds({
    Key? key,
    required this.isClassify,
    required this.isCustomer,
    required this.isLocation,
    required this.onTextInput,
    required this.idChange,
  }) : super(key: key);
  final bool isClassify, isCustomer, isLocation;
  final ValueSetter<String> onTextInput;
  final ValueChanged<int> idChange;

  static MultiBlocProvider provider({
    bool isClassify = false,
    bool isCustomer = false,
    bool isLocation = false,
    required ValueSetter<String> onTextInput,
    required ValueChanged<int> idChange,
  }) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ExpenseCubit>(
          create: (context) => ExpenseCubit(),
        ),
        BlocProvider<BusinessCubit>(
          create: (context) => BusinessCubit(),
        ),
        BlocProvider<CustomersCubit>(
          create: (context) => CustomersCubit(),
        ),
      ],
      child: ListClassifyFunds(
        isClassify: isClassify,
        isCustomer: isCustomer,
        isLocation: isLocation,
        onTextInput: onTextInput,
        idChange: idChange,
      ),
    );
  }

  @override
  State<ListClassifyFunds> createState() => _ListClassifyFundsState();
}

class _ListClassifyFundsState extends State<ListClassifyFunds>
    with AfterLayoutMixin {
  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
    context.read<ExpenseCubit>().getExpenseCategories();
    context.read<BusinessCubit>().getBusinesss();
    context.read<CustomersCubit>().getContacts();
  }

  void _textInputHandler(String text) => widget.onTextInput.call(text);
  void _idChangeHandler(int id) => widget.idChange.call(id);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(10.0),
          topLeft: Radius.circular(10.0),
        ),
      ),
      child: ListView(
        children: <Widget>[
          Container(
            width: 40,
            height: 4,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 211, 211, 211),
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 1,
                child: Text(
                  widget.isClassify == true
                      ? 'variant_n'.tr
                      : widget.isCustomer == true
                          ? 'customers'.tr
                          : 'location'.tr,
                  style: GlobalStyles.titleHeader1(context)
                      .copyWith(color: Colors.black.withOpacity(0.7)),
                ),
              ),
              IconButton(
                onPressed: () => Navigator.of(context).pop(true),
                icon: const Icon(Icons.close),
              ),
            ],
          ),
          widget.isClassify == true
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 40,
                      width: MediaQuery.of(context).size.width - 70,
                      child: TextField(
                        cursorColor: const Color.fromARGB(255, 6, 154, 77),
                        onChanged: (String? value) => context
                            .read<ExpenseCubit>()
                            .searchExpenseCategory(searchText: value ?? ''),
                        decoration: InputDecoration(
                          filled: true, //<-- SEE HERE
                          fillColor: const Color(0xffF5F6F8),
                          contentPadding: const EdgeInsets.only(top: 15),
                          enabledBorder: const OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 1, color: Color(0xffECECEC)),
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 1,
                                color: Color.fromARGB(255, 3, 162, 85)),
                          ),
                          hintText: 'search'.tr,
                          hintStyle: const TextStyle(
                              color: Color(0xff898A8F), fontSize: 13),
                          prefixIcon: const Icon(
                            Icons.search,
                            color: Color.fromARGB(255, 52, 52, 52),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: const Color(0xff0C85EF),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: IconButton(
                        onPressed: () {
                          Navigator.of(context).pop(true);
                          showModalBottomSheet<void>(
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(10.0),
                                  topLeft: Radius.circular(10.0)),
                            ),
                            context: context,
                            builder: (BuildContext context) =>
                                CreateClassify.provider(isClassify: true),
                          );
                        },
                        icon: const Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                )
              : const SizedBox(),
          Container(
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            alignment: Alignment.topLeft,
            child: Text(
              widget.isClassify == true
                      ? 'classifiedList'.tr
                      : widget.isCustomer == true
                          ? 'customerList'.tr
                          : 'locationList'.tr,
              style: const TextStyle(
                  color: Color.fromARGB(255, 137, 134, 134),
                  fontWeight: FontWeight.w500,
                  fontSize: 12),
            ),
          ),
          widget.isClassify == true
              ? BlocBuilder<ExpenseCubit, ExpenseState>(
                  builder: (context, state) {
                    return SizedBox(
                      child: GridView.count(
                        shrinkWrap: true,
                        crossAxisCount: 3,
                        childAspectRatio: 3 / 2,
                        mainAxisSpacing: 4,
                        crossAxisSpacing: 4,
                        children: List.generate(
                          state.data!.categories.length,
                          (index) => ButtonFunds(
                            id: state.data!.categories[index].id!,
                            text: state.data!.categories[index].name!,
                            onTextInput: _textInputHandler,
                            idChange: _idChangeHandler,
                          ),
                        ),
                      ),
                    );
                  },
                )
              : const SizedBox(),
          widget.isCustomer == true
              ? BlocBuilder<CustomersCubit, CustomersState>(
                  builder: (context, state) {
                    return SizedBox(
                      child: GridView.count(
                        shrinkWrap: true,
                        crossAxisCount: 3,
                        childAspectRatio: 3 / 2,
                        mainAxisSpacing: 4,
                        crossAxisSpacing: 4,
                        children: List.generate(
                          state.data!.customers.length,
                          (index) => ButtonFunds(
                            id: state.data!.customers[index].id!,
                            text: state.data!.customers[index].name!,
                            onTextInput: _textInputHandler,
                            idChange: _idChangeHandler,
                          ),
                        ),
                      ),
                    );
                  },
                )
              : const SizedBox(),
          widget.isLocation == true
              ? BlocBuilder<BusinessCubit, BusinessState>(
                  builder: (context, state) {
                    return SizedBox(
                      child: SingleChildScrollView(
                        child: GridView.count(
                          shrinkWrap: true,
                          crossAxisCount: 3,
                          childAspectRatio: 3 / 2,
                          mainAxisSpacing: 4,
                          crossAxisSpacing: 4,
                          children: List.generate(
                            state.data!.businesss.length,
                            (index) => ButtonFunds(
                              id: state.data!.businesss[index].id!,
                              text: state.data!.businesss[index].name!,
                              onTextInput: _textInputHandler,
                              idChange: _idChangeHandler,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}
