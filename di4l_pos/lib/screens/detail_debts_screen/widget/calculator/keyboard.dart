import 'package:di4l_pos/common/global_colors.dart';
import 'package:flutter/material.dart';

import './button.dart';
import './calculator_button.dart';

class Keyboard extends StatelessWidget {
  final void Function(String) cb;

  Keyboard(this.cb);

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Theme.of(context).scaffoldBackgroundColor,
      height: 200,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const SizedBox(height: 20),
          ButtonRow([
            Button.operation(text: 'C', cb: cb),
            Button.operation(text: '÷', cb: cb),
            Button.operation(text: 'x', cb: cb),
            Button.operation(text: '⌫', cb: cb),
          ]),
          SizedBox(height: 5),
          ButtonRow([
            Button(text: '1', cb: cb),
            Button(text: '2', cb: cb),
            Button(text: '3', cb: cb),
            Button.operation(text: '+', cb: cb),
          ]),
          SizedBox(height: 5),
          ButtonRow([
            Button(text: '4', cb: cb),
            Button(text: '5', cb: cb),
            Button(text: '6', cb: cb),
            Button.operation(text: '-', cb: cb),
          ]),
          SizedBox(height: 5),
          ButtonRow([
            Button(text: '7', cb: cb),
            Button(text: '8', cb: cb),
            Button(text: '9', cb: cb),
            Button.operation(text: '=', cb: cb),
          ]),
          SizedBox(height: 5),
          ButtonRow([
            Button(text: '0', cb: cb),
            Button(text: '00', cb: cb),
            Button(text: '000', cb: cb),
            Button.operation(
              text: 'OK',
              cb: cb,
              color: GlobalColors.flButtonColor,
            ),
          ]),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
