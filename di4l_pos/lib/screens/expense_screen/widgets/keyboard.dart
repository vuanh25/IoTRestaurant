import 'package:di4l_pos/widgets/custom_button/custom_keyboard_button.dart';
import 'package:flutter/material.dart';

class Keyboard extends StatelessWidget {
  const Keyboard(
      {Key? key,
      required this.onSuggestInput,
      required this.onTextInput,
      required this.onBackspace,
      required this.onClear})
      : super(key: key);
  final ValueSetter<String> onSuggestInput;
  final ValueSetter<String> onTextInput;
  final VoidCallback onBackspace, onClear;

  void _textSuggestHandler(String text) => onSuggestInput.call(text);

  void _textInputHandler(String text) => onTextInput.call(text);

  void _backspaceHandler() => onBackspace.call();

  void _clearHandler() => onClear.call();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(5, 0, 5, 10),
      height: MediaQuery.of(context).size.height / 2.2,
      child: Column(
        children: [
          buildSuggest(),
          buildRowOne(),
          buildRowTwo(),
          buildRowThree(),
          buildRowFour(),
          buildRowFive()
        ],
      ),
    );
  }

  Expanded buildSuggest() {
    return Expanded(
      child: Row(
        children: [
          CustomKeyBoard(text: '100.000', onTextInput: onTextInput),
          CustomKeyBoard(text: '200.000', onTextInput: onTextInput),
          CustomKeyBoard(text: '300.000', onTextInput: onTextInput),
        ],
      ),
    );
  }

  Expanded buildRowOne() {
    return Expanded(
      child: Row(
        children: [
          ClearKey(onClear: _clearHandler),
          CustomKeyBoard(
            text: '÷',
            onTextInput: _textInputHandler,
          ),
          CustomKeyBoard(
            text: 'X',
            onTextInput: _textInputHandler,
          ),
          BackspaceKey(
            onBackspace: _backspaceHandler,
          ),
        ],
      ),
    );
  }

  Expanded buildRowTwo() {
    return Expanded(
      child: Row(
        children: [
          CustomKeyBoard(
            text: '1',
            onTextInput: _textInputHandler,
            backgroundColor: Colors.white,
          ),
          CustomKeyBoard(
            text: '2',
            onTextInput: _textInputHandler,
            backgroundColor: Colors.white,
          ),
          CustomKeyBoard(
            text: '3',
            onTextInput: _textInputHandler,
            backgroundColor: Colors.white,
          ),
          CustomKeyBoard(
            text: '+',
            onTextInput: _textInputHandler,
          ),
        ],
      ),
    );
  }

  Expanded buildRowThree() {
    return Expanded(
      child: Row(
        children: [
          CustomKeyBoard(
            text: '4',
            onTextInput: _textInputHandler,
            backgroundColor: Colors.white,
          ),
          CustomKeyBoard(
            text: '5',
            onTextInput: _textInputHandler,
            backgroundColor: Colors.white,
          ),
          CustomKeyBoard(
            text: '6',
            onTextInput: _textInputHandler,
            backgroundColor: Colors.white,
          ),
          CustomKeyBoard(
            text: '-',
            onTextInput: _textInputHandler,
          ),
        ],
      ),
    );
  }

  Expanded buildRowFour() {
    return Expanded(
      child: Row(
        children: [
          CustomKeyBoard(
            text: '7',
            onTextInput: _textInputHandler,
            backgroundColor: Colors.white,
          ),
          CustomKeyBoard(
            text: '8',
            onTextInput: _textInputHandler,
            backgroundColor: Colors.white,
          ),
          CustomKeyBoard(
            text: '9',
            onTextInput: _textInputHandler,
            backgroundColor: Colors.white,
          ),
          CustomKeyBoard(
            text: '=',
            onTextInput: _textInputHandler,
          ),
        ],
      ),
    );
  }

  Expanded buildRowFive() {
    return Expanded(
      child: Row(
        children: [
          CustomKeyBoard(
            text: '0',
            onTextInput: _textInputHandler,
            backgroundColor: Colors.white,
          ),
          CustomKeyBoard(
            text: '00',
            onTextInput: _textInputHandler,
          ),
          CustomKeyBoard(
            text: '000',
            onTextInput: _textInputHandler,
          ),
          const CustomKeyBoard(
            text: 'OK',
            isOkButton: true,
            backgroundColor: Color(0xff1979F4),
            textColor: Colors.white,
          )
        ],
      ),
    );
  }
}

class ClearKey extends StatelessWidget {
  const ClearKey({
    Key? key,
    required this.onClear,
    this.flex = 1,
  }) : super(key: key);

  final VoidCallback onClear;
  final int flex;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex,
      child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: ElevatedButton(
              onPressed: () {
                onClear.call();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xffE8E9EB),
              ),
              child: const Text(
                'C',
                style: TextStyle(color: Colors.black),
              ))),
    );
  }
}

class BackspaceKey extends StatelessWidget {
  const BackspaceKey({
    Key? key,
    required this.onBackspace,
    this.flex = 1,
  }) : super(key: key);

  final VoidCallback onBackspace;
  final int flex;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: ElevatedButton(
            onPressed: () {
              onBackspace.call();
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xffE8E9EB),
            ),
            child: const Icon(
              Icons.backspace_outlined,
              color: Color(0xff282828),
            )),
      ),
    );
  }
}
