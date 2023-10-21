import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../common/global_colors.dart';
import '../common/global_styles.dart';

class CustomDropDown extends StatelessWidget {
  /// MARK: - Initials;
  final String labelText;
  final String value;
  final List<String> items;
  final ValueChanged<String?> onChanged;
  const CustomDropDown({
    Key? key,
    required this.labelText,
    required this.value,
    required this.items,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InputDecorator(
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(vertical: 1.0),
        labelText: labelText,
        labelStyle: const TextStyle(color: Colors.black),

        //border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.0)),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: value,
          hint: const Text('Please Selected'),
          icon: const Icon(Icons.arrow_drop_down),
          iconSize: 24,
          elevation: 16,
          onChanged: onChanged,
          items: items.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(
                value.tr,
                style: const TextStyle(fontWeight: FontWeight.w100),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}

class CustomDropDownWithT<T> extends StatelessWidget {
  /// MARK: - Initials;
  final String? labelText;
  final List<DropdownMenuItem<T>> items;
  final T? value;
  final ValueChanged<T?> onChanged;
  const CustomDropDownWithT({
    Key? key,
    this.labelText,
    required this.items,
    required this.value,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InputDecorator(
      decoration: InputDecoration(
        fillColor: GlobalColors.primaryColor,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        label: Text(
          labelText ?? "",
          style: GlobalStyles.titilliumBold(context),
          textScaleFactor: 1.5,
        ),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<T>(
          value: value,
          hint: Text('please_select'.tr),
          icon: const Icon(Icons.arrow_drop_down),
          iconSize: 24,
          elevation: 16,
          items: items,
          onChanged: onChanged,
        ),
      ),
    );
  }
}
