import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:di4l_pos/common/global_styles.dart';
import 'package:di4l_pos/screens/contacts_screen/customers_screen/cubit/customers_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class WaiterPicker extends StatefulWidget {
  const WaiterPicker({Key? key}) : super(key: key);
  static BlocProvider<CustomersCubit> provider() {
    return BlocProvider(
      create: (context) => CustomersCubit(),
      child: const WaiterPicker(),
    );
  }

  @override
  State<WaiterPicker> createState() => _WaiterPickerState();
}

class _WaiterPickerState extends State<WaiterPicker> with AfterLayoutMixin {
  final scrollController = ScrollController();
  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
    // context.read<CustomersCubit>().getContacts();
    // scrollController.addListener(() {
    //   if (scrollController.position.atEdge &&
    //       scrollController.position.pixels != 0) {
    //     context.read<CustomersCubit>().getContacts();
    //   }
    // });
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CustomersCubit, CustomersState>(
      builder: (context, state) {
        final customersList = state.data!.customers;
        return Container(
          height: MediaQuery.of(context).size.height * 0.8,
          padding: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
          ),
          child: Column(
            children: [
              Text(
                'waiter'.tr,
                style: GlobalStyles.titleHeader(context),
              ),
              Expanded(
                child: ListView.separated(
                  controller: scrollController,
                  itemBuilder: (context, index) {
                    final customer = customersList[index];
                    return ListTile(
                      title: Text(
                        customer.name ?? '',
                        style: GlobalStyles.robotoRegular(context),
                      ),
                      onTap: () {
                        navigator!.pop(customer);
                      },
                    );
                  },
                  separatorBuilder: (context, index) => const Divider(),
                  itemCount: customersList.length,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
