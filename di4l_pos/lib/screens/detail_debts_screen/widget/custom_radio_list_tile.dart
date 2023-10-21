import 'package:di4l_pos/common/dimensions.dart';
import 'package:flutter/material.dart';

class CustomRadioListTile<T> extends StatelessWidget {
  final T value;
  final T groupValue;
  final Widget? widget;
  final ValueChanged<T?> onChanged;
  final String? title;
  final String? date;

  const CustomRadioListTile({
    Key? key,
    required this.value,
    required this.groupValue,
    required this.onChanged,
    this.title,
    this.widget,
    this.date,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final title = this.title;
    return InkWell(
      onTap: () => onChanged(value),
      child: Container(
        decoration:
            const BoxDecoration(border: Border(bottom: BorderSide(width: 0.1))),
        height: 56,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            widget ??
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: title,
                      ),
                      WidgetSpan(
                        child: SizedBox(width: 10),
                      ),
                      WidgetSpan(
                        child: Icon(
                          Icons.calendar_month,
                          size: Dimensions.ICON_SIZE_SMALL,
                        ),
                      ),
                      TextSpan(
                        text: date,
                      )
                    ],
                  ),
                ),
            Radio(
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              value: value,
              groupValue: groupValue,
              onChanged: onChanged,
            )
          ],
        ),
      ),
    );
  }
}
