import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/common/global_styles.dart';
import 'package:di4l_pos/route_generator.dart';
import 'package:di4l_pos/screens/business_screen/cubit/business_cubit.dart';
import 'package:di4l_pos/screens/business_screen/widget/custom_ListTitle.dart';
import 'package:di4l_pos/screens/main_screen/mobile/widgets/my_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class BusinessSettingScreen extends StatefulWidget {
  static BlocProvider<BusinessCubit> provider() {
    return BlocProvider(
      create: (context) => BusinessCubit(),
      child: const BusinessSettingScreen(),
    );
  }

  const BusinessSettingScreen({Key? key}) : super(key: key);

  @override
  State<BusinessSettingScreen> createState() => _BusinessSettingScreenState();
}

class _BusinessSettingScreenState extends State<BusinessSettingScreen> {
  bool light = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: buildBody(),
    );
  }

  SafeArea buildBody() {
    return SafeArea(
        child: SingleChildScrollView(
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 15),
            decoration: const BoxDecoration(color: GlobalColors.bgButton),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    "business".tr,
                    style: GlobalStyles.titleHeader(context),
                  ),
                ),
                customListTitle(
                    img: Icons.assignment_rounded,
                    title: 'businessSetting'.tr,
                    onTap: () =>
                        navigator?.pushNamed(RouteGenerator.shopinfoScreen)),
                // customListTitle(
                //   img: Icons.language,
                //   title: 'businessWebsite'.tr,
                // ),
                // customListTitle(
                //   img: Icons.credit_card,
                //   title: 'payment_method'.tr,
                // ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 15),
            decoration: const BoxDecoration(color: GlobalColors.bgButton),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Padding(
                //   padding: const EdgeInsets.only(left: 10),
                //   child: Text(
                //     "saleOptimization".tr,
                //     style: GlobalStyles.titleHeader(context),
                //   ),
                // ),
                // customListTitle(
                //   img: Icons.money,
                //   title: 'salesProcess'.tr,
                // ),
                // customListTitle(
                //   img: Icons.shopping_bag,
                //   title: 'productInfo'.tr,
                // ),
                customListTitle(
                  img: CupertinoIcons.news_solid,
                  title: 'invoidceForm'.tr,
                  onTap: () {
                    navigator!.pushNamed(
                      RouteGenerator.invoiceScreen,
                    );
                  },
                ),
                // customListTitle(
                //   img: Icons.scoreboard,
                //   title: 'accumulateCustomer'.tr,
                // ),
                // customListTitle(
                //   img: CupertinoIcons.paperplane,
                //   title: 'messageSettings'.tr,
                // ),
              ],
            ),
          ),
          // Container(
          //   padding: const EdgeInsets.only(top: 15),
          //   decoration: const BoxDecoration(color: GlobalColors.bgButton),
          //   child: Column(
          //     crossAxisAlignment: CrossAxisAlignment.start,
          //     children: [
          //       Padding(
          //         padding: const EdgeInsets.only(left: 10),
          //         child: Text(
          //           "connect".tr,
          //           style: GlobalStyles.titleHeader(context),
          //         ),
          //       ),
          //       Card(
          //         child: ListTile(
          //           minLeadingWidth: 5,
          //           leading: const Icon(Icons.facebook,
          //               color: GlobalColors.flButtonColor),
          //           title: Text(
          //             "connectWithFB".tr,
          //             style: GlobalStyles.robotoRegular(context),
          //           ),
          //           trailing: const Icon(Icons.arrow_forward_ios, size: 16),
          //         ),
          //       ),
          //       Card(
          //         child: ListTile(
          //           minLeadingWidth: 5,
          //           leading: const Icon(Icons.luggage,
          //               color: GlobalColors.kGreyTextColor),
          //           title: Text(
          //             "connectWithShopee".tr,
          //             style: GlobalStyles.robotoRegular(context),
          //           ),
          //           trailing: const Icon(Icons.arrow_forward_ios, size: 16),
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
          Container(
            alignment: Alignment.centerRight,
            padding: const EdgeInsets.only(top: 15),
            decoration: const BoxDecoration(color: GlobalColors.bgButton),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    "other".tr,
                    style: GlobalStyles.titleHeader(context),
                  ),
                ),
                customListTitle(
                  img: Icons.print,
                  title: 'printerSetting'.tr,
                  onTap: () {
                    navigator!.pushNamed(RouteGenerator.printerScreen);
                  },
                ),
                // customListTitle(
                //   img: Icons.cloud_upload,
                //   title: 'dataBackup'.tr,
                // ),
                Card(
                  child: ListTile(
                    minLeadingWidth: 5,
                    leading: const Icon(Icons.fingerprint,
                        color: GlobalColors.primaryColor),
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "layerSecurity".tr,
                          style: GlobalStyles.titleRegular(context),
                        ),
                        Text(
                          "securityMethod".tr,
                          style: GlobalStyles.titilliumRegular(context),
                        ),
                      ],
                    ),
                    trailing: Switch(
                      value: light,
                      activeColor: GlobalColors.primaryColor,
                      onChanged: (bool value) {
                        setState(() {
                          light = value;
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 15),
            decoration: const BoxDecoration(color: GlobalColors.bgButton),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Card(
                  child: ListTile(
                    minLeadingWidth: 5,
                    leading: const Icon(Icons.luggage,
                        color: GlobalColors.kGreyTextColor),
                    title: Text(
                      "businessDelete".tr,
                      style: GlobalStyles.robotoRegular(context),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    ));
  }

  MyAppBar buildAppBar(BuildContext context) {
    return MyAppBar(
      isShowBackButton: true,
      backgroundColor: GlobalColors.bgWebColor,
      title: Text(
        'businessSetting'.tr,
        style: GlobalStyles.titleHeader(context).copyWith(
            fontSize: 18,
            color: GlobalColors.primaryWebColor,
            fontWeight: FontWeight.w500),
      ),
    );
  }
}
