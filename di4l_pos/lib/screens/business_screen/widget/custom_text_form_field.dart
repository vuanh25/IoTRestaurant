// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: file_names, must_be_immutable

import 'package:di4l_pos/common/global_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class CustomTextFormField extends StatelessWidget {
  final String? title;
  final String? hintText;
  final IconData? icon;
  final Function(String)? onChanged;
  final TextEditingController? controller;
  final Widget? widget;
  final Widget? suffix;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;

  const CustomTextFormField({
    Key? key,
    this.title,
    this.hintText,
    this.icon,
    this.onChanged,
    this.controller,
    this.widget,
    this.suffix,
    this.keyboardType,
    this.inputFormatters,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      inputFormatters: inputFormatters,
      onChanged: onChanged,
      decoration: InputDecoration(
          labelText: title,
          // ignore: prefer_const_constructors
          floatingLabelStyle: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black.withOpacity(0.7),
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
              color: GlobalColors.primaryColor,
            ),
          ),
          suffix: suffix,
          suffixStyle: const TextStyle(color: Colors.black),
          icon: widget ??
              (icon != null
                  ? Icon(icon, color: const Color(0xff434345))
                  : null),
          hintText: hintText,
          hintStyle: const TextStyle(color: Color(0xff9DA1A4), fontSize: 14),
          floatingLabelBehavior: FloatingLabelBehavior.always),
      cursorColor: const Color.fromARGB(255, 6, 154, 77),
    );
  }
}
