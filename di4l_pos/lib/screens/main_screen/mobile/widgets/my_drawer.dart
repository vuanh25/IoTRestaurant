// ignore_for_file: deprecated_member_use

import 'package:cached_network_image/cached_network_image.dart';
import 'package:di4l_pos/common/dimensions.dart';
import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/common/global_constants.dart';
import 'package:di4l_pos/common/global_images.dart';
import 'package:di4l_pos/common/global_styles.dart';
import 'package:di4l_pos/enums/position.dart';
import 'package:di4l_pos/route_generator.dart';
import 'package:di4l_pos/screens/business_screen/cubit/business_cubit.dart';
import 'package:di4l_pos/screens/get_link_screen/get_link_screen.dart';
import 'package:di4l_pos/screens/settings_screen/cubit/settings_cubit.dart';
import 'package:di4l_pos/widgets/error_image_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:url_launcher/url_launcher.dart';

class MyDrawar extends StatelessWidget {
  const MyDrawar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        child: ListView(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                listBusiness(context),
                listChooseOptions(context),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Expanded listChooseOptions(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BlocBuilder<BusinessCubit, BusinessState>(builder: (context, state) {
            GlobalConstants.idBusiness = state.data!.business?.businessId;
            return TextIcon(
              text: state.data!.business?.name ?? 'Loading ...',
              textStyle: GlobalStyles.robotoBold(context).copyWith(
                color: Colors.black,
                fontSize: 16,
              ),
              prefix: SizedBox(
                height: 40,
                width: 40,
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(20.0)),
                  child: CachedNetworkImage(
                    imageUrl: '',
                    errorWidget: (context, url, error) =>
                        const ErrorWidgetImage(),
                  ),
                ),
              ),
            );
          }),
          // Image.asset(
          //   GlobalImages.homeBanner1,
          //   width: Get.width * .9,
          //   height: Get.height * .1,
          //   fit: BoxFit.cover,
          // ),
          // ListTile(
          //   minLeadingWidth: 5,
          //   leading: const Icon(Icons.card_giftcard,
          //       color: GlobalColors.primaryColor),
          //   title: Text(
          //     'redeemPoint'.tr,
          //     style: GlobalStyles.robotoRegular(context),
          //   ),
          // ),
          // ListTile(
          //   minLeadingWidth: 5,
          //   leading:
          //       const Icon(Icons.recycling, color: GlobalColors.primaryColor),
          //   title: Text(
          //     'receiveGifts'.tr,
          //     style: GlobalStyles.robotoRegular(context),
          //   ),
          // ),
          InkWell(
            onTap: () =>
                navigator!.pushNamed(RouteGenerator.businessSettingsScreen),
            child: ListTile(
              minLeadingWidth: 5,
              leading: const Icon(Icons.room_preferences_outlined,
                  color: GlobalColors.primaryColor),
              title: Text(
                'businessSetting'.tr,
                style: GlobalStyles.robotoRegular(context),
              ),
            ),
          ),
          InkWell(
            onTap: () =>
                navigator!.pushNamed(RouteGenerator.locationSettingsScreen),
            child: ListTile(
              minLeadingWidth: 5,
              leading: const Icon(Icons.room_preferences_outlined,
                  color: GlobalColors.primaryColor),
              title: Text(
                'business_location_prefix'.tr,
                style: GlobalStyles.robotoRegular(context),
              ),
            ),
          ),
          // ListTile(
          //   minLeadingWidth: 5,
          //   leading: const Icon(Icons.credit_score,
          //       color: GlobalColors.primaryColor),
          //   title: Text(
          //     'bankAccount'.tr,
          //     style: GlobalStyles.robotoRegular(context),
          //   ),
          // ),
          Divider(
            color: Colors.grey.withOpacity(0.2),
            thickness: 10,
          ),
          // ListTile(
          //   minLeadingWidth: 5,
          //   leading: const Icon(Icons.star_border_outlined,
          //       color: GlobalColors.primaryColor),
          //   title: Text(
          //     'appReviews'.tr,
          //     style: GlobalStyles.robotoRegular(context),
          //   ),
          // ),
          InkWell(
            onTap: () => launch('https://di4l.vn/knowledge'),
            child: ListTile(
              minLeadingWidth: 5,
              leading: const Icon(Icons.play_circle_outline,
                  color: GlobalColors.primaryColor),
              title: Text(
                'userManual'.tr,
                style: GlobalStyles.robotoRegular(context),
              ),
            ),
          ),
          const GetLinkScreen(
            position: Position.SYSTEM,
          ),
          // ListTile(
          //   minLeadingWidth: 5,
          //   leading:
          //       const Icon(Icons.lightbulb, color: GlobalColors.primaryColor),
          //   title: Text(
          //     'semiProTip'.tr,
          //     style: GlobalStyles.robotoRegular(context),
          //   ),
          // ),
          // ListTile(
          //   minLeadingWidth: 5,
          //   leading: const Icon(Icons.chat_bubble_outline_sharp,
          //       color: GlobalColors.primaryColor),
          //   title: Text(
          //     'support'.tr,
          //     style: GlobalStyles.robotoRegular(context),
          //   ),
          // ),
          Divider(
            color: Colors.grey.withOpacity(0.2),
            thickness: 10,
          ),
          InkWell(
            onTap: () =>
                navigator!.pushNamed(RouteGenerator.changeLanguageScreen),
            child: ListTile(
              minLeadingWidth: 5,
              leading: const Icon(Icons.language_outlined,
                  color: GlobalColors.primaryColor),
              title: Text(
                'languages'.tr,
                style: GlobalStyles.robotoRegular(context),
              ),
            ),
          ),
          InkWell(
            onTap: () => BlocProvider.of<SettingsCubit>(context).logout(),
            child: ListTile(
              minLeadingWidth: 5,
              leading:
                  const Icon(Icons.logout, color: GlobalColors.primaryColor),
              title: Text(
                'logout'.tr,
                style: GlobalStyles.robotoRegular(context),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container listBusiness(BuildContext context) {
    return Container(
      width: Get.width * 0.16,
      height: Get.height,
      decoration: BoxDecoration(
        border: Border(
            right: BorderSide(
          width: 1,
          color: Colors.grey.withOpacity(0.3),
        )),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          BlocBuilder<BusinessCubit, BusinessState>(builder: (context, state) {
            return SizedBox(
              height: Get.height * 0.78,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Column(
                      children:
                          List.generate(state.data!.accounts.length, (index) {
                        if (state.data!.accounts[index].getName() !=
                            state.data!.business?.name) {
                          return InkWell(
                            onTap: () => context
                                .read<BusinessCubit>()
                                .postSwitchAccount(
                                    id: state.data!.accounts[index].userId!),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 40,
                                  width: 40,
                                  child: ClipRRect(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(20.0)),
                                    child: CachedNetworkImage(
                                      imageUrl:
                                          state.data!.accounts[index].bLogo(),
                                      errorWidget: (context, url, error) =>
                                          const ErrorWidgetImage(),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 5),
                                FittedBox(
                                  fit: BoxFit.scaleDown,
                                  child: Text(
                                    state.data!.accounts[index].getName(),
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(fontSize: 10),
                                  ),
                                )
                              ],
                            ),
                          );
                        } else {
                          return const SizedBox.shrink();
                        }
                      }),
                    ),
                    const SizedBox(height: 5),
                    ElevatedButton(
                      onPressed: () {
                        BlocProvider.of<BusinessCubit>(context)
                            .changedAccount();
                      },
                      child: Icon(Icons.add, color: Colors.white),
                      style: ElevatedButton.styleFrom(
                        shape: CircleBorder(),
                        padding: EdgeInsets.all(10),
                        backgroundColor:
                            GlobalColors.primaryColor, // <-- Button color
                        foregroundColor: Colors.red,
                        // <-- Splash color
                      ),
                    )
                  ],
                ),
              ),
            );
          }),
          InkWell(
            onTap: () => navigator!.pushNamed(RouteGenerator.profileScreen),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.settings_outlined, size: 24),
                Text('accountSettings'.tr,
                    textAlign: TextAlign.center,
                    style: GlobalStyles.robotoBold(context).copyWith(
                      fontSize: Dimensions.FONT_SIZE_SMALL,
                      fontWeight: FontWeight.w400,
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
