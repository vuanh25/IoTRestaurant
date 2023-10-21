import 'package:di4l_pos/common/dimensions.dart';
import 'package:di4l_pos/common/global_colors.dart';
import 'package:flutter/material.dart';

class SearchWidgetContact extends StatefulWidget {
  final Function(String?)? onChange;
  final String? hintText;
  final TextEditingController? controller;

  const SearchWidgetContact({
    Key? key,
    this.onChange,
    this.hintText,
    this.controller,
  }) : super(key: key);

  @override
  State<SearchWidgetContact> createState() => _SearchWidgetContactState();
}

class _SearchWidgetContactState extends State<SearchWidgetContact> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      margin: const EdgeInsets.symmetric(horizontal: Dimensions.MARGIN_SIZE_LARGE),
      decoration: const BoxDecoration(
        color: GlobalColors.bgColor,
      ),
      child: TextField(
        autofocus: true,
        controller: widget.controller,
        onChanged: widget.onChange,
        textAlignVertical: TextAlignVertical.center,
        decoration: InputDecoration(
            contentPadding: const EdgeInsets.only(left: 20),
            border: const OutlineInputBorder(),
            hintText: widget.hintText ?? '',
            hintStyle: const TextStyle(color: Colors.grey),
            suffixIcon: widget.controller!.text.isNotEmpty
                ? IconButton(
                    icon: const Icon(
                      Icons.cancel,
                      size: Dimensions.ICON_SIZE_SMALL,
                    ),
                    onPressed: () {
                      widget.controller!.clear();
                      setState(() {});
                    })
                : null),
      ),
    );
  }
}
