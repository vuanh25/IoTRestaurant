// ignore_for_file: prefer_const_constructors, camel_case_types

import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:di4l_pos/common/dimensions.dart';
import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/enums/add_contact_type.dart';
import 'package:di4l_pos/models/contacts/response/contacts_response.dart';
import 'package:di4l_pos/screens/contacts_screen/customers_screen/cubit/customers_cubit.dart';
import 'package:di4l_pos/screens/contacts_screen/sub_screens/add_contact_screen/add_contact_screen.dart';
import 'package:di4l_pos/screens/contacts_screen/sub_screens/detail_screen/legder_book_screen/ledger_book_screen.dart';
import 'package:di4l_pos/screens/contacts_screen/sub_screens/detail_screen/orders_screen/order_screen.dart';
import 'package:di4l_pos/widgets/custom_appbar_with_icon.dart';
import 'package:di4l_pos/widgets/custom_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore: must_be_immutable
class DetailContactScreen extends StatefulWidget {
  /// MARK: - Initials;
  AddContactType? addContactType;
  final ContactModel? contactModel;

  static BlocProvider<CustomersCubit> provider(
    AddContactType? addContactType,
    ContactModel? contactModel,
  ) {
    return BlocProvider(
      create: (context) => CustomersCubit(),
      child: DetailContactScreen(
        addContactType: addContactType,
        contactModel: contactModel,
      ),
    );
  }

  DetailContactScreen({
    Key? key,
    this.addContactType,
    this.contactModel,
  }) : super(key: key);

  @override
  State<DetailContactScreen> createState() => _DetailContactScreenState();
}

class _DetailContactScreenState extends State<DetailContactScreen>
    with AfterLayoutMixin {
  /// MARK: - Initials;

  int tabIndex = 0;
  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
    // context.read<CustomersCubit>().getOrdersById(id: widget.contactModel!.id!);
    // context.read<AddContactCubit>().getTransactionOfContactWithPaymentStatus(
    //     id: widget.contactModel!.id!, timeRange: '');
    // context.read<LedgerCubit>().getLedgers(id: widget.contactModel!.id!);
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: tabIndex,
      child: Scaffold(
          appBar: _buildAppBar(),
          backgroundColor: GlobalColors.bgColor,
          body: TabBarView(children: [
            OrdersCustomer.provider(
              contactModel: widget.contactModel,
            ),
            LedgerBook.provider(
              contactModel: widget.contactModel,
            ),
            // NotesCustomer(),
            AddContactScreen.provider(
              addContactType: widget.addContactType,
              contactModel: widget.contactModel,
            )
          ])),
    );
  }

  CustomAppBarWithIcon _buildAppBar() {
    String? title = '${widget.contactModel!.firstName}'.tr;
    // if (widget.addContactType == AddContactType.SUPPPLIER) {
    //   title = 'detail_supplier'.tr;
    // }
    return CustomAppBarWithIcon(
      title: title,
      actions: [
        _editPage(context: context),
        IconButton(
          onPressed: () {
            final Uri _uri = Uri.parse('Tel://${widget.contactModel!.mobile}');
            launchUrl(_uri);
          },
          icon: const Icon(
            Icons.phone_in_talk_outlined,
            size: Dimensions.ICON_SIZE_SMALL,
          ),
        ),
        IconButton(
          onPressed: () {
            final Uri _uri = Uri.parse('sms:${widget.contactModel!.mobile}');
            launchUrl(_uri);
          },
          icon: const Icon(
            Icons.chat_rounded,
            size: Dimensions.ICON_SIZE_SMALL,
          ),
        ),
      ],
      bottom: TabBar(
          labelColor: GlobalColors.primaryColor,
          unselectedLabelColor: GlobalColors.kGreyTextColor,
          isScrollable: true,
          tabs: [
            CustomTabBar(
              title: 'orders'.tr,
            ),
            CustomTabBar(
              title: 'ledger'.tr,
            ),
            // CustomTabBar(
            //   title: 'notes'.tr,
            // ),
            CustomTabBar(
              title: 'info'.tr,
            ),
          ]),
    );
  }
}

class _editPage extends StatelessWidget {
  const _editPage({
    Key? key,
    required this.context,
  }) : super(key: key);

  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        DefaultTabController.of(context).animateTo(2);
      },
      icon: const Icon(
        Icons.edit,
        size: Dimensions.ICON_SIZE_SMALL,
      ),
    );
  }
}
