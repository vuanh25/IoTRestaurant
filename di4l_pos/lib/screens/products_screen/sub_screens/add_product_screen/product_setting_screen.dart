import 'package:di4l_pos/common/global_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/dimensions.dart';
import '../../../../common/global_colors.dart';
import '../../../../widgets/custom_appbar.dart';

class ProductSettingScreen extends StatefulWidget {
  const ProductSettingScreen({Key? key}) : super(key: key);

  @override
  State<ProductSettingScreen> createState() => _ProductSettingScreenState();
}

class _ProductSettingScreenState extends State<ProductSettingScreen> {
  bool temp = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: CustomAppBar(
          backgroundColor: Colors.white,
          title: 'product_setting'.tr,
          centerTitle: true,
          textColor: GlobalColors.getTextTitle(context),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(
                  Dimensions.PADDING_SIZE_DEFAULT,
                  Dimensions.PADDING_SIZE_SMALL,
                  Dimensions.PADDING_SIZE_DEFAULT,
                  Dimensions.PADDING_SIZE_SMALL),
              child: Text(
                'general_information'.tr,
                style: GlobalStyles.robotoRegular(context),
              ),
            ),
            Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(
                    Dimensions.PADDING_SIZE_DEFAULT,
                    Dimensions.PADDING_SIZE_DEFAULT,
                    Dimensions.PADDING_SIZE_DEFAULT,
                    0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('picture'.tr,
                                style: GlobalStyles.titleRegular(context)),
                            SizedBox(
                              height: Dimensions.PADDING_SIZE_EXTRA_SMALL,
                            ),
                            Text(
                              'post_display'.tr,
                              style: GlobalStyles.titilliumItalic(context),
                            )
                          ],
                        ),
                        Switch(
                          activeColor: GlobalColors.primaryColor,
                          value: temp,
                          onChanged: (value) {
                            print("VALUE : $value");
                            setState(() {
                              temp = value;
                            });
                          },
                        ),
                      ],
                    ),
                    SizedBox(
                      height: Dimensions.PADDING_SIZE_DEFAULT,
                    ),
                    Container(
                      color: Colors.grey[300],
                      height: 1,
                      alignment: Alignment.bottomCenter,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('barcode_product'.tr,
                                style: GlobalStyles.titleRegular(context)),
                            SizedBox(
                              height: Dimensions.PADDING_SIZE_EXTRA_SMALL,
                            ),
                            Container(
                              width: Get.width - 100,
                              child: Text(
                                'barcode_product_d'.tr,
                                overflow: TextOverflow.ellipsis,
                                style: GlobalStyles.titilliumItalic(context),
                              ),
                            )
                          ],
                        ),
                        Switch(
                          activeColor: GlobalColors.primaryColor,
                          value: temp,
                          onChanged: (value) {
                            print("VALUE : $value");
                            setState(() {
                              temp = value;
                            });
                          },
                        ),
                      ],
                    ),
                    SizedBox(
                      height: Dimensions.PADDING_SIZE_DEFAULT,
                    ),
                    Container(
                      color: Colors.grey[300],
                      height: 1,
                      alignment: Alignment.bottomCenter,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('unit_product'.tr,
                                style: GlobalStyles.titleRegular(context)),
                            SizedBox(
                              height: Dimensions.PADDING_SIZE_EXTRA_SMALL,
                            ),
                            Text(
                              'unit_product_d'.tr,
                              style: GlobalStyles.titilliumItalic(context),
                            )
                          ],
                        ),
                        Switch(
                          activeColor: GlobalColors.primaryColor,
                          value: temp,
                          onChanged: (value) {
                            print("VALUE : $value");
                            setState(() {
                              temp = value;
                            });
                          },
                        ),
                      ],
                    ),
                    SizedBox(
                      height: Dimensions.PADDING_SIZE_DEFAULT,
                    ),
                    Container(
                      color: Colors.grey[300],
                      height: 1,
                      alignment: Alignment.bottomCenter,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('description_product'.tr,
                                style: GlobalStyles.titleRegular(context)),
                            SizedBox(
                              height: Dimensions.PADDING_SIZE_EXTRA_SMALL,
                            ),
                            Text(
                              'description_product_d'.tr,
                              style: GlobalStyles.titilliumItalic(context),
                            )
                          ],
                        ),
                        Switch(
                          activeColor: GlobalColors.primaryColor,
                          value: temp,
                          onChanged: (value) {
                            print("VALUE : $value");
                            setState(() {
                              temp = value;
                            });
                          },
                        ),
                      ],
                    ),
                    SizedBox(
                      height: Dimensions.PADDING_SIZE_DEFAULT,
                    ),
                    Container(
                      color: Colors.grey[300],
                      height: 1,
                      alignment: Alignment.bottomCenter,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('product_labeling'.tr,
                                style: GlobalStyles.titleRegular(context)),
                            SizedBox(
                              height: Dimensions.PADDING_SIZE_EXTRA_SMALL,
                            ),
                            Text(
                              'product_labeling_d'.tr,
                              style: GlobalStyles.titilliumItalic(context),
                            )
                          ],
                        ),
                        Switch(
                          activeColor: GlobalColors.primaryColor,
                          value: temp,
                          onChanged: (value) {
                            print("VALUE : $value");
                            setState(() {
                              temp = value;
                            });
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(
                  Dimensions.PADDING_SIZE_DEFAULT,
                  Dimensions.PADDING_SIZE_SMALL,
                  Dimensions.PADDING_SIZE_DEFAULT,
                  Dimensions.PADDING_SIZE_SMALL),
              child: Text(
                'product_price'.tr,
                style: GlobalStyles.robotoRegular(context),
              ),
            ),
            Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(
                    Dimensions.PADDING_SIZE_DEFAULT,
                    Dimensions.PADDING_SIZE_DEFAULT,
                    Dimensions.PADDING_SIZE_DEFAULT,
                    0),
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'discounted_price'.tr,
                            style: GlobalStyles.titleRegular(context),
                          ),
                          SizedBox(
                            height: Dimensions.PADDING_SIZE_EXTRA_SMALL,
                          ),
                          Text(
                            'discounted_price_d'.tr,
                            style: GlobalStyles.titilliumItalic(context),
                          )
                        ],
                      ),
                      Switch(
                        activeColor: GlobalColors.primaryColor,
                        value: temp,
                        onChanged: (value) {
                          print("VALUE : $value");
                          setState(() {
                            temp = value;
                          });
                        },
                      ),
                    ],
                  ),
                  SizedBox(
                    height: Dimensions.PADDING_SIZE_DEFAULT,
                  ),
                  Container(
                    color: Colors.grey[300],
                    height: 1,
                    alignment: Alignment.bottomCenter,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('bulk_prices'.tr,
                              style: GlobalStyles.titleRegular(context)),
                          SizedBox(
                            height: Dimensions.PADDING_SIZE_EXTRA_SMALL,
                          ),
                          Text(
                            'bulk_prices_d'.tr,
                            style: GlobalStyles.titilliumItalic(context),
                          )
                        ],
                      ),
                      Switch(
                        activeColor: GlobalColors.primaryColor,
                        value: temp,
                        onChanged: (value) {
                          print("VALUE : $value");
                          setState(() {
                            temp = value;
                          });
                        },
                      ),
                    ],
                  ),
                  SizedBox(
                    height: Dimensions.PADDING_SIZE_DEFAULT,
                  ),
                  Container(
                    color: Colors.grey[300],
                    height: 1,
                    alignment: Alignment.bottomCenter,
                  ),
                ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(
                  Dimensions.PADDING_SIZE_DEFAULT,
                  Dimensions.PADDING_SIZE_SMALL,
                  Dimensions.PADDING_SIZE_DEFAULT,
                  Dimensions.PADDING_SIZE_SMALL),
              child: Text(
                'other'.tr,
                style: GlobalStyles.robotoRegular(context),
              ),
            ),
            Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(
                    Dimensions.PADDING_SIZE_DEFAULT,
                    Dimensions.PADDING_SIZE_DEFAULT,
                    Dimensions.PADDING_SIZE_DEFAULT,
                    0),
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'monitoring_stock_quantities'.tr,
                            style: GlobalStyles.titilliumRegular(context),
                          ),
                          SizedBox(
                            height: Dimensions.PADDING_SIZE_EXTRA_SMALL,
                          ),
                          Text(
                            'monitoring_stock_quantities'.tr,
                            style: GlobalStyles.titilliumItalic(context),
                          )
                        ],
                      ),
                      Switch(
                        activeColor: GlobalColors.primaryColor,
                        value: temp,
                        onChanged: (value) {
                          print("VALUE : $value");
                          setState(() {
                            temp = value;
                          });
                        },
                      ),
                    ],
                  ),
                  SizedBox(
                    height: Dimensions.PADDING_SIZE_DEFAULT,
                  ),
                  Container(
                    color: Colors.grey[300],
                    height: 1,
                    alignment: Alignment.bottomCenter,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('variant_n'.tr,
                              style: GlobalStyles.titleRegular(context)),
                          SizedBox(
                            height: Dimensions.PADDING_SIZE_EXTRA_SMALL,
                          ),
                          Text(
                            'variant_d'.tr,
                            style: GlobalStyles.titilliumItalic(context),
                          )
                        ],
                      ),
                      Switch(
                        activeColor: GlobalColors.primaryColor,
                        value: temp,
                        onChanged: (value) {
                          print("VALUE : $value");
                          setState(() {
                            temp = value;
                          });
                        },
                      ),
                    ],
                  ),
                  SizedBox(
                    height: Dimensions.PADDING_SIZE_DEFAULT,
                  ),
                  Container(
                    color: Colors.grey[300],
                    height: 1,
                    alignment: Alignment.bottomCenter,
                  ),
                ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
