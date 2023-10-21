// ignore_for_file: file_names, no_leading_underscores_for_local_identifiers

import 'package:di4l_pos/enums/add_contact_type.dart';
import 'package:di4l_pos/enums/status_type.dart';
import 'package:di4l_pos/models/contacts/response/contacts_response.dart';
import 'package:di4l_pos/route_generator.dart';
import 'package:di4l_pos/screens/contacts_screen/customers_screen/cubit/customers_cubit.dart';
import 'package:di4l_pos/screens/contacts_screen/widgets/contact_widget.dart';
import 'package:di4l_pos/widgets/data/404_widget.dart';
import 'package:di4l_pos/widgets/data/app_loading_widget.dart';
import 'package:di4l_pos/widgets/data/no_data_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/route_manager.dart';

class PayableCustomers extends StatelessWidget {
  const PayableCustomers({
    Key? key,
    required ScrollController scrollController,
    required GlobalKey<ScaffoldState> globalKey,
  })  : _scrollController = scrollController,
        _globalKey = globalKey,
        super(key: key);

  final ScrollController _scrollController;
  final GlobalKey<ScaffoldState> _globalKey;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: BlocBuilder<CustomersCubit, CustomersState>(
          buildWhen: (previous, current) =>
              previous.data!.status != current.data!.status,
          builder: (context, state) {
            final _customers = state.data?.customers ?? [];
            switch (state.data!.status) {
              case StatusType.loading:
                return const AppLoadingWidget(
                  widget: null,
                  text: 'Loading...',
                );
              case StatusType.loaded:
                return _customers.isNotEmpty
                    ? ListView.separated(
                        controller: _scrollController,
                        itemBuilder: (context, index) => ContactWidget(
                          index: index + 1,
                          contact: _customers.elementAt(index),
                          onPressed: (ContactModel? contact) => navigator!
                              .pushNamed(
                            RouteGenerator.detailContactScreen,
                            arguments: {
                              'ADD_CONTACT_TYPE': AddContactType.CUSTOMER,
                              'CONTACT_MODEL': contact,
                            },
                          ).whenComplete(() => _globalKey.currentContext!
                                  .read<CustomersCubit>()
                                  .getContacts()),
                          onDelete: () => _globalKey.currentContext!
                              .read<CustomersCubit>()
                              .delete(_customers.elementAt(index).id!),
                        ),
                        separatorBuilder: (context, index) =>
                            const SizedBox.shrink(),
                        itemCount: _customers.length,
                      )
                    : const NoDataWidget();
              case StatusType.error:
                return const Error404Widget();
              default:
                return const SizedBox.shrink();
            }
          }),
    );
  }
}
