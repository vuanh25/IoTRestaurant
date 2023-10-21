import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/models/notifications/response/notification_response.dart';
import 'package:flutter/material.dart';

class NotificationWidget extends StatelessWidget {
  /// MARK: - Initials;
  final NotificationModel? notification;
  final Function(NotificationModel?)? onPresseed;

  const NotificationWidget(
      {Key? key, this.notification, required this.onPresseed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (onPresseed != null) {
          onPresseed!(notification);
        }
      },
      behavior: HitTestBehavior.opaque,
      child: Container(
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.grey, width: 0.5),
            borderRadius: BorderRadius.all(Radius.circular(8.0))),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Icon
            Container(
              height: 40.0,
              width: 40.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: GlobalColors.kDarkWhite,
              ),
              child: Center(
                child: GestureDetector(
                  onTap: () {},
                  child: Icon(
                    Icons.notifications_active,
                    color: GlobalColors.primaryColor,
                  ),
                ),
              ),
            ),

            /// Detail
            const SizedBox(width: 8.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    notification?.msg ?? '',
                    style: const TextStyle(fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 8.0),
                  Text(
                    notification?.createdAt ?? '',
                    style: const TextStyle(color: Colors.grey),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
