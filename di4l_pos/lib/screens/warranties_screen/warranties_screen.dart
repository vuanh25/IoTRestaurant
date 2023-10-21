import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:di4l_pos/enums/add_type.dart';
import 'package:di4l_pos/enums/status_type.dart';
import 'package:di4l_pos/screens/warranties_screen/cubit/warranties_cubit.dart';
import 'package:di4l_pos/screens/warranties_screen/sub_screen/add_warranty_screen.dart';
import 'package:di4l_pos/widgets/data/app_loading_widget.dart';
import 'package:di4l_pos/widgets/data/404_widget.dart';
import 'package:di4l_pos/widgets/data/no_data_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:di4l_pos/screens/contacts_screen/widgets/scroll_animated_button_widget.dart';
import 'package:get/get.dart';

import '../../common/dimensions.dart';
import '../../common/global_colors.dart';
import '../../common/global_styles.dart';

class WarrantiesScreen extends StatefulWidget {
  /// MARK: - Initials;
  static BlocProvider<WarrantiesCubit> provider(
      {TextEditingController? txtSearch}) {
    return BlocProvider(
      create: (context) => WarrantiesCubit(),
      child: WarrantiesScreen(txtSearch),
    );
  }

  WarrantiesScreen(this._txtSearch, {Key? key}) : super(key: key);
  final TextEditingController? _txtSearch;

  @override
  State<WarrantiesScreen> createState() => _warrantiesScreenState();
}

class _warrantiesScreenState extends State<WarrantiesScreen>
    with AfterLayoutMixin {
  /// MARK: - Initials;
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey();
  ScrollController ctr = ScrollController();

  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
    WidgetsBinding.instance.endOfFrame.then((value) {
      context.read<WarrantiesCubit>().getWarranties();
      widget._txtSearch!.addListener(() {
        context
            .read<WarrantiesCubit>()
            .searchWarranty(searchText: widget._txtSearch!.text);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      body: BlocBuilder<WarrantiesCubit, WarrantiesState>(
        buildWhen: (previous, current) =>
            previous.data!.status != current.data!.status,
        builder: (context, state) {
          final _warranties = state.data?.warranties ?? [];
          switch (state.data!.status) {
            case StatusType.loading:
              return const AppLoadingWidget(
                widget: null,
                text: 'Loading...',
              );
            case StatusType.loaded:
              return Stack(
                      children: [
                        state.data!.warranties.isNotEmpty
                            ? ListView(
                                children: state.data!.warranties
                                    .map((e) => Card(
                                          key: Key(state.data!.warranties
                                              .indexOf(e)
                                              .toString()),
                                          color: Colors.white,
                                          elevation: 1,
                                          child: Slidable(
                                            direction: Axis.horizontal,
                                            key: const ValueKey(0),
                                            endActionPane: ActionPane(
                                              motion: const ScrollMotion(),
                                              children: [
                                                SlidableAction(
                                                  flex: 1,
                                                  backgroundColor:
                                                      GlobalColors.appBar2,
                                                  foregroundColor: Colors.white,
                                                  icon: Icons.edit,
                                                  label: 'edit'.tr,
                                                  onPressed:
                                                      (BuildContext context) {
                                                    showModalBottomSheet(
                                                      shape: const RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius.vertical(
                                                                  top: Radius
                                                                      .circular(
                                                                          15.0))),
                                                      context: context,
                                                      isScrollControlled: true,
                                                      isDismissible: true,
                                                      builder: (BuildContext
                                                          context) {
                                                        return AddWarrantyScreen
                                                            .provider(
                                                          addWarrantyType:
                                                              AddType.UPDATE,
                                                          warranty: e,
                                                        );
                                                      },
                                                    ).then((value) => _globalKey
                                                        .currentContext!
                                                        .read<WarrantiesCubit>()
                                                        .getWarranties());
                                                  },
                                                ),
                                              ],
                                            ),
                                            child: ListTile(
                                              title: Row(
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        color: Colors.grey[300],
                                                        borderRadius:
                                                            const BorderRadius
                                                                    .all(
                                                                Radius.circular(
                                                                    10.0) //                 <--- border radius here
                                                                ),
                                                      ),
                                                      height: Get.height * 0.06,
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(8.0),
                                                        child: Image.asset(
                                                          "assets/images/food.jpg",
                                                          color: Colors.grey,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: Dimensions
                                                        .PADDING_SIZE_SMALL,
                                                  ),
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        '${e.name}',
                                                        style: GlobalStyles
                                                            .titilliumSemiBold(
                                                                context),
                                                        textScaleFactor: 1.1,
                                                      ),
                                                      const SizedBox(
                                                        height: Dimensions
                                                            .PADDING_SIZE_EXTRA_EXTRA_SMALL,
                                                      ),
                                                      SizedBox(
                                                        width: Get.width * 0.68,
                                                        child: Text(
                                                          '${'description'.tr}: ${e.description}',
                                                          style: GlobalStyles
                                                              .titilliumRegular(
                                                                  context),
                                                          textScaleFactor: 1,
                                                        ),
                                                      ),
                                                      const SizedBox(
                                                        height: Dimensions
                                                            .PADDING_SIZE_EXTRA_EXTRA_SMALL,
                                                      ),
                                                      const SizedBox(
                                                        height: Dimensions
                                                            .PADDING_SIZE_EXTRA_EXTRA_SMALL,
                                                      ),
                                                      SizedBox(
                                                        width: Get.width * 0.68,
                                                        child: Text(
                                                          '${'duration'.tr}: ${e.duration}',
                                                          style: GlobalStyles
                                                              .titilliumRegular(
                                                                  context),
                                                          textScaleFactor: 1,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                              onTap: () {
                                                {
                                                  showModalBottomSheet(
                                                    shape: const RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius.vertical(
                                                                top: Radius
                                                                    .circular(
                                                                        15.0))),
                                                    context: context,
                                                    isScrollControlled: true,
                                                    isDismissible: true,
                                                    builder:
                                                        (BuildContext context) {
                                                      return AddWarrantyScreen
                                                          .provider(
                                                        addWarrantyType:
                                                            AddType.UPDATE,
                                                        warranty: e,
                                                      );
                                                    },
                                                  ).then((value) => _globalKey
                                                      .currentContext!
                                                      .read<WarrantiesCubit>()
                                                      .getWarranties());
                                                }
                                                ;
                                              },
                                            ),
                                          ),
                                        ))
                                    .toList(),
                              )
                            : const NoDataWidget(),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Container(
                            alignment: Alignment.bottomRight,
                            child: ScrollingFabAnimatedCustom(
                              width: 180,
                              height: 48,
                              text: "add_warranty".tr,
                              iconData: Icons.add,
                              scrollController: ctr,
                              onPress: () {
                                showModalBottomSheet(
                                  shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.vertical(
                                          top: Radius.circular(15.0))),
                                  context: context,
                                  isScrollControlled: true,
                                  isDismissible: true,
                                  builder: (BuildContext context) {
                                    return AddWarrantyScreen.provider(
                                      addWarrantyType: AddType.NEW,
                                    );
                                  },
                                ).then((value) => _globalKey.currentContext!
                                    .read<WarrantiesCubit>()
                                    .getWarranties());
                              },
                            ),
                          ),
                        ),
                      ],
                    );
            case StatusType.error:
              return const Error404Widget();
            default:
              return const SizedBox.shrink();
          }
        },
      ),
    );
  }
}
