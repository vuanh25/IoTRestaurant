import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

class LimitRange extends TextInputFormatter {
  LimitRange(
    this.minRange,
    this.maxRange,
  ) : assert(
          minRange < maxRange,
        );

  final int minRange;
  final int maxRange;

  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    var value = int.parse(newValue.text);
    if (value < minRange) {
      return TextEditingValue(text: minRange.toString());
    } else if (value > maxRange) {
      return TextEditingValue(text: maxRange.toString());
    }
    return newValue;
  }
}

class MoneyFormatter extends TextInputFormatter {
  final NumberFormat _customFormat;
  MoneyFormatter() : _customFormat = NumberFormat('#,##0', 'eu');

  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    String cleanedText = newValue.text.replaceAll(RegExp(r'[^0-9]'), '');
    String formattedValue = _customFormat.format(int.parse(cleanedText));
    return TextEditingValue(
      text: formattedValue,
      selection: TextSelection.collapsed(offset: formattedValue.length),
    );
  }
}
