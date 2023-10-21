import 'dart:async';
import 'package:after_layout/after_layout.dart';
import 'package:di4l_pos/enums/add_type.dart';
import 'package:di4l_pos/screens/unit_screen/cubit/unit_cubit.dart';
import 'package:di4l_pos/screens/unit_screen/sub_screens/add_unit_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:di4l_pos/screens/contacts_screen/widgets/scroll_animated_button_widget.dart';
import 'package:get/get.dart';

import '../../common/dimensions.dart';
import '../../common/global_colors.dart';
import '../../common/global_styles.dart';
import '../../enums/status_type.dart';
import '../../widgets/data/404_widget.dart';
import '../../widgets/data/app_loading_widget.dart';
import '../../widgets/data/no_data_widget.dart';

class UnitScreen extends StatefulWidget {
  /// MARK: Initials;
  static BlocProvider<UnitCubit> provider({TextEditingController? txtSearch}) {
    return BlocProvider(
      create: (context) => UnitCubit(),
      child: UnitScreen(txtSearch),
    );
  }

  final TextEditingController? _txtSearch;
  UnitScreen(this._txtSearch, {Key? key}) : super(key: key);

  @override
  State<UnitScreen> createState() => _UnitScreenState();
}

final GlobalKey<ScaffoldState> _globalKey = GlobalKey();

class _UnitScreenState extends State<UnitScreen> with AfterLayoutMixin {
  ScrollController ctr = ScrollController();

  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
    context.read<UnitCubit>().getUnits();
    widget._txtSearch!.addListener(() {
      context.read<UnitCubit>().searchUnit(searchText: widget._txtSearch!.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      backgroundColor: GlobalColors.bgColor,
      body: BlocBuilder<UnitCubit, UnitState>(
        buildWhen: (previous, current) =>
            previous.data!.status != current.data!.status ||
            previous.data!.units != current.data!.units,
        builder: (context, state) {
          final categories = state.data?.units ?? [];
          switch (state.data!.status) {
            case StatusType.loading:
              return const AppLoadingWidget(
                widget: null,
                text: 'Loading...',
              );
            case StatusType.loaded:
              return Stack(
                children: [
                  categories.isNotEmpty
                      ? ListView(
                          children: categories
                              .map((e) => Card(
                                    key: Key(categories.indexOf(e).toString()),
                                    color: Colors.white,
                                    elevation: 1,
                                    child: Slidable(
                                      direction: Axis.horizontal,
                                      key: const ValueKey(0),
                                      endActionPane: ActionPane(
                                        motion: const ScrollMotion(),
                                        children: [
                                          SlidableAction(
                                            backgroundColor:
                                                GlobalColors.blackColor,
                                            foregroundColor: Colors.white,
                                            icon: Icons.edit,
                                            label: 'edit'.tr,
                                            onPressed: (BuildContext context) {
                                              showModalBottomSheet(
                                                shape:
                                                    const RoundedRectangleBorder(
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
                                                  return AddUnitScreen.provider(
                                                      addUnitType:
                                                          AddType.UPDATE,
                                                      unit: e,
                                                      globalKey: _globalKey);
                                                },
                                              );
                                            },
                                          ),
                                          SlidableAction(
                                            backgroundColor:
                                                GlobalColors.redColor,
                                            foregroundColor: Colors.white,
                                            icon: Icons.add,
                                            label: 'delete'.tr,
                                            onPressed: (BuildContext context) {
                                              _globalKey.currentContext!
                                                  .read<UnitCubit>()
                                                  .deleteUnit(id: e.id!);
                                            },
                                          ),
                                        ],
                                      ),
                                      child: ListTile(
                                        title: Row(
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: Colors.grey[300],
                                                  borderRadius: const BorderRadius
                                                          .all(
                                                      Radius.circular(
                                                          10.0) //                 <--- border radius here
                                                      ),
                                                ),
                                                height: Get.height * 0.06,
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Image.asset(
                                                    "assets/images/food.jpg",
                                                    color: Colors.grey,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            const SizedBox(
                                              width:
                                                  Dimensions.PADDING_SIZE_SMALL,
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  '${e.actualName}',
                                                  style: GlobalStyles
                                                      .titilliumSemiBold(
                                                          context),
                                                  textScaleFactor: 1.1,
                                                ),
                                                const SizedBox(
                                                  height: Dimensions
                                                      .PADDING_SIZE_EXTRA_EXTRA_SMALL,
                                                ),
                                                Text(
                                                  '${'short_name'.tr}: ${e.shortName}',
                                                  style: GlobalStyles
                                                      .titilliumItalic(context),
                                                  textScaleFactor: 1,
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        onTap: () {
                                          showModalBottomSheet(
                                            shape: const RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.vertical(
                                                        top: Radius.circular(
                                                            15.0))),
                                            context: context,
                                            isScrollControlled: true,
                                            isDismissible: true,
                                            builder: (BuildContext context) {
                                              return AddUnitScreen.provider(
                                                  addUnitType: AddType.UPDATE,
                                                  unit: e,
                                                  globalKey: _globalKey);
                                            },
                                          );
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
                        width: 160,
                        height: 48,
                        text: "add_unit".tr,
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
                              return AddUnitScreen.provider(
                                  addUnitType: AddType.NEW,
                                  globalKey: _globalKey);
                            },
                          );
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
