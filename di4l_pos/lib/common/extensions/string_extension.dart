import 'dart:io';

import 'package:intl/intl.dart';

extension StringExtension on String {
  /// Parse Int
  int parseInt() {
    return int.tryParse(this) ?? 0;
  }

  /// Parse Double
  double parseDouble() {
    return double.tryParse(this) ?? 0.0;
  }

  /// Capitalize the first letter
  String capitalizeString() {
    return "${this[0].toUpperCase()}${substring(1).toLowerCase()}";
  }

  /// Format money
  String formatMoney() {
    double intValue = double.tryParse(this) ?? 0.0;
    final NumberFormat usCurrency = NumberFormat('#,##0', Platform.localeName);
    return usCurrency.format(intValue);
  }
}
