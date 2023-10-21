import 'package:di4l_pos/common/extensions/limit_value_textfield.dart';
import 'package:flutter/material.dart';

class TextFieldInput extends StatefulWidget {
  const TextFieldInput({
    Key? key,
    required this.labelText,
    required this.controller,
  }) : super(key: key);
  final String labelText;
  final TextEditingController controller;
  @override
  State<TextFieldInput> createState() => _TextFieldInputState();
}

class _TextFieldInputState extends State<TextFieldInput> {
  String calc = '';
  @override
  void initState() {
    // widget.controller = TextEditingController();
    super.initState();
  }

  // void _insertText(String myText) {
  //   final text = widget.controller.text;

  //   if (calc != '') {
  //     calc += myText;
  //   } else {
  //     switch (myText) {
  //       case '+':
  //         break;
  //       case '-':
  //         break;

  //       case 'x':
  //         break;

  //       case '÷':
  //         calc += '$text $myText';
  //         break;
  //       case '=':
  //         break;
  //       default:
  //         {
  //           final textSelection = widget.controller.selection;
  //           final newText = text.replaceRange(
  //             textSelection.start,
  //             textSelection.end,
  //             myText,
  //           );
  //           final myTextLength = myText.length;
  //           widget.controller.text = newText;
  //           widget.controller.selection = textSelection.copyWith(
  //             baseOffset: textSelection.start + myTextLength,
  //             extentOffset: textSelection.start + myTextLength,
  //           );
  //           break;
  //         }
  //     }
  //   }
  // }

  void clearText() {
    calc = '';
    widget.controller.clear();
    widget.controller.text = "0";
  }

  void _insertSuggest(String myText) {
    final newText = myText;
    widget.controller.text = newText;
    widget.controller.selection =
        TextSelection.fromPosition(TextPosition(offset: newText.length));
  }

  void _backspace() {
    final text = widget.controller.text;
    final textSelection = widget.controller.selection;
    final selectionLength = textSelection.end - textSelection.start;

    // There is a selection.
    if (selectionLength > 0) {
      final newText = text.replaceRange(
        textSelection.start,
        textSelection.end,
        '',
      );
      widget.controller.text = newText;
      widget.controller.selection = textSelection.copyWith(
        baseOffset: textSelection.start,
        extentOffset: textSelection.start,
      );
      return;
    }

    // The cursor is at the beginning.
    if (textSelection.start == 0) {
      return;
    }

    // Delete the previous character
    final previousCodeUnit = text.codeUnitAt(textSelection.start - 1);
    final offset = _isUtf16Surrogate(previousCodeUnit) ? 2 : 1;
    final newStart = textSelection.start - offset;
    final newEnd = textSelection.start;
    final newText = text.replaceRange(
      newStart,
      newEnd,
      '',
    );
    widget.controller.text = newText;
    widget.controller.selection = textSelection.copyWith(
      baseOffset: newStart,
      extentOffset: newStart,
    );
  }

  bool _isUtf16Surrogate(int value) {
    return value & 0xF800 == 0xD800;
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      // onTap: () {
      //   FocusScope.of(context).requestFocus(FocusNode());
      //   Scaffold.of(context).showBottomSheet((BuildContext context) {
      //     return Keyboard(
      //       onClear: () {
      //         clearText();
      //       },
      //       onTextInput: (myText) {
      //         _insertText(myText);
      //       },
      //       onSuggestInput: (myText) {
      //         _insertSuggest(myText);
      //       },
      //       onBackspace: () {
      //         _backspace();
      //       },
      //     );
      //   });
      // },
      keyboardType: TextInputType.number,
      // inputFormatters: [MoneyFormatter()],
      decoration: InputDecoration(
        labelText: widget.labelText,
        labelStyle: const TextStyle(color: Color(0xff108742), fontSize: 18),
        errorStyle: const TextStyle(color: Color(0xff505B5F)),
        errorBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            width: 1,
            color: Color.fromARGB(255, 3, 162, 85),
          ),
        ),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            width: 1,
            color: Color.fromARGB(255, 3, 162, 85),
          ),
        ),
      ),
      cursorColor: const Color.fromARGB(255, 6, 154, 77),
      style: const TextStyle(
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
