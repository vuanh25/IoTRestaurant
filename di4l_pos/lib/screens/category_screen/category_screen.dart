import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';

import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/enums/status_type.dart';
import 'package:di4l_pos/screens/category_screen/cubit/category_cubit.dart';
import 'package:di4l_pos/screens/category_screen/sub_screen/cubit/add_category_cubit.dart';
import 'package:di4l_pos/widgets/data/404_widget.dart';
import 'package:di4l_pos/widgets/data/app_loading_widget.dart';
import 'package:di4l_pos/widgets/data/no_data_widget.dart';
import 'package:di4l_pos/screens/contacts_screen/widgets/scroll_animated_button_widget.dart';

import '../../common/dimensions.dart';
import '../../common/global_styles.dart';
import '../../enums/add_type.dart';
import '../../models/category/response/category_response.dart';
import 'sub_screen/add_category_new.dart';

class CategoryScreen extends StatefulWidget {
  /// MARK: - Initials;
  // static BlocProvider<CategoryCubit> provider() {
  //   return BlocProvider(
  //     create: (context) => CategoryCubit(),
  //     child: CategoryScreen(),
  //   );
  // }
  const CategoryScreen({Key? key, this.globalKey, this.txtCategoryName})
      : super(key: key);
  final TextEditingController? txtCategoryName;
  static MultiBlocProvider provider(
      {AddType? addCategoryType,
      CategoryModel? categoryModel,
      TextEditingController? controller}) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AddCategoryCubit>(
          create: (BuildContext context) => AddCategoryCubit(),
        ),
        BlocProvider<CategoryCubit>(
          create: (BuildContext context) => CategoryCubit(),
        ),
      ],
      child: CategoryScreen(
        txtCategoryName: controller,
      ),
    );
  }

  final GlobalKey<ScaffoldState>? globalKey;
  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> with AfterLayoutMixin {
  /// MARK: - Initials;
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey();
  ScrollController ctr = ScrollController();

  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
    context.read<CategoryCubit>().getCategories();

    widget.txtCategoryName!.addListener(() {
      context
          .read<CategoryCubit>()
          .searchCategory(searchText: widget.txtCategoryName!.text);
      if (widget.txtCategoryName!.text.isNotEmpty) {
      } else {
        //context.read<CategoryCubit>().getCategories();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      backgroundColor: GlobalColors.bgColor,
      body: BlocBuilder<CategoryCubit, CategoryState>(
        buildWhen: (previous, current) =>
            previous.data!.status != current.data!.status ||
            previous.data!.categories != current.data!.categories,
        builder: (context, state) {
          // ignore: no_leading_underscores_for_local_identifiers
          final _categories = state.data?.categories ?? [];
          switch (state.data!.status) {
            case StatusType.loading:
              return const AppLoadingWidget(
                widget: null,
                text: 'Loading...',
              );
            case StatusType.loaded:
              return Stack(
                children: [
                  _categories.isNotEmpty
                      ? ListView(
                          children: _categories
                              .map((e) => Card(
                                    key: Key(_categories.indexOf(e).toString()),
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
                                                  return AddCategoryScreenN
                                                      .provider(
                                                          addCategoryType:
                                                              AddType.UPDATE,
                                                          globalKey: _globalKey,
                                                          categoryModel: e);
                                                },
                                              );
                                            },
                                          ),
                                          SlidableAction(
                                            backgroundColor:
                                                GlobalColors.blackColor,
                                            foregroundColor: Colors.white,
                                            icon: Icons.delete,
                                            label: 'delete'.tr,
                                            onPressed: (BuildContext context) {
                                              _globalKey.currentContext!
                                                  .read<CategoryCubit>()
                                                  .deleteCategory(id: e.id!);
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
                                            Text(
                                              '${e.name}',
                                              style: GlobalStyles
                                                  .titilliumSemiBold(context),
                                              textScaleFactor: 1.1,
                                            ),
                                          ],
                                        ),
                                        onTap: () {
                                          {
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
                                              builder: (BuildContext context) {
                                                return AddCategoryScreenN
                                                    .provider(
                                                        addCategoryType:
                                                            AddType.UPDATE,
                                                        globalKey: _globalKey,
                                                        categoryModel: e);
                                              },
                                            ).then((value) => context
                                                .read<CategoryCubit>()
                                                .getCategories());
                                          }
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
                        text: "add_category".tr,
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
                              return AddCategoryScreenN.provider(
                                  addCategoryType: AddType.NEW,
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
