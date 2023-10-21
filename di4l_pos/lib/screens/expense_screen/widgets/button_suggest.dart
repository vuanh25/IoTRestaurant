import 'package:flutter/material.dart';

class ButtonSuggest extends StatelessWidget {
  const ButtonSuggest({
    Key? key,
    required this.id,
    required this.text,
    required this.onTextInput,
    required this.idChange,
  }) : super(key: key);
  final int id;
  final String text;
  final ValueSetter<String> onTextInput;
  final ValueSetter<int> idChange;

  @override
  Widget build(BuildContext context) {
    return Padding(
      key: Key('$id'),
      padding: const EdgeInsets.only(top: 4.0, right: 8.0),
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
            side: const BorderSide(
              color: Color(0xffF2F3F5),
            ),
            backgroundColor: const Color(0xffF2F3F5),
            foregroundColor: const Color(0xffF4F3F2)),
        onPressed: () {
          onTextInput.call(text);
          idChange.call(id);
        },
        child: Text(
          text,
          style: const TextStyle(color: Color(0xff83888C), fontSize: 12),
        ),
      ),
    );
  }
}
