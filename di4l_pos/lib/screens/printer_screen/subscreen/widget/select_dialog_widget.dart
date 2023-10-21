import 'package:di4l_pos/common/dimensions.dart';
import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/common/global_constants.dart';
import 'package:di4l_pos/common/global_styles.dart';
import 'package:di4l_pos/enums/select_mode_add_product.dart';
import 'package:di4l_pos/enums/status_type.dart';
import 'package:di4l_pos/route_generator.dart';
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

typedef void CategoryCallback(item);

class SelectDialogWidget extends StatefulWidget {
  var item;
  final CategoryCallback ontap;
  final bool isShowbutton;
  final String selectModeAddProduct;
  SelectDialogWidget({
    Key? key,
    this.item,
    required this.ontap,
    required this.isShowbutton,
    required this.selectModeAddProduct,
  }) : super(key: key);

  @override
  State<SelectDialogWidget> createState() => _SelectDialogWidget();
}

class _SelectDialogWidget extends State<SelectDialogWidget> {
  @override
  void initState() {
    super.initState();
    switch (widget.selectModeAddProduct) {
      case "connectionType":
        {
          context.read<CategoryCubit>().getCategories();
          break;
        }
      default:
        return;
    }
  }

  @override
  Widget build(BuildContext context) {
    switch (widget.selectModeAddProduct) {
      case "connectionType":
        {
          return _category();
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
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
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
                },
              ),
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
}
