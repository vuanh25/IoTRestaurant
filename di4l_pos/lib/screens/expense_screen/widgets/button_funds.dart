import 'package:flutter/material.dart';

class ButtonFunds extends StatelessWidget {
  const ButtonFunds({
    Key? key,
    required this.id,
    required this.text,
    required this.onTextInput,
    required this.idChange,
  }) : super(key: key);
  final int id;
  final String text;
  final ValueSetter<String> onTextInput;
  final ValueChanged<int> idChange;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.fromLTRB(5, 0, 5, 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(
            width: 1,
            color: const Color(0xffE1E1E1),
          ),
        ),
        child: TextButton(
          onPressed: () {
            onTextInput.call(text);
            idChange.call(id);
            Navigator.of(context).pop(true);
          },
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: const TextStyle(color: Color(0xff606569), fontSize: 12),
          ),
        ));
  }
}
