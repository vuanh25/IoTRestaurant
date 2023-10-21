import 'package:flutter/material.dart';

import '../common/global_colors.dart';

class SearchWidget extends StatelessWidget {
  /// MARK: - Initials;
  final Function(String?)? onChange;
  final VoidCallback? onPressedFilter;
  final String? hintText;
  final TextEditingController? controller;
  final bool? isShowFilter;
  final Widget? prefixIcon;
  final bool? isShowBoder;
  final Function()? onTap;
  final Function(String)? onSubmitted;
  const SearchWidget(
      {Key? key,
      this.onChange,
      this.onPressedFilter,
      this.hintText,
      this.controller,
      this.isShowFilter = false,
      t,
      this.prefixIcon,
      this.isShowBoder,
      this.onTap,
      this.onSubmitted})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: const EdgeInsets.all(8.0),
      padding: const EdgeInsets.only(right: 1, top: 2, bottom: 2),
      decoration: BoxDecoration(
        color: GlobalColors.bgSearch,
        borderRadius: const BorderRadius.all(Radius.circular(8.0)),
        border: (isShowBoder ?? true)
            ? Border.all(
                color: GlobalColors
                    .primaryColor, //                   <--- border color
                width: 1.5,
              )
            : null,
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
        child: TextField(
          onSubmitted: onSubmitted,
          onTap: onTap,
          controller: controller,
          onChanged: onChange,
          cursorColor: GlobalColors.primaryColor,
          textAlignVertical: TextAlignVertical.center,
          decoration: InputDecoration(
            focusedBorder:
                const OutlineInputBorder(borderSide: BorderSide.none),
            errorBorder: InputBorder.none,
            floatingLabelBehavior: FloatingLabelBehavior.always,
            fillColor: GlobalColors.primaryColor,
            contentPadding: const EdgeInsets.only(bottom: 8.0, right: 5.0),
            enabledBorder:
                const OutlineInputBorder(borderSide: BorderSide.none),

            hintText: hintText ?? '',

            prefixIcon: prefixIcon,
            hintStyle: const TextStyle(color: Colors.grey),
            // prefixIcon: const Icon(Icons.search),
            suffixIcon: (isShowFilter ?? false)
                ? GestureDetector(
                    onTap: () {
                      if (onPressedFilter != null) {
                        onPressedFilter!();
                      }
                    },
                    behavior: HitTestBehavior.opaque,
                    child: Container(
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: GlobalColors.primaryColor,
                      ),
                      child: const Icon(
                        Icons.filter_list,
                        color: Colors.white,
                      ),
                    ),
                  )
                : null,
          ),
        ),
      ),
    );
  }
}
