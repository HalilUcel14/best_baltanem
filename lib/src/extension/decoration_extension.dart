import 'package:flutter/material.dart';

extension InputDecorationExtension on InputDecoration {
  static const kTextColor = Color(0xFF757575);
  InputDecoration myInputDecoration({double? value}) {
    return InputDecoration(
      contentPadding: EdgeInsets.symmetric(vertical: value ?? 16),
      border: outlineInputBorder(value ?? 16),
      focusedBorder: outlineInputBorder(value ?? 16),
      enabledBorder: outlineInputBorder(value ?? 16),
    );
  }

  OutlineInputBorder outlineInputBorder(double value) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(value),
      borderSide: const BorderSide(color: kTextColor),
    );
  }
}
