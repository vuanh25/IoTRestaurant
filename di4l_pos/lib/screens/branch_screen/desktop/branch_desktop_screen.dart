import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:di4l_pos/enums/add_type.dart';
import 'package:di4l_pos/enums/status_type.dart';
import 'package:di4l_pos/screens/branch_screen/add_branch_screen/add_branch_screen.dart';
import 'package:di4l_pos/screens/branch_screen/cubit/branch_cubit.dart';
import 'package:di4l_pos/widgets/data/app_loading_widget.dart';
import 'package:di4l_pos/widgets/data/404_widget.dart';
import 'package:di4l_pos/widgets/data/no_data_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';

import '../../../common/dimensions.dart';
import '../../../common/global_colors.dart';
import '../../../common/global_styles.dart';

class BranchDesktopScreen extends StatefulWidget {
  /// MARK: - Initials;
  static BlocProvider<BranchCubit> provider(
      {TextEditingController? txtSearch}) {
    return BlocProvider(
      create: (context) => BranchCubit(),
      child: BranchDesktopScreen(txtSearch),
    );
  }

  const BranchDesktopScreen(this._txtSearch, {Key? key}) : super(key: key);
  final TextEditingController? _txtSearch;

  @override
  State<BranchDesktopScreen> createState() => _BranchDesktopState();
}

class _BranchDesktopState extends State<BranchDesktopScreen>
    with AfterLayoutMixin {
  /// MARK: - Initials;
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey();
  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
    WidgetsBinding.instance.endOfFrame.then(
      (_) {
        context.read<BranchCubit>().getBranch();
        widget._txtSearch!.addListener(
          () {
            context
                .read<BranchCubit>()
                .searchBranch(searchText: widget._txtSearch!.text);
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      body: BlocBuilder<BranchCubit, BranchState>(
        buildWhen: (previous, current) =>
            previous.data!.status != current.data!.status,
        builder: (context, state) {
          switch (state.data!.status) {
            case StatusType.loading:
              return const AppLoadingWidget(
                widget: null,
                text: 'Loading...',
              );
            case StatusType.loaded:
              return state.data!.branches.isNotEmpty
                  ? Stack(
                      children: [
                        state.data!.branches.isNotEmpty
                            ? ListView(
                                children: state.data!.branches
                                    .map((e) => Card(
                                          key: Key(state.data!.branches
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
                                                        return AddBranchScreen
                                                            .provider(
                                                                addBranchType:
                                                                    AddType
                                                                        .UPDATE,
                                                                branch: e);
                                                      },
                                                    ).then((value) => _globalKey
                                                        .currentContext!
                                                        .read<BranchCubit>()
                                                        .getBranch());
                                                  },
                                                ),
                                                SlidableAction(
                                                  backgroundColor:
                                                      GlobalColors.bgOrange,
                                                  foregroundColor: Colors.white,
                                                  icon: Icons.delete,
                                                  label: 'delete'.tr,
                                                  onPressed:
                                                      (BuildContext context) {
                                                    _globalKey.currentContext!
                                                        .read<BranchCubit>()
                                                        .deleteBrand(
                                                            id: e.id!.toInt());
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
                                                      const SizedBox(
                                                        height: Dimensions
                                                            .PADDING_SIZE_EXTRA_EXTRA_SMALL,
                                                      ),
                                                      SizedBox(
                                                        width: Get.width * 0.69,
                                                        child: Text(
                                                          e.description ?? "",
                                                          overflow: TextOverflow
                                                              .ellipsis,
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
                                              onTap: () {},
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
                            child: FloatingActionButton.extended(
                              backgroundColor: GlobalColors.primaryColor,
                              onPressed: () {
                                showModalBottomSheet(
                                  shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.vertical(
                                          top: Radius.circular(15.0))),
                                  context: context,
                                  isScrollControlled: true,
                                  isDismissible: true,
                                  builder: (BuildContext context) {
                                    return AddBranchScreen.provider(
                                      addBranchType: AddType.NEW,
                                    );
                                  },
                                ).then((value) => _globalKey.currentContext!
                                    .read<BranchCubit>()
                                    .getBranch());
                              },
                              icon: const Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                              label: Text(
                                "add_branch".tr,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                ),
                                textScaleFactor: 1.1,
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  : const NoDataWidget();
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
