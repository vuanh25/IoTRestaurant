import 'package:di4l_pos/common/global_styles.dart';
import 'package:flutter/material.dart';

class HomeCategoryWidget extends StatelessWidget {
  /// MARK: - Initials;
  final String? title;

  const HomeCategoryWidget({Key? key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 10.0),
        Text(title ?? '', style: GlobalStyles.boldStyle.copyWith(fontSize: 20)),
      ],
    );
  }
}
