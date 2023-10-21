// ignore_for_file: invalid_use_of_visible_for_testing_member, invalid_use_of_protected_member, prefer_generic_function_type_aliases

import 'package:di4l_pos/common/dimensions.dart';
import 'package:di4l_pos/common/global_styles.dart';
import 'package:di4l_pos/models/branch/response/branch_response.dart';
import 'package:di4l_pos/models/category/response/category_response.dart';
import 'package:di4l_pos/models/unit/response/unit_response.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/global_colors.dart';
import '../../../../enums/product_filtter.dart';

typedef void FilterCallback(item);
Future<void> dialogFiltter(
  BuildContext context,
  List<CategoryModel>? categories1,
  List<Branch>? branchs1,
  List<Unit>? units1,
  FilterCallback? onTap,
) {
  Map<ProductFiltter, int?> selectValue = {};
  List<CategoryModel>? categories = categories1;
  List<Branch>? branchs = branchs1;
  List<Unit>? units = units1;

  selectValue = {
    ProductFiltter.category: categories![0].id,
    ProductFiltter.branch: branchs![0].id,
    ProductFiltter.unit: units![0].id,
  };
  ValueNotifier<Map<ProductFiltter, int?>> selectValueNotic =
      ValueNotifier(selectValue);
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return Center(
        child: Container(
          alignment: Alignment.center,
          width: Get.width - 10,
          height: Get.height * 0.6,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
                Radius.circular(10) //                 <--- border radius here
                ),
          ),
          child: ValueListenableBuilder(
            builder: (BuildContext context, value, Widget? child) =>
                SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(Dimensions.PADDING_SIZE_SMALL),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'filter'.tr,
                          style: GlobalStyles.titleHeader(context),
                          textScaleFactor: 1.3,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: Dimensions.PADDING_SIZE_DEFAULT,
                    ),
                    Text("category".tr,
                        style: GlobalStyles.titleHeader(context)),
                    Wrap(
                      spacing: 10,
                      direction: Axis.horizontal,
                      children: categories
                          .map(
                            (e) => ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    selectValue[ProductFiltter.category] == e.id
                                        ? Colors.grey[300]
                                        : Colors.grey[50],
                                elevation: 0.0,
                                side: const BorderSide(
                                  color: Colors.grey,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.circular(8), // <-- Radius
                                ),
                              ),
                              onPressed: () {
                                selectValue[ProductFiltter.category] = e.id;
                                selectValueNotic.value = selectValue;
                                selectValueNotic.notifyListeners();
                              },
                              child: Text(
                                e.name ?? "",
                                style: TextStyle(
                                    color: GlobalColors.getTextTitle(context),
                                    fontWeight: FontWeight.w200),
                              ),
                            ),
                          )
                          .toList()
                          .cast<Widget>(),
                    ),
                    const SizedBox(
                      height: Dimensions.PADDING_SIZE_DEFAULT,
                    ),
                    Text("unit".tr, style: GlobalStyles.titleHeader(context)),
                    Wrap(
                      spacing: 10,
                      direction: Axis.horizontal,
                      children: units
                          .map(
                            (e) => ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    selectValue[ProductFiltter.unit] == e.id
                                        ? Colors.grey[300]
                                        : Colors.grey[50],
                                elevation: 0.0,
                                side: const BorderSide(
                                  color: Colors.grey,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.circular(8), // <-- Radius
                                ),
                              ),
                              onPressed: () {
                                selectValue[ProductFiltter.unit] = e.id;
                                selectValueNotic.value = selectValue;
                                selectValueNotic.notifyListeners();
                              },
                              child: Text(
                                e.actualName ?? "",
                                style: TextStyle(
                                    color: GlobalColors.getTextTitle(context),
                                    fontWeight: FontWeight.w200),
                              ),
                            ),
                          )
                          .toList()
                          .cast<Widget>(),
                    ),
                    const SizedBox(
                      height: Dimensions.PADDING_SIZE_DEFAULT,
                    ),
                    Text("branch".tr, style: GlobalStyles.titleHeader(context)),
                    Wrap(
                      spacing: 10,
                      direction: Axis.horizontal,
                      children: branchs
                          .map(
                            (e) => ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    selectValue[ProductFiltter.branch] == e.id
                                        ? Colors.grey[300]
                                        : Colors.grey[50],
                                elevation: 0.0,
                                side: const BorderSide(
                                  color: Colors.grey,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.circular(8), // <-- Radius
                                ),
                              ),
                              onPressed: () {
                                selectValue[ProductFiltter.branch] = e.id;
                                selectValueNotic.value = selectValue;
                                selectValueNotic.notifyListeners();
                              },
                              child: Text(
                                e.name ?? "",
                                style: TextStyle(
                                    color: GlobalColors.getTextTitle(context),
                                    fontWeight: FontWeight.w200),
                              ),
                            ),
                          )
                          .toList()
                          .cast<Widget>(),
                    ),
                    const SizedBox(
                      height: Dimensions.PADDING_SIZE_DEFAULT,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          child: Text(
                            'cancel'.tr,
                            style: const TextStyle(color: Colors.red),
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                        const SizedBox(
                          width: Dimensions.PADDING_SIZE_EXTRA_EXTRA_SMALL,
                        ),
                        TextButton(
                          child: Text(
                            'save'.tr,
                            style: const TextStyle(
                                color: GlobalColors.primaryColor),
                          ),
                          onPressed: () {
                            onTap!(selectValue);
                            Navigator.pop(context);
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            valueListenable: selectValueNotic,
          ),
        ),
      );
    },
  );
}
