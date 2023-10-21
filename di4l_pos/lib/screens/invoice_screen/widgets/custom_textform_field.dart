import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    Key? key,
    this.controller,
    this.onChange,
    this.label,
    this.icon,
    this.hintText,
  }) : super(key: key);

  final TextEditingController? controller;
  final Function(String)? onChange;
  final String? label;
  final IconData? icon;
  final String? hintText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      onChanged: onChange,
      decoration: InputDecoration(
          labelText: label ?? '',
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
          icon: Icon(icon, color: const Color(0xff434345)),
          hintText: hintText,
          hintStyle: const TextStyle(color: Color(0xff9DA1A4), fontSize: 14),
          floatingLabelBehavior: FloatingLabelBehavior.always),
      cursorColor: const Color.fromARGB(255, 6, 154, 77),
    );
  }
}
