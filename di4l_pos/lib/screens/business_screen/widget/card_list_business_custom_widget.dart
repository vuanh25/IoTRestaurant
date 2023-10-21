import 'package:di4l_pos/common/global_colors.dart';
import 'package:flutter/material.dart';

class InfoBusinessWidget extends StatelessWidget {
  final String title;
  final IconData? iconLeading;
  final Widget widget;
  final bool visible;
  final Function()? onTap;

  const InfoBusinessWidget({
    Key? key,
    required this.title,
    required this.widget,
    required this.visible,
    this.onTap,
    this.iconLeading,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
            child: ListTile(
                leading: Icon(
                  iconLeading,
                  color: GlobalColors.primaryColor,
                ),
                minLeadingWidth: 0,
                dense: true,
                title: Text(title),
                trailing: Icon(
                    !visible ? Icons.arrow_drop_down : Icons.arrow_drop_up),
                // tileColor: Colors.grey.withOpacity(0.4),
                tileColor: Colors.white,
                onTap: onTap)),
        Visibility(visible: visible, child: widget),
      ],
    );
  }
}
