// ignore_for_file: prefer_const_constructors, duplicate_ignore, must_be_immutable, unrelated_type_equality_checks, depend_on_referenced_packages

import 'package:di4l_pos/common/global_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomTextField extends StatelessWidget{
  CustomTextField({Key? key, this.title, this.hint, this.info, this.onTap, this.isReadOnly, this.headIcon, this.footIcon}) : super(key: key);
  final String? title;
  final String? hint;
  String? info;
  bool? isReadOnly;
  VoidCallback? onTap;
  Icon? headIcon, footIcon;
  @override
  Widget build(BuildContext context) {
    var txt = TextEditingController(text: info);
    return TextFormField(
      controller: txt,
      readOnly: isReadOnly!,
      onTap: onTap,
      decoration: InputDecoration(
        labelText: title!,
        // ignore: prefer_const_constructors
        floatingLabelStyle: TextStyle(
          fontWeight: FontWeight.bold,
          color: Color(0xff49545C),
          fontSize: 18),
        labelStyle: TextStyle(
          fontWeight: FontWeight.bold,
          color: Color(0xff49545C),
          fontSize: 18),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            width: 1,
            color: Color(0xffDFDFDF),
          ),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            width: 1,
            color: Color.fromARGB(255, 3, 162, 85),
          ),
        ),
        suffixIcon: footIcon == null ? SvgPicture.asset(GlobalImages.transparent) : footIcon!,
        icon: headIcon == null ? SvgPicture.asset(GlobalImages.transparent) : headIcon!,
        hintText: hint!,
        hintStyle: TextStyle(color: Color(0xff9DA1A4), fontSize: 14),
        floatingLabelBehavior: FloatingLabelBehavior.always),
      cursorColor: Color.fromARGB(255, 6, 154, 77),
    );
  }
}

 