import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:di4l_pos/enums/status_type.dart';
import 'package:di4l_pos/models/contacts/response/contacts_response.dart';
import 'package:di4l_pos/screens/contacts_screen/suppliers_screen/cubit/suppliers_cubit.dart';
import 'package:di4l_pos/screens/contacts_screen/widgets/contact_widget.dart';
import 'package:di4l_pos/widgets/data/404_widget.dart';
import 'package:di4l_pos/widgets/data/app_loading_widget.dart';
import 'package:di4l_pos/widgets/data/no_data_widget.dart';
import 'package:di4l_pos/widgets/search_widget_contact.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

typedef void CategoryCallback(ContactModel? selectedSupplier);

class SelectSupplierScreen extends StatefulWidget {
  // static BlocProvider<SuppliersCubit> provider() {
  //   return BlocProvider(
  //     create: (context) => SuppliersCubit(),
  //     child: const SelectSupplierScreen(),
  //   );
  // }

  const SelectSupplierScreen({Key? key, required this.onTap}) : super(key: key);

  final CategoryCallback onTap;
  @override
  State<SelectSupplierScreen> createState() => _SelectSupplierScreenState();
}

class _SelectSupplierScreenState extends State<SelectSupplierScreen>
    with AfterLayoutMixin {
  final ScrollController _scrollController = ScrollController();
  final TextEditingController _txtSearch = TextEditingController();

  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
    context.read<SuppliersCubit>().getContacts();
  }

  void setupScrollController(context) {
    _scrollController.addListener(() {
      if (_scrollController.position.atEdge) {
        if (_scrollController.position.pixels != 0) {
          BlocProvider.of<SuppliersCubit>(context).getContacts();
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height * 0.9,
      width: Get.width,
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      child: Column(mainAxisSize: MainAxisSize.max, children: [
        ListTile(
            title: Center(child: Text('suppliers'.tr)),
            trailing: IconButton(
              icon: const Icon(
                Icons.cancel,
              ),
              onPressed: () {
                navigator!.pop(context);
              },
            )),
        SearchWidgetContact(
            controller: _txtSearch,
            hintText: 'search'.tr,
            onChange: (String? value) => context
                .read<SuppliersCubit>()
                .searchSupplier(searchText: value?.trim() ?? '')),
        const SizedBox(
          height: 10,
        ),
        BlocBuilder<SuppliersCubit, SuppliersState>(builder: (context, state) {
          final _suppliers = state.data?.suppliers ?? [];

          return _suppliers.isNotEmpty
              ? Expanded(
                  child: ListView.separated(
                    controller: _scrollController,
                    itemBuilder: (context, index) {
                      if (index < _suppliers.length) {
                        return ContactWidget(
                          index: index + 1,
                          contact: _suppliers.elementAt(index),
                          onPressed: (ContactModel? contactModel) {
                            widget.onTap(contactModel);

                            Navigator.pop(context);
                          },
                        );
                      } else {
                        Future.delayed(const Duration(seconds: 5), () {
                          _scrollController.jumpTo(
                              _scrollController.position.maxScrollExtent);
                          // isLoading = true;
                        });
                      }
                    },
                    separatorBuilder: (context, index) =>
                        const SizedBox.shrink(),
                    itemCount: _suppliers.length,
                  ),
                )
              : (state.data!.status == StatusType.loading
                  ? const AppLoadingWidget(
                      text: 'Loading...',
                      widget: null,
                    )
                  : const NoDataWidget());
          ;
        }),
      ]),
    );
  }
}
