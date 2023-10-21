import 'package:di4l_pos/common/dimensions.dart';
import 'package:flutter/material.dart';

class SocialButtonDesktop extends StatelessWidget {
  /// MARK: - Initials;
  final String? logo;
  final String? title;
  final VoidCallback? onPressed;

  const SocialButtonDesktop({
    Key? key,
    this.logo,
    this.title,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {
          if (onPressed != null) {
            onPressed!();
          }
        },
        behavior: HitTestBehavior.opaque,
        child: Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
            border: Border.all(
                color: Colors.grey[200]!, width: Dimensions.BORDER_DEFAULT),
          ),
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            logo ?? '',
            width: 44,
            height: 44,
          ),
        ),
      ),
    );
  }
}
