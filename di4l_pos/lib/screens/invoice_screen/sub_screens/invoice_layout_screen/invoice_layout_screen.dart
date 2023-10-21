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
import 'package:di4l_pos/screens/location_screen/sub_screen/location_details_screen/cubit/invoice_layout_cubit.dart';
import 'package:di4l_pos/widgets/data/404_widget.dart';
import 'package:di4l_pos/widgets/data/app_loading_widget.dart';
import 'package:di4l_pos/widgets/data/no_data_widget.dart';
import 'package:di4l_pos/widgets/search_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';

class InvoiceLayoutScreen extends StatefulWidget {
  const InvoiceLayoutScreen({Key? key}) : super(key: key);
  @override
  State<InvoiceLayoutScreen> createState() => _InvoiceLayoutScreenState();
}

class _InvoiceLayoutScreenState extends State<InvoiceLayoutScreen>
    with AfterLayoutMixin {
  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
    searchTxt.addListener(() {
      context.read<InvoiceLayoutCubit>().searchInvoiceLayout(searchTxt.text);
    });
  }

  final searchTxt = TextEditingController();
  final scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: ScrollingFabAnimatedCustom(
        height: 48,
        text: 'add_layout'.tr,
        iconData: Icons.person_add_alt_1,
        scrollController: scrollController,
        onPress: () {
          navigator!
              .pushNamed(RouteGenerator.invoiceLayoutDetailsScreen, arguments: {
            'ADD_TYPE': AddType.NEW,
          }).whenComplete(
            () => context.read<InvoiceLayoutCubit>().getLayoutsList(),
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
                duration: const Duration(seconds: 1),
                height: state.data!.isSearching ? 50 : 0,
                color: Colors.white,
                alignment: Alignment.center,
                curve: Curves.fastOutSlowIn,
                child: SearchWidget(
                  controller: searchTxt,
                  hintText: 'search_layout'.tr,
                ),
              );
            },
          ),
          BlocBuilder<InvoiceLayoutCubit, InvoiceLayoutState>(
            builder: (context, state) {
              switch (state.data!.status) {
                case StatusType.loading:
                  return const Expanded(
                    child: AppLoadingWidget(
                      text: 'Loading...',
                    ),
                  );
                case StatusType.loaded:
                  final invoiceLayouts = state.data!.invoices;
                  return invoiceLayouts.isNotEmpty
                      ? SingleChildScrollView(
                          child: ListView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: invoiceLayouts.length,
                            itemBuilder: (context, index) {
                              final layout = invoiceLayouts[index];
                              String locationNames = '';
                              if (layout.locations != null &&
                                  layout.locations!.isNotEmpty) {
                                for (var location in layout.locations!) {
                                  locationNames += '${location.name}, ';
                                }
                                locationNames = locationNames.substring(
                                  0,
                                  locationNames.length - 2,
                                );
                              }
                              return Card(
                                color: Colors.white,
                                elevation: 1,
                                child: Slidable(
                                  direction: Axis.horizontal,
                                  endActionPane: ActionPane(
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
                                                .invoiceLayoutDetailsScreen,
                                            arguments: {
                                              'ADD_TYPE': AddType.UPDATE,
                                              'INVOICE_LAYOUT': layout,
                                            },
                                          ).whenComplete(
                                            () => context
                                                .read<InvoiceLayoutCubit>()
                                                .getLayoutsList(),
                                          );
                                        },
                                      ),
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
                                        Flexible(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                layout.name ?? '',
                                                style:
                                                    GlobalStyles.titleRegular(
                                                  context,
                                                ).copyWith(fontSize: 16),
                                              ),
                                              locationNames.trim().isNotEmpty
                                                  ? Text(
                                                      locationNames,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                    )
                                                  : const SizedBox.shrink(),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    onTap: () {
                                      navigator!.pushNamed(
                                        RouteGenerator
                                            .invoiceLayoutDetailsScreen,
                                        arguments: {
                                          'ADD_TYPE': AddType.UPDATE,
                                          'INVOICE_LAYOUT': layout,
                                        },
                                      ).whenComplete(
                                        () => context
                                            .read<InvoiceLayoutCubit>()
                                            .getLayoutsList(),
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
