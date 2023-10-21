import 'package:flutter/material.dart';

class TextAvatar {
  static String getInitials(String string, {int? limitTo}) {
    var buffer = StringBuffer();
    var wordList = string.trim().split(' ');

    if (string.isEmpty) return string;

    // Take first character if string is a single word
    if (wordList.length <= 1) return string.characters.first.toUpperCase();

    /// Fallback to actual word count if
    /// expected word count is greater
    if (limitTo != null && limitTo > wordList.length) {
      for (var i = 0; i < wordList.length; i++) {
        buffer.write(wordList[i][0]);
      }
      return buffer.toString().toLowerCase();
    }

    // Handle all other cases
    for (var i = 0; i < (limitTo ?? wordList.length); i++) {
      buffer.write(wordList[i][0]);
    }
    return buffer.toString().toUpperCase();
  }
}
