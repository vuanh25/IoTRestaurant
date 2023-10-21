import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/enums/status_type.dart';
import 'package:di4l_pos/screens/variant_screen/cubit/variant_cubit.dart';
import 'package:di4l_pos/screens/variant_screen/sub_screen/add_variantion_screen.dart';
import 'package:di4l_pos/widgets/data/app_loading_widget.dart';
import 'package:di4l_pos/widgets/data/404_widget.dart';
import 'package:di4l_pos/widgets/data/no_data_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';
import 'package:di4l_pos/screens/contacts_screen/widgets/scroll_animated_button_widget.dart';

import '../../common/dimensions.dart';
import '../../common/global_styles.dart';
import '../../enums/add_type.dart';

class VariantScreen extends StatefulWidget {
  /// MARK: - Initials;
  static BlocProvider<VariantCubit> provider(
      {TextEditingController? txtSearch}) {
    return BlocProvider(
      create: (context) => VariantCubit(),
      child: VariantScreen(txtSearch),
    );
  }

  final TextEditingController? _txtSearch;
  const VariantScreen(this._txtSearch, {Key? key}) : super(key: key);

  @override
  State<VariantScreen> createState() => _VariantScreenState();
}

class _VariantScreenState extends State<VariantScreen> with AfterLayoutMixin {
  ScrollController ctr = ScrollController();

  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
    context.read<VariantCubit>().getVariants();
    widget._txtSearch!.addListener(() {
      context
          .read<VariantCubit>()
          .searchVariant(searchText: widget._txtSearch!.text);
    });
  }

  final GlobalKey<ScaffoldState> _globalKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      body: BlocBuilder<VariantCubit, VariantState>(
        buildWhen: (previous, current) =>
            previous.data!.status != current.data!.status,
        builder: (context, state) {
          final variants = state.data?.variants ?? [];
          switch (state.data!.status) {
            case StatusType.loading:
              return const AppLoadingWidget(
                widget: null,
                text: 'Loading...',
              );
            case StatusType.loaded:
              return Stack(
                      children: [
                        state.data!.variants.isNotEmpty
                            ? ListView(
                                children: state.data!.variants
                                    .map((e) => Card(
                                          key: Key(state.data!.variants
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
                                                      GlobalColors.primaryColor,
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
                                                        return AddVariantionScreen
                                                            .provider(
                                                                addVariantionType:
                                                                    AddType
                                                                        .UPDATE,
                                                                globalKey:
                                                                    _globalKey,
                                                                variant: e);
                                                      },
                                                    ).then((value) => _globalKey
                                                        .currentContext!
                                                        .read<VariantCubit>()
                                                        .getVariants());
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
                                                        .read<VariantCubit>()
                                                        .deleteVariant(
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
                                                      SizedBox(
                                                        width: Get.width * 0.71,
                                                        child: Text(
                                                          'Values: ${e.values!.map((e) => e.name)}',
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
                                                      return AddVariantionScreen
                                                          .provider(
                                                              addVariantionType:
                                                                  AddType
                                                                      .UPDATE,
                                                              globalKey:
                                                                  _globalKey,
                                                              variant: e);
                                                    },
                                                  ).then((value) => _globalKey
                                                      .currentContext!
                                                      .read<VariantCubit>()
                                                      .getVariants());
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
                              text: "add_variant".tr,
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
                                    return AddVariantionScreen.provider(
                                        addVariantionType: AddType.NEW,
                                        globalKey: _globalKey);
                                  },
                                ).then((value) => _globalKey.currentContext!
                                    .read<VariantCubit>()
                                    .getVariants());
                              },
                            )
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
