import 'package:di4l_pos/common/dimensions.dart';
import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/common/global_constants.dart';
import 'package:di4l_pos/common/global_styles.dart';
import 'package:di4l_pos/enums/select_mode_add_product.dart';
import 'package:di4l_pos/enums/status_type.dart';
import 'package:di4l_pos/screens/branch_screen/add_branch_screen/add_branch_screen.dart';
import 'package:di4l_pos/screens/branch_screen/cubit/branch_cubit.dart';
import 'package:di4l_pos/screens/unit_screen/cubit/unit_cubit.dart';
import 'package:di4l_pos/screens/variant_screen/cubit/variant_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

import '../../../../enums/add_type.dart';
import '../../../../widgets/custom_button/custom_button.dart';
import '../../../../widgets/data/app_loading_widget.dart';
import '../../../../widgets/search_widget.dart';
import '../../../category_screen/cubit/category_cubit.dart';
import '../../../category_screen/sub_screen/add_category_new.dart';
import '../../../unit_screen/sub_screens/add_unit_screen.dart';
import '../../../variant_screen/sub_screen/add_variantion_screen.dart';

typedef void CategoryCallback(item);

class SelectDialogWidget extends StatefulWidget {
  SelectDialogWidget({
    // required this.categories,
    this.item,
    required this.ontap,
    Key? key,
    required this.isShowbutton,
    required this.selectModeAddProduct,
  }) : super(key: key);
  // List<CategoryModel> categories;
  var item;
  final CategoryCallback ontap;
  final bool isShowbutton;
  final SelectModeAddProduct selectModeAddProduct;
  @override
  State<SelectDialogWidget> createState() => _SelectDialogWidget();
}

class _SelectDialogWidget extends State<SelectDialogWidget> {
  @override
  void initState() {
    super.initState();
    switch (widget.selectModeAddProduct) {
      case SelectModeAddProduct.unit:
        {
          context.read<UnitCubit>().getUnits();
          break;
        }
      case SelectModeAddProduct.variant:
        {
          context.read<VariantCubit>().getVariants();
          break;
        }
      case SelectModeAddProduct.branch:
        {
          context.read<BranchCubit>().getBranch();
          break;
        }
      case SelectModeAddProduct.category:
        {
          context.read<CategoryCubit>().getCategories();
          break;
        }

      default:
    }
  }

  @override
  Widget build(BuildContext context) {
    switch (widget.selectModeAddProduct) {
      case SelectModeAddProduct.unit:
        {
          return _unit();
        }
      case SelectModeAddProduct.variant:
        {
          return _variant();
        }
      case SelectModeAddProduct.branch:
        {
          return _branch();
        }
      case SelectModeAddProduct.barcode:
        {
          return _barcode();
        }
      default:
        return _category();
    }
  }

