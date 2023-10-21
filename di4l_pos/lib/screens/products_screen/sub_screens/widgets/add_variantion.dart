import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/models/variants/response/variants_response.dart';
import 'package:di4l_pos/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductVari {
  Variant? template;
  List<TextEditingController> skus;
  List<TextEditingController> values;
  ProductVari(this.template, this.skus, this.values);
}

class SingleVariant extends StatelessWidget {
  final TextEditingController txtSingleDpp;
  final TextEditingController txtSingleDppIncTax;
  final TextEditingController txtProfitPercent;
  final TextEditingController txtSingleDsp;
  final TextEditingController txtSingleDspIncTax;

  const SingleVariant({
    Key? key,
    required this.txtSingleDpp,
    required this.txtSingleDppIncTax,
    required this.txtProfitPercent,
    required this.txtSingleDsp,
    required this.txtSingleDspIncTax,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: CustomTextField(
                controller: txtSingleDpp,
                hintLabel: 'exc_of_tax'.tr,
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: CustomTextField(
                controller: txtSingleDppIncTax,
                hintLabel: 'number_exc_of_tax'.tr,
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        Row(
          children: [
            Expanded(
              child: CustomTextField(
                controller: txtSingleDsp,
                hintLabel: 'inc_of_tax'.tr,
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: CustomTextField(
                controller: txtSingleDspIncTax,
                hintLabel: 'number_inc_of_tax'.tr,
              ),
            )
          ],
        ),

        ///
        const SizedBox(height: 16),
        CustomTextField(
          controller: txtProfitPercent,
          hintLabel: 'profit_percent'.tr,
        ),
      ],
    );
  }
}

class NewVariantion extends StatelessWidget {
  final TextEditingController skuController;
  final TextEditingController valueController;
  // final Function()? selectGallery;
  // final Function()? takeAPhoto;
  // final Widget? widget;
  final VoidCallback? remove;

  const NewVariantion({
    Key? key,
    required this.skuController,
    required this.valueController,
    // this.selectGallery,
    // this.takeAPhoto,
    // this.widget,
    this.remove,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: TextField(
                        controller: skuController,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          label: Text('SKU'),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Flexible(
                      child: TextField(
                        controller: valueController,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          label: Text('Value'),
                        ),
                      ),
                    ),
                  ],
                ),
                // const SizedBox(height: 10),
                // Row(
                //   children: [
                //     Column(
                //       children: [
                //         ConstrainedBox(
                //           constraints:
                //               BoxConstraints.tightFor(height: 35, width: 150),
                //           child: ElevatedButton.icon(
                //             onPressed: selectGallery,
                //             icon: const Icon(
                //               Icons.image,
                //               color: Colors.white,
                //             ),
                //             style: ElevatedButton.styleFrom(
                //               primary: GlobalColors.primaryColor,
                //             ),
                //             label: Text(
                //               'add_product_image_to_gallery'.tr,
                //               style: const TextStyle(color: Colors.white),
                //             ),
                //           ),
                //         ),
                //         const SizedBox(height: 10),
                //         ConstrainedBox(
                //           constraints:
                //               BoxConstraints.tightFor(height: 35, width: 150),
                //           child: ElevatedButton.icon(
                //             onPressed: takeAPhoto,
                //             icon: const Icon(
                //               Icons.camera,
                //               color: Colors.white,
                //             ),
                //             style: ElevatedButton.styleFrom(
                //               primary: GlobalColors.primaryColor,
                //             ),
                //             label: Text(
                //               'add_product_image_to_camera'.tr,
                //               style: const TextStyle(color: Colors.white),
                //             ),
                //           ),
                //         ),
                //       ],
                //     ),
                //     const SizedBox(width: 20),
                //     widget!,
                //   ],
                // ),
              ],
            ),
          ),
          const SizedBox(width: 10),
          Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
                color: GlobalColors.errorColor,
                borderRadius: BorderRadius.circular(5)),
            child: IconButton(
              onPressed: remove,
              icon: const Icon(
                Icons.remove,
                color: GlobalColors.kDarkWhite,
                size: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
