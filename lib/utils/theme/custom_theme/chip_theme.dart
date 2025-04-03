import 'package:flutter/material.dart';

class TChipTheme {
  TChipTheme._();

  static ChipThemeData lightChipTheme = ChipThemeData(
    disabledColor: Colors.grey.withValues(alpha: 0.5),
    selectedColor: Colors.blue,
    labelStyle: TextStyle(color: Colors.black),
    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
    checkmarkColor: Colors.white,
  );
  static ChipThemeData darkChipTheme = ChipThemeData(
    disabledColor: Colors.grey,
    selectedColor: Colors.blue,
    labelStyle: TextStyle(color: Colors.white),
    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
    checkmarkColor: Colors.white,
  );
}