  Widget _category() {
    var item = widget.item;

    return Container(
      height: widget.isShowbutton ? Get.height * 0.6 : Get.height * 0.5,
      width: Get.width,
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          SizedBox(
            height: Get.height * 0.07,
            width: Get.width,
            child: Stack(
              children: [
                SizedBox(
                  width: Get.width,
                  child: Center(
                    child: Text(
                      'category'.tr,
                      style: GlobalStyles.titilliumRegular(context).copyWith(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: Get.width,
                  child: IconButton(
                    alignment: Alignment.centerRight,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.close_outlined,
                      size: 25,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Expanded(
                child: SearchWidget(
                  prefixIcon: const Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                  hintText: "search".tr,
                  isShowBoder: false,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: GlobalColors.appBar1,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: GestureDetector(
                    child: IconButton(
                      icon: const Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                      onPressed: () {
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
                            );
                          },
                        ).then((value) =>
                            context.read<CategoryCubit>().getCategories());
                      },
                    ),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: Dimensions.PADDING_SIZE_DEFAULT,
          ),
          Flexible(
            child: SizedBox(
              height: Get.height * 0.45,
              child: BlocBuilder<CategoryCubit, CategoryState>(
                  builder: (context, state) {
                if (state.data!.status == StatusType.loading) {
                  return const AppLoadingWidget(
                      widget: null, text: 'Loading...');
                } else {
                  return GridView.builder(
                    itemCount: state.data!.categories.length,
                    gridDelegate:
                        const SliverGridDelegateWithMaxCrossAxisExtent(
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 10,
                      maxCrossAxisExtent: 100,
                    ),
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          item == state.data!.categories[index]
                              ? context
                                  .read<CategoryCubit>()
                                  .addCategorySelected(null)
                              : context
                                  .read<CategoryCubit>()
                                  .addCategorySelected(
                                      state.data!.categories[index]);
                          item = state.data!.categories[index];
                        },
                        child: Stack(
                          children: [
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: SizedBox(
                                    height: Get.width / 15,
                                    width: Get.width * 0.3,
                                    child: Image.asset(
                                      "assets/images/food.jpg",
                                    ),
                                  ),
                                ),
                                Text(state.data!.categories[index].name
                                    .toString()),
                              ],
                            ),
                            state.data!.categorySelected ==
                                    state.data!.categories.elementAt(index)
                                ? Container(
                                    alignment: Alignment.topRight,
                                    child: const Icon(
                                      Icons.check_box,
                                      color: GlobalColors.primaryColor,
                                    ),
                                  )
                                : const SizedBox(),
                          ],
                        ),
                      );
                    },
                  );
                }
              }),
            ),
          ),
          widget.isShowbutton
              ? Container(
                  alignment: Alignment.center,
                  height: MediaQuery.of(context).size.height * 0.1,
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomButton(
                        type: ButtonType.BUTTON_TEXT,
                        color: Colors.white,
                        label: "back".tr,
                        style: const TextStyle(
                            color: GlobalColors.primaryColor,
                            fontWeight: FontWeight.bold,
                            fontSize: Dimensions.FONT_SIZE_LARGE),
                        borderColor: GlobalColors.primaryColor,
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      const SizedBox(
                        width: Dimensions.PADDING_SIZE_EXTRA_SMALL,
                      ),
                      CustomButton(
                        type: ButtonType.BUTTON_TEXT,
                        color: GlobalColors.primaryColor,
                        label: "save".tr,
                        style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: Dimensions.FONT_SIZE_LARGE),
                        borderColor: GlobalColors.primaryColor,
                        onPressed: () {
                          widget.ontap(item);
                          Navigator.pop(context);
                        },
                      ),
                    ],
                  ),
                )
              : const SizedBox(),
        ],
      ),
    );
  }

  Widget _variant() {
    var item = widget.item;

    return Container(
      height: Get.height * 0.95,
      width: Get.width,
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          SizedBox(
            width: Get.width,
            height: Get.height * 0.07,
            child: Stack(
              children: [
                SizedBox(
                  width: Get.width,
                  child: Center(
                    child: Text(
                      'variant'.tr,
                      style: GlobalStyles.titilliumRegular(context).copyWith(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: Get.width,
                  child: IconButton(
                    alignment: Alignment.centerRight,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.close_outlined,
                      size: 25,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Center(
              child: Container(
                height: 50,
                width: Get.width * 0.5,
                decoration: BoxDecoration(
                  color: GlobalColors.appBar1,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: InkWell(
                  onTap: (() => showModalBottomSheet(
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(
                                top: Radius.circular(15.0))),
                        context: context,
                        isScrollControlled: true,
                        isDismissible: true,
                        builder: (BuildContext context) {
                          return AddVariantionScreen.provider(
                              addVariantionType: AddType.NEW);
                        },
                      ).then((value) =>
                          context.read<VariantCubit>().getVariants())),
                  child: const Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: Dimensions.PADDING_SIZE_DEFAULT,
          ),
          Flexible(
            child: SizedBox(
              height: Get.height * 0.75,
              child: BlocBuilder<VariantCubit, VariantState>(
                  builder: (context, state) {
                if (state.data!.status == StatusType.loading) {
                  return const AppLoadingWidget(
                      widget: null, text: 'Loading...');
                } else {
                  return ListView.builder(
                    shrinkWrap: true,
                    itemCount: state.data!.variants.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(
                            bottom: Dimensions.PADDING_SIZE_SMALL),
                        child: Container(
                          decoration: BoxDecoration(
                            color: state.data!.variantSelected ==
                                    state.data!.variants.elementAt(index)
                                ? Colors.grey[300]
                                : Colors.transparent,
                            border: Border.all(
                              width: 1,
                              color: Colors.grey,
                            ),
                            borderRadius: const BorderRadius.all(
                                Radius.circular(
                                    5.0) //                 <--- border radius here
                                ),
                          ),
                          child: Column(
                            children: [
                              InkWell(
                                onTap: () {
                                  item == state.data!.variants[index]
                                      ? context
                                          .read<VariantCubit>()
                                          .variantSelected(null)
                                      : context
                                          .read<VariantCubit>()
                                          .variantSelected(
                                              state.data!.variants[index]);
                                  item = state.data!.variants[index];
                                },
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                width: 1,
                                                color: Colors.grey,
                                              ),
                                              borderRadius: const BorderRadius
                                                      .all(
                                                  Radius.circular(
                                                      5.0) //                 <--- border radius here
                                                  ),
                                            ),
                                            width: Get.width * 0.13,
                                            height: Get.width * 0.13,
                                            child: Padding(
                                              padding: const EdgeInsets.all(
                                                  Dimensions.MARGIN_SIZE_SMALL),
                                              child: SizedBox(
                                                width: Get.width * 0.07,
                                                child: Image.asset(
                                                  "assets/images/food.jpg",
                                                  color: Colors.grey,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              state.data!.variants
                                                  .elementAt(index)
                                                  .name
                                                  .toString(),
                                            ),
                                            const SizedBox(
                                              height: Dimensions
                                                  .PADDING_SIZE_EXTRA_SMALL,
                                            ),
                                            Text(
                                              state.data!.variants
                                                  .elementAt(index)
                                                  .id
                                                  .toString(),
                                              style:
                                                  GlobalStyles.titilliumRegular(
                                                      context),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: IconButton(
                                            icon: const Icon(
                                              Icons.edit,
                                              size: 20,
                                            ),
                                            onPressed: () {
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
                                                  return AddVariantionScreen
                                                      .provider(
                                                          addVariantionType:
                                                              AddType.UPDATE,
                                                          variant: state
                                                              .data!.variants
                                                              .elementAt(
                                                                  index));
                                                },
                                              ).then((value) => context
                                                  .read<VariantCubit>()
                                                  .getVariants());
                                            },
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: IconButton(
                                            icon: Icon(
                                              state.data!.showValue ==
                                                      state.data!.variants
                                                          .elementAt(index)
                                                          .id
                                                  ? Icons.arrow_drop_up
                                                  : Icons.arrow_drop_down,
                                              size: 30,
                                            ),
                                            onPressed: () {
                                              state.data!.showValue ==
                                                      state.data!.variants
                                                          .elementAt(index)
                                                          .id
                                                  ? context
                                                      .read<VariantCubit>()
                                                      .showValue(-1)
                                                  : context
                                                      .read<VariantCubit>()
                                                      .showValue(state
                                                          .data!.variants
                                                          .elementAt(index)
                                                          .id);
                                            },
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              state.data!.showValue ==
                                      state.data!.variants.elementAt(index).id
                                  ? Wrap(
                                      direction: Axis.horizontal,
                                      children: state.data!.variants
                                          .elementAt(index)
                                          .values!
                                          .map(
                                            (i) => Padding(
                                              padding: const EdgeInsets.all(
                                                  Dimensions
                                                      .PADDING_SIZE_EXTRA_SMALL),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  color: Colors.white,
                                                  boxShadow: const [
                                                    BoxShadow(
                                                        color: Colors.grey,
                                                        spreadRadius: 1),
                                                  ],
                                                ),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(5.0),
                                                  child: Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Text(
                                                        "${"Value:".tr} ${i.name}",
                                                        style: const TextStyle(
                                                            fontSize: 13,
                                                            fontWeight:
                                                                FontWeight.w100,
                                                            color:
                                                                Colors.black),
                                                      ),
                                                      InkWell(
                                                          onTap: () {},
                                                          child: const Icon(
                                                            Icons
                                                                .delete_forever_outlined,
                                                            color: Colors.red,
                                                          ))
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          )
                                          .toList(),
                                    )
                                  : const SizedBox()
                            ],
                          ),
                        ),
                      );
                    },
                  );
                }
              }),
            ),
          ),
          widget.isShowbutton
              ? Container(
                  alignment: Alignment.center,
                  height: MediaQuery.of(context).size.height * 0.1,
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomButton(
                        type: ButtonType.BUTTON_TEXT,
                        color: Colors.white,
                        label: "back".tr,
                        style: const TextStyle(
                            color: GlobalColors.primaryColor,
                            fontWeight: FontWeight.bold,
                            fontSize: Dimensions.FONT_SIZE_LARGE),
                        borderColor: GlobalColors.primaryColor,
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      const SizedBox(
                        width: Dimensions.PADDING_SIZE_EXTRA_SMALL,
                      ),
                      CustomButton(
                        type: ButtonType.BUTTON_TEXT,
                        color: GlobalColors.primaryColor,
                        label: "save".tr,
                        style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: Dimensions.FONT_SIZE_LARGE),
                        borderColor: GlobalColors.primaryColor,
                        onPressed: () {
                          widget.ontap(item);
                          Navigator.pop(context);
                        },
                      ),
                    ],
                  ),
                )
              : const SizedBox(),
        ],
      ),
    );
  }

  Widget _unit() {
    return Container(
      height: Get.height * 0.6,
      width: Get.width,
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          SizedBox(
            width: Get.width,
            height: Get.height * 0.07,
            child: Stack(
              children: [
                SizedBox(
                  width: Get.width,
                  child: Center(
                    child: Text(
                      'unit'.tr,
                      style: GlobalStyles.titilliumRegular(context).copyWith(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: Get.width,
                  child: IconButton(
                    alignment: Alignment.centerRight,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.close_outlined,
                      size: 25,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Center(
              child: Container(
                height: 50,
                width: Get.width * 0.5,
                decoration: BoxDecoration(
                  color: GlobalColors.appBar1,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: InkWell(
                  onTap: (() => showModalBottomSheet(
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(
                                top: Radius.circular(15.0))),
                        context: context,
                        isScrollControlled: true,
                        isDismissible: true,
                        builder: (BuildContext context) {
                          return AddUnitScreen.provider(
                            addUnitType: AddType.NEW,
                          );
                        },
                      ).then((value) => context.read<UnitCubit>().getUnits())),
                  child: const Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: Dimensions.PADDING_SIZE_DEFAULT,
          ),
          Flexible(
            child: SizedBox(
              height: Get.height * 0.45,
              child:
                  BlocBuilder<UnitCubit, UnitState>(builder: (context, state) {
                if (state.data!.status == StatusType.loading) {
                  return const AppLoadingWidget(
                      widget: null, text: 'Loading...');
                } else {
                  return ListView.builder(
                    shrinkWrap: true,
                    itemCount: state.data!.units.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(
                            bottom: Dimensions.PADDING_SIZE_SMALL),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 1,
                              color: Colors.grey,
                            ),
                            borderRadius: const BorderRadius.all(
                                Radius.circular(
                                    5.0) //                 <--- border radius here
                                ),
                          ),
                          child: Column(
                            children: [
                              InkWell(
                                onTap: () {
                                  widget.ontap(
                                      state.data!.units.elementAt(index));
                                  Navigator.pop(context);
                                },
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        "${state.data!.units.elementAt(index).actualName} ( ${state.data!.units.elementAt(index).shortName.toString()} )",
                                        style:
                                            GlobalStyles.titleRegular(context),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                        Dimensions.PADDING_SIZE_SMALL,
                                        Dimensions
                                            .PADDING_SIZE_EXTRA_EXTRA_SMALL,
                                        Dimensions.PADDING_SIZE_SMALL,
                                        Dimensions
                                            .PADDING_SIZE_EXTRA_EXTRA_SMALL,
                                      ),
                                      child: IconButton(
                                        icon: const Icon(
                                          Icons.edit,
                                          size: 20,
                                        ),
                                        onPressed: () {
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
                                                  unit: state.data!.units
                                                      .elementAt(index));
                                            },
                                          ).then((value) => context
                                              .read<UnitCubit>()
                                              .getUnits());
                                        },
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                }
              }),
            ),
          ),
        ],
      ),
    );
  }

  Widget _branch() {
    return Container(
      height: Get.height * 0.6,
      width: Get.width,
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          SizedBox(
            width: Get.width,
            height: Get.height * 0.07,
            child: Stack(
              children: [
                SizedBox(
                  width: Get.width,
                  child: Center(
                    child: Text(
                      'branch'.tr,
                      style: GlobalStyles.titilliumRegular(context).copyWith(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: Get.width,
                  child: IconButton(
                    alignment: Alignment.centerRight,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.close_outlined,
                      size: 25,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Center(
              child: Container(
                height: 50,
                width: Get.width * 0.5,
                decoration: BoxDecoration(
                  color: GlobalColors.appBar1,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: InkWell(
                  onTap: (() => showModalBottomSheet(
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(
                                top: Radius.circular(15.0))),
                        context: context,
                        isScrollControlled: true,
                        isDismissible: true,
                        builder: (BuildContext context) {
                          return AddBranchScreen.provider(
                              addBranchType: AddType.NEW);
                        },
                      ).then((value) => setState(
                            () {},
                          ))),
                  child: const Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: Dimensions.PADDING_SIZE_DEFAULT,
          ),
          Flexible(
            child: SizedBox(
              height: Get.height * 0.45,
              child: BlocBuilder<BranchCubit, BranchState>(
                  builder: (context, state) {
                if (state.data!.status == StatusType.loading) {
                  return const AppLoadingWidget(
                      widget: null, text: 'Loading...');
                } else {
                  return ListView.builder(
                    shrinkWrap: true,
                    itemCount: state.data!.branches.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(
                            bottom: Dimensions.PADDING_SIZE_SMALL),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 1,
                              color: Colors.grey,
                            ),
                            borderRadius: const BorderRadius.all(
                                Radius.circular(
                                    5.0) //                 <--- border radius here
                                ),
                          ),
                          child: Column(
                            children: [
                              InkWell(
                                onTap: () {
                                  widget.ontap(
                                      state.data!.branches.elementAt(index));
                                  Navigator.pop(context);
                                },
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        "${state.data!.branches.elementAt(index).name} ( ${state.data!.branches.elementAt(index).name.toString()} )",
                                        style:
                                            GlobalStyles.titleRegular(context),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                        Dimensions.PADDING_SIZE_SMALL,
                                        Dimensions
                                            .PADDING_SIZE_EXTRA_EXTRA_SMALL,
                                        Dimensions.PADDING_SIZE_SMALL,
                                        Dimensions
                                            .PADDING_SIZE_EXTRA_EXTRA_SMALL,
                                      ),
                                      child: IconButton(
                                        icon: const Icon(
                                          Icons.edit,
                                          size: 20,
                                        ),
                                        onPressed: () {
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
                                              return AddBranchScreen.provider(
                                                  addBranchType: AddType.UPDATE,
                                                  branch: state.data!.branches
                                                      .elementAt(index));
                                            },
                                          ).then((value) => setState(
                                                () {},
                                              ));
                                        },
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                }
              }),
            ),
          ),
        ],
      ),
    );
  }

  Widget _barcode() {
    Map<String, String> barcodes = GlobalConstants.barCodeTypes;
    return Container(
      height: Get.height * 0.6,
      width: Get.width,
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          SizedBox(
            width: Get.width,
            height: Get.height * 0.07,
            child: Stack(
              children: [
                SizedBox(
                  width: Get.width,
                  child: Center(
                    child: Text(
                      'barcode_product'.tr,
                      style: GlobalStyles.titilliumRegular(context).copyWith(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: Get.width,
                  child: IconButton(
                    alignment: Alignment.centerRight,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.close_outlined,
                      size: 25,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: Dimensions.PADDING_SIZE_DEFAULT,
          ),
          Flexible(
            child: SizedBox(
              height: Get.height * 0.45,
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: barcodes.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(
                          bottom: Dimensions.PADDING_SIZE_SMALL),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                            color: Colors.grey,
                          ),
                          borderRadius: const BorderRadius.all(Radius.circular(
                                  5.0) //                 <--- border radius here
                              ),
                        ),
                        child: Column(
                          children: [
                            InkWell(
                              onTap: () {
                                widget.ontap(barcodes.keys.elementAt(index));
                                Navigator.pop(context);
                              },
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      barcodes.keys.elementAt(index),
                                      style: GlobalStyles.titleRegular(context),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
