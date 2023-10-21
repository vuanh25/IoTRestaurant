import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:di4l_pos/common/dimensions.dart';
import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/common/global_styles.dart';
import 'package:di4l_pos/enums/add_type.dart';
import 'package:di4l_pos/enums/status_type.dart';
import 'package:di4l_pos/widgets/custom_appbar.dart';
import 'package:di4l_pos/widgets/data/404_widget.dart';
import 'package:di4l_pos/widgets/data/app_loading_widget.dart';
import 'package:di4l_pos/widgets/search_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:di4l_pos/screens/printer_screen/cubit/printer_cubit.dart';
import 'package:di4l_pos/widgets/data/no_data_widget.dart';
import 'package:di4l_pos/route_generator.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:di4l_pos/screens/contacts_screen/widgets/scroll_animated_button_widget.dart';
import 'package:get/get.dart';

class PrinterScreen extends StatefulWidget {
  static BlocProvider<PrinterCubit> provider() {
    return BlocProvider(
      create: (context) => PrinterCubit(),
      child: const PrinterScreen(),
    );
  }

  const PrinterScreen({Key? key}) : super(key: key);

  @override
  State<PrinterScreen> createState() => _PrinterScreenState();
}

class _PrinterScreenState extends State<PrinterScreen> with AfterLayoutMixin {
  final GlobalKey<ScaffoldState> globalKey = GlobalKey();
  ScrollController ctr = ScrollController();
  TextEditingController searchController = TextEditingController();
  bool isSearching = false;

  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
    globalKey.currentContext!.read<PrinterCubit>().getPrinters();
    searchController.addListener(() {
      globalKey.currentContext!
          .read<PrinterCubit>()
          .searchPrinters(searchText: searchController.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: globalKey,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: BlocBuilder<PrinterCubit, PrinterState>(
          builder: (context, state) => CustomAppBar(
            backgroundColor: Colors.white,
            textColor: GlobalColors.getTextTitle(context),
            title: 'manage_printer'.tr,
            actions: [
              IconButton(
                onPressed: () {
                  isSearching = !isSearching;
                  globalKey.currentContext!
                      .read<PrinterCubit>()
                      .isSearching(isSearching);
                },
                icon: const Icon(
                  Icons.search,
                ),
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            //Search bar
            BlocBuilder<PrinterCubit, PrinterState>(
              buildWhen: (previous, current) =>
                  previous.data!.status != current.data!.status ||
                  previous.data!.isSearching != current.data!.isSearching,
              builder: (context, state) {
                return AnimatedContainer(
                  height: !state.data!.isSearching ? 0 : 50,
                  color: Colors.white,
                  alignment: Alignment.center,
                  duration: const Duration(seconds: 1),
                  curve: Curves.fastOutSlowIn,
                  child: SearchWidget(
                    controller: searchController,
                    hintText: 'search_printer'.tr,
                  ),
                );
              },
            ),
            Expanded(
              child: Stack(
                children: [
                  Column(
                    children: [
                      Expanded(
                        child: BlocBuilder<PrinterCubit, PrinterState>(
                          buildWhen: (previous, current) =>
                              previous.data!.status != current.data!.status ||
                              previous.data!.printers !=
                                  current.data!.printers ||
                              previous.data!.isSearching !=
                                  current.data!.isSearching,
                          builder: (context, state) {
                            final printers = state.data?.printers ?? [];
                            switch (state.data!.status) {
                              case StatusType.loading:
                                return const AppLoadingWidget(
                                  widget: null,
                                  text: 'Loading...',
                                );
                              case StatusType.loaded:
                                return printers.isNotEmpty
                                    ? ListView(
                                        children: printers
                                            .map((printer) => Card(
                                                  key: Key(printers
                                                      .indexOf(printer)
                                                      .toString()),
                                                  color: Colors.white,
                                                  elevation: 1,
                                                  child: Slidable(
                                                    direction: Axis.horizontal,
                                                    endActionPane: ActionPane(
                                                      motion:
                                                          const ScrollMotion(),
                                                      children: [
                                                        SlidableAction(
                                                            backgroundColor:
                                                                GlobalColors
                                                                    .appBar4,
                                                            foregroundColor:
                                                                Colors.white,
                                                            icon: Icons.edit,
                                                            label: 'edit'.tr,
                                                            onPressed:
                                                                (BuildContext
                                                                    context) {
                                                              navigator!.pushNamed(
                                                                  RouteGenerator
                                                                      .addPrinterScreen,
                                                                  arguments: {
                                                                    "ADD_TYPE":
                                                                        AddType
                                                                            .UPDATE,
                                                                    "PRINTER":
                                                                        printer
                                                                  });
                                                            }),
                                                        SlidableAction(
                                                          backgroundColor:
                                                              GlobalColors
                                                                  .errorColor,
                                                          foregroundColor:
                                                              Colors.white,
                                                          icon: Icons.delete,
                                                          label: 'delete'.tr,
                                                          onPressed:
                                                              (BuildContext
                                                                  context) {
                                                            globalKey
                                                                .currentContext!
                                                                .read<
                                                                    PrinterCubit>()
                                                                .deletePrinter(
                                                                    id: printer
                                                                        .id!
                                                                        .toInt())
                                                                .then((value) => globalKey
                                                                    .currentContext!
                                                                    .read<
                                                                        PrinterCubit>()
                                                                    .getPrinters());
                                                            ;
                                                          },
                                                        ),
                                                      ],
                                                    ),
                                                    child: ListTile(
                                                      horizontalTitleGap: 0,
                                                      leading: const Icon(
                                                        Icons.print,
                                                        color: GlobalColors
                                                            .greenWhiteColor,
                                                      ),
                                                      title: Row(
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .symmetric(
                                                                    vertical:
                                                                        8.0),
                                                            child: SizedBox(
                                                              width: Get.width *
                                                                  0.35,
                                                              // height: 40,
                                                              child: Text(
                                                                '${printer.name}',
                                                                style: GlobalStyles
                                                                    .titleRegular(
                                                                        context),
                                                                textScaleFactor:
                                                                    1.1,
                                                              ),
                                                            ),
                                                          ),
                                                          Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                'IP: ${printer.ipAddress}',
                                                                style: GlobalStyles
                                                                    .titilliumRegular(
                                                                        context),
                                                              ),
                                                              const SizedBox(
                                                                height: Dimensions
                                                                    .PADDING_SIZE_EXTRA_EXTRA_SMALL,
                                                              ),
                                                              SizedBox(
                                                                child: Text(
                                                                  'Loại kết nối: ${printer.connectionType}',
                                                                  style: GlobalStyles
                                                                      .titilliumRegular(
                                                                          context),
                                                                  textScaleFactor:
                                                                      1,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ))
                                            .toList(),
                                      )
                                    : const NoDataWidget();
                              case StatusType.error:
                                return const Error404Widget();
                              default:
                                return const SizedBox.shrink();
                            }
                          },
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      alignment: Alignment.bottomRight,
                      child: ScrollingFabAnimatedCustom(
                          width: 180,
                          height: 48,
                          text: "add_printer".tr,
                          iconData: Icons.add,
                          scrollController: ctr,
                          onPress: () {
                          navigator!.pushNamed(
                            RouteGenerator.addPrinterScreen,
                            arguments: {"ADD_TYPE": AddType.NEW},
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
