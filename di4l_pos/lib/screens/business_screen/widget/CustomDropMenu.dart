// ignore_for_file: must_be_immutable, depend_on_referenced_packages

import 'package:di4l_pos/common/global_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class CustomDropdown extends StatelessWidget {
  List<String>? listItem = [];
  final String? info;
  Icon? headIcon, footIcon;
  final String? title;
  String? hint;
  ValueChanged<String?> onChanged;
  CustomDropdown(
      {Key? key,
      required this.listItem,
      this.title,
      this.hint,
      required this.info,
      this.headIcon,
      this.footIcon,
      required this.onChanged})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      value: info,
      hint: Text(hint!),
      icon: const Visibility(visible: false, child: Icon(Icons.arrow_downward)),
      items: listItem!.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(
            value.tr,
            style: const TextStyle(fontSize: 16),
          ),
        );
      }).toList(),
      onChanged: onChanged,
      decoration: InputDecoration(
          labelText: title,
          // ignore: prefer_const_constructors
          floatingLabelStyle: TextStyle(
              fontWeight: FontWeight.bold,
              color: const Color(0xff49545C),
              fontSize: 18),
          labelStyle: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Color(0xff49545C),
              fontSize: 18),
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(
              width: 1,
              color: Color(0xffDFDFDF),
            ),
          ),
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(
              width: 1,
              color: Color.fromARGB(255, 3, 162, 85),
            ),
          ),
          icon: headIcon,
          suffixIcon: footIcon,
          hintText: hint!,
          hintStyle: const TextStyle(color: Color(0xff9DA1A4), fontSize: 14),
          floatingLabelBehavior: FloatingLabelBehavior.always),
    );
  }
}
