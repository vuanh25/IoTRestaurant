import 'dart:async';
import 'package:after_layout/after_layout.dart';
import 'package:di4l_pos/common/dimensions.dart';
import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/common/global_styles.dart';
import 'package:di4l_pos/enums/add_type.dart';
import 'package:di4l_pos/enums/status_type.dart';
import 'package:di4l_pos/route_generator.dart';
import 'package:di4l_pos/screens/contacts_screen/widgets/scroll_animated_button_widget.dart';
import 'package:di4l_pos/screens/location_screen/cubit/invoice_cubit.dart';
import 'package:di4l_pos/widgets/data/404_widget.dart';
import 'package:di4l_pos/widgets/data/app_loading_widget.dart';
import 'package:di4l_pos/widgets/data/no_data_widget.dart';
import 'package:di4l_pos/widgets/search_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';

class InvoiceSchemaScreen extends StatefulWidget {
  const InvoiceSchemaScreen({Key? key}) : super(key: key);

  @override
  State<InvoiceSchemaScreen> createState() => _InvoiceSchemaScreenState();
}

class _InvoiceSchemaScreenState extends State<InvoiceSchemaScreen>
    with AfterLayoutMixin {
  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
    searchTxt.addListener(() {
      context.read<InvoiceCubit>().searchInvoice(searchTxt.text);
    });
  }

  final searchTxt = TextEditingController();
  final scrollController = ScrollController();
  @override
  void dispose() {
    searchTxt.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: ScrollingFabAnimatedCustom(
        height: 48,
        text: 'add_schema'.tr,
        iconData: Icons.person_add_alt_1,
        scrollController: scrollController,
        onPress: () {
          navigator!
              .pushNamed(RouteGenerator.invoiceSchemaDetailsScreen, arguments: {
            'ADD_TYPE': AddType.NEW,
          }).whenComplete(
            () => context.read<InvoiceCubit>().getSchemasList(),
          );
        },
      ),
      body: Column(
        children: [
          BlocBuilder<InvoiceCubit, InvoiceState>(
            buildWhen: (previous, current) =>
                previous.data?.isSearching != current.data?.isSearching,
            builder: (context, state) {
              return AnimatedContainer(
                duration: const Duration(seconds: 2),
                height: state.data!.isSearching ? 50 : 0,
                color: Colors.white,
                alignment: Alignment.center,
                curve: Curves.fastOutSlowIn,
                child: SearchWidget(
                  controller: searchTxt,
                  hintText: 'search_schema'.tr,
                ),
              );
            },
          ),
          BlocBuilder<InvoiceCubit, InvoiceState>(
            builder: (context, state) {
              switch (state.data!.status) {
                case StatusType.loading:
                  return const Expanded(
                    child: AppLoadingWidget(
                      text: 'Loading...',
                    ),
                  );
                case StatusType.loaded:
                  final invoiceSchemas = state.data!.invoices;
                  return invoiceSchemas.isNotEmpty
                      ? SingleChildScrollView(
                          child: ListView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: invoiceSchemas.length,
                            itemBuilder: (context, index) {
                              final scheme = invoiceSchemas[index];
                              return Card(
                                color: Colors.white,
                                elevation: 1,
                                child: Slidable(
                                  direction: Axis.horizontal,
                                  endActionPane: ActionPane(
                                    extentRatio: 0.75,
                                    motion: const ScrollMotion(),
                                    children: [
                                      SlidableAction(
                                        backgroundColor: GlobalColors.appBar2,
                                        foregroundColor: Colors.white,
                                        icon: Icons.edit,
                                        label: 'edit'.tr,
                                        onPressed: (context) {
                                          navigator!.pushNamed(
                                            RouteGenerator
                                                .invoiceSchemaDetailsScreen,
                                            arguments: {
                                              'ADD_TYPE': AddType.UPDATE,
                                              'INVOICE_SCHEMA': scheme,
                                            },
                                          ).whenComplete(
                                            () => context
                                                .read<InvoiceCubit>()
                                                .getSchemasList(),
                                          );
                                        },
                                      ),
                                      scheme.isDefault != 1
                                          ? SlidableAction(
                                              backgroundColor:
                                                  GlobalColors.redColor,
                                              foregroundColor: Colors.white,
                                              icon: Icons.delete,
                                              label: 'delete'.tr,
                                              onPressed: (context) {},
                                            )
                                          : const SizedBox.shrink(),
                                      scheme.isDefault != 1
                                          ? SlidableAction(
                                              backgroundColor:
                                                  GlobalColors.primaryColor,
                                              foregroundColor: Colors.white,
                                              icon: Icons.edit,
                                              label: 'mk_default'.tr,
                                              onPressed: (context) {},
                                            )
                                          : const SizedBox.shrink(),
                                    ],
                                  ),
                                  child: ListTile(
                                    title: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        const Padding(
                                          padding: EdgeInsets.all(8),
                                          child: Icon(
                                            CupertinoIcons.news_solid,
                                            size: 30,
                                            color: GlobalColors.primaryColor,
                                          ),
                                        ),
                                        const SizedBox(
                                          width: Dimensions.PADDING_SIZE_SMALL,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              scheme.name ?? '',
                                              style: GlobalStyles.titleRegular(
                                                context,
                                              ).copyWith(fontSize: 16),
                                            ),
                                            Text(
                                              '${'invoice_count'.tr}: ${scheme.invoiceCount ?? 0}',
                                              style: const TextStyle(
                                                fontSize: 14,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    onTap: () {
                                      navigator!.pushNamed(
                                        RouteGenerator
                                            .invoiceSchemaDetailsScreen,
                                        arguments: {
                                          'ADD_TYPE': AddType.UPDATE,
                                          'INVOICE_SCHEMA': scheme,
                                        },
                                      ).whenComplete(
                                        () => context
                                            .read<InvoiceCubit>()
                                            .getSchemasList(),
                                      );
                                    },
                                  ),
                                ),
                              );
                            },
                          ),
                        )
                      : const NoDataWidget();
                case StatusType.error:
                  return const Error404Widget();
                default:
                  return const SizedBox.shrink();
              }
            },
          ),
        ],
      ),
    );
  }
}
