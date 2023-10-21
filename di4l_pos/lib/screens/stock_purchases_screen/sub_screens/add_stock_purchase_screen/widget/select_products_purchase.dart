import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:di4l_pos/common/dimensions.dart';
import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/common/global_styles.dart';
import 'package:di4l_pos/enums/status_type.dart';
import 'package:di4l_pos/models/products/response/product_response.dart';
import 'package:di4l_pos/screens/products_screen/cubit/products_cubit.dart';
import 'package:di4l_pos/widgets/custom_button/custom_button.dart';
import 'package:di4l_pos/widgets/data/app_loading_widget.dart';
import 'package:di4l_pos/widgets/error_image_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

// ignore: prefer_generic_function_type_aliases
typedef void CategoryCallback(List<Product> selectedItems);

class SelectProductsPurchase extends StatefulWidget {
  const SelectProductsPurchase({
    this.selectedItems,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  final List<dynamic>? selectedItems;
  final CategoryCallback onTap;

  @override
  State<SelectProductsPurchase> createState() => _SelectProductsPurchaseState();
}

class _SelectProductsPurchaseState extends State<SelectProductsPurchase>
    with AfterLayoutMixin {
  List<Product> selectedItems = [];

  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
    context.read<ProductsCubit>().getProducts();
  }

  @override
  Widget build(BuildContext context) {
    return _buildProduct();
  }

  Widget _buildProduct() {
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
                      'products'.tr,
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
              height: Get.height * 0.75,
              child: BlocBuilder<ProductsCubit, ProductsState>(
                builder: (context, state) {
                  if (state.data!.status == StatusType.loading) {
                    return const AppLoadingWidget(
                        widget: null, text: 'Loading...');
                  } else {
                    return ListView.builder(
                      shrinkWrap: true,
                      itemCount: state.data!.products.length,
                      itemBuilder: (context, index) {
                        final product = state.data!.products.elementAt(index);
                        final isSelected = selectedItems.contains(product);

                        return Padding(
                          padding: const EdgeInsets.only(
                              bottom: Dimensions.PADDING_SIZE_SMALL),
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                if (isSelected) {
                                  selectedItems.remove(product);
                                } else {
                                  selectedItems.add(product);
                                }
                              });
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: isSelected
                                    ? Colors.grey[300]
                                    : Colors.transparent,
                                border: Border.all(
                                  width: 1,
                                  color: Colors.grey,
                                ),
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(5.0)),
                              ),
                              child: Column(
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
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(5.0)),
                                          ),
                                          width: Get.width * 0.13,
                                          height: Get.width * 0.13,
                                          child: CachedNetworkImage(
                                            width: Get.width * 0.15,
                                            height: Get.width * 0.15,
                                            fit: BoxFit.cover,
                                            imageUrl: state.data!.products
                                                    .elementAt(index)
                                                    .imageUrl ??
                                                '',
                                            errorWidget:
                                                (context, url, error) =>
                                                    const ErrorWidgetImage(),
                                          ),
                                        ),
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(product.name.toString()),
                                          SizedBox(
                                              height: Dimensions
                                                  .PADDING_SIZE_EXTRA_SMALL),
                                          Row(
                                            children: [
                                              Text('quantity'.tr),
                                              const Text(': '),
                                              Text(
                                                (product.productVariations!
                                                            .elementAt(0)!
                                                            .variations!
                                                            .elementAt(0)!
                                                            .variationLocationDetails!
                                                            .elementAt(0)
                                                            .qtyAvailable
                                                            ?.toString() ??
                                                        '')
                                                    .split('.')
                                                    .first,
                                                style: const TextStyle(
                                                    fontSize: 14),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  }
                },
              ),
            ),
          ),
          Container(
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
                    fontSize: Dimensions.FONT_SIZE_LARGE,
                  ),
                  borderColor: GlobalColors.primaryColor,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                SizedBox(width: Dimensions.PADDING_SIZE_EXTRA_SMALL),
                CustomButton(
                  type: ButtonType.BUTTON_TEXT,
                  color: GlobalColors.primaryColor,
                  label: "save".tr,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: Dimensions.FONT_SIZE_LARGE,
                  ),
                  borderColor: GlobalColors.primaryColor,
                  onPressed: () {
                    widget.onTap(selectedItems);
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
