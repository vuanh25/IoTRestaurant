import 'package:flutter/material.dart';

class NotificationIconWidget extends StatelessWidget {
  /// MARK: - Initials;
  final VoidCallback? onPressed;

  const NotificationIconWidget({Key? key, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (onPressed != null) {
          onPressed!();
        }
      },
      behavior: HitTestBehavior.opaque,
      child: Stack(
        children: [
          const Icon(
            Icons.notifications,
            color: Colors.white,
          ),
          Positioned(
            right: 2,
            child: Container(
              height: 8,
              width: 8,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.red,
              ),
            ),
          )
        ],
      ),
    );
  }
}
