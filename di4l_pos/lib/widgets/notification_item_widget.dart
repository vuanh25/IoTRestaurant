import 'package:di4l_pos/common/global_colors.dart';
import 'package:flutter/material.dart';

class NotificationItemWidget extends StatelessWidget {
  /// MARK: - Initials;
  final bool? hasNotify;

  const NotificationItemWidget({
    Key? key,
    this.hasNotify = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.notifications,
            color: Colors.grey,
          ),
        ),
        if (hasNotify ?? false)
          Positioned(
            top: 8,
            right: 8,
            child: Container(
              width: 10,
              height: 10,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: GlobalColors.bgWebMenuColor,
              ),
            ),
          )
      ],
    );
  }
}
