import 'package:di4l_pos/common/global_colors.dart';
import 'package:flutter/material.dart';

class CustomRadioListTile<T> extends StatelessWidget {
  final T value;
  final T? groupValue;
  final String title;
  final IconData icon;
  final Color backgroundColor;
  final Color color;

  final ValueChanged<T?> onChanged;

  const CustomRadioListTile({
    Key? key,
    required this.value,
    required this.groupValue,
    required this.onChanged,
    required this.title,
    required this.icon,
    required this.backgroundColor,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final title = this.title;
    final isSelected = value == groupValue;

    return InkWell(
      onTap: () => onChanged(value),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.43,
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        margin: EdgeInsets.symmetric(vertical: 5),
        decoration: BoxDecoration(
          color: isSelected ? backgroundColor : null,
          borderRadius: BorderRadius.circular(8),
          border: isSelected
              ? Border.all(
                  color: color,
                )
              : null,
        ),
        child: Row(
          children: [
            Icon(icon, color: isSelected ? color : Colors.black),
            SizedBox(
              width: 10,
            ),
            Text(
              title,
              style: TextStyle(
                color: isSelected ? color : GlobalColors.kGreyTextColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
