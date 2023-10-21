import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/common/global_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../common/dimensions.dart';

class CustomTextField extends StatelessWidget {
  /// MARK: - Initials;
  final String? hintLabel;
  final bool isShowPass;
  final bool? isObscure;
  final VoidCallback? onPressedObscure;
  final VoidCallback? onTap;
  final FormFieldValidator<String>? validator;
  final bool isEnable;
  final TextInputType? keyboardKey;
  final List<TextInputFormatter>? inputFormatters;
  final TextEditingController? controller;
  final TextInputAction? textInputAction;
  final Widget? prefixIcon;
  final bool readOnly;
  final String? hintText;
  final String? redLabel;
  final FocusNode? myFocusNode = FocusNode();
  final String? errorText;
  final Widget? suffixIcon;
  final int? maxLength;
  final Function(String?)? onchanged;
  CustomTextField({
    Key? key,
    this.redLabel,
    this.hintText,
    this.hintLabel,
    this.isShowPass = false,
    this.controller,
    this.isObscure = false,
    this.onPressedObscure,
    this.onTap,
    this.validator,
    this.isEnable = true,
    this.keyboardKey,
    this.inputFormatters,
    this.textInputAction,
    this.prefixIcon,
    this.readOnly = false,
    this.suffixIcon,
    this.errorText,
    this.maxLength,
    this.onchanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(primarySwatch: Colors.green),
      child: TextFormField(
        key: key,
        scrollPadding:
            EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        focusNode: myFocusNode,
        validator: validator,
        onTap: onTap,
        controller: controller,
        obscureText: isShowPass,
        keyboardType: keyboardKey,
        inputFormatters: inputFormatters,
        textInputAction: textInputAction,
        readOnly: readOnly,
        maxLength: maxLength,
        onChanged: (value) => onchanged!(value),
        style: const TextStyle(
          fontSize: Dimensions.FONT_SIZE_DEFAULT,
        ),
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.only(bottom: 0.0),
          fillColor: GlobalColors.primaryColor,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          hintText: hintText ?? '',
          enabled: isEnable,

          hintStyle: TextStyle(
            height: 1,
            color: Colors.grey[400],
            fontSize: Dimensions.FONT_SIZE_DEFAULT,
            fontFamily: 'Roboto',
          ),
          // labelText: hintLabel,
          label: Column(
            children: [
              Row(
                children: [
                  Text(
                    hintLabel ?? "",
                    style: GlobalStyles.titilliumBold(context),
                    textScaleFactor: 1.5,
                  ),
                  Text(
                    redLabel ?? "",
                    style: const TextStyle(color: Colors.red),
                  ),
                ],
              ),
            ],
          ),
          errorText: errorText,
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          //  isObscure == true
          //     ? IconButton(
          //         onPressed: () => onPressedObscure!(),
          //         icon: Icon(
          //           isShowPass ? Icons.visibility_off : Icons.visibility,
          //         ),
          //       )
          //     : null,
        ),
      ),
    );
  }
}
