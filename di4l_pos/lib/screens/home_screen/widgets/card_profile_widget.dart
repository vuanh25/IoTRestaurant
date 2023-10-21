import 'package:di4l_pos/common/global_images.dart';
import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/common/global_obs.dart';
import 'package:di4l_pos/common/global_styles.dart';
import 'package:di4l_pos/route_generator.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/route_manager.dart';

class CardProfileWidget extends StatelessWidget {
  /// MARK: - Initials;
  const CardProfileWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        navigator!.pushNamed(RouteGenerator.profileScreen);
      },
      behavior: HitTestBehavior.opaque,
      child: Card(
        elevation: 3.0,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              GestureDetector(
                onTap: () {},
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  child: Image(
                    image: AssetImage(GlobalImages.placeholderImage),
                    height: 42,
                    width: 42,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(width: 10.0),

              ///
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Obx(() {
                    return Text(
                      '${GlobalObs.firstName.value} ${GlobalObs.lastName.value}',
                      style: GlobalStyles.boldStyle.copyWith(fontSize: 17),
                      overflow: TextOverflow.ellipsis,
                    );
                  }),
                  const SizedBox(height: 8.0),
                  Obx(() {
                    return Text(
                      GlobalObs.email.value,
                      overflow: TextOverflow.ellipsis,
                    );
                  }),
                ],
              ),
              Spacer(),
              // Container(
              //   height: 40.0,
              //   width: 86.0,
              //   decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(10.0),
              //     color: Color(0xFFD9DDE3).withOpacity(0.5),
              //   ),
              //   child: Center(
              //     child: Text(
              //       '\$ 450',
              //     ),
              //   ),
              // ),

              /// Notifications
              const SizedBox(width: 10.0),
              Container(
                height: 40.0,
                width: 40.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: GlobalColors.kDarkWhite,
                ),
                child: Center(
                  child: GestureDetector(
                    onTap: () {
                      navigator!.pushNamed(RouteGenerator.notificationsScreen);
                    },
                    child: Icon(
                      Icons.notifications_active,
                      color: GlobalColors.primaryColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
