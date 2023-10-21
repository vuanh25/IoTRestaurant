// ignore_for_file: depend_on_referenced_packages

import 'package:intl/intl.dart';
import 'package:di4l_pos/common/extensions/string_extension.dart';

class GlobalFormatter {
  /// Format Number
  static String formatNumber({required String source}) {
    return NumberFormat.decimalPattern().format(source.parseDouble());
  }

  static String formatString(String? source) {
    return source!.capitalizeString();
  }

  static String formatCurrency(double source) {
    final oCcy = NumberFormat("#,##0", "en_US");

    return '${oCcy.format(source)} đ';
  }
}
