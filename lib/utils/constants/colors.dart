import 'package:flutter/material.dart';

class TColors {
  TColors._();

  // basic color

  static Color primaryColor = Color(0xFF394EEC);
  static Color secondary = Color(0xFFF7F136);
  static Color accent = Color(0xFFB0c7ff);

  // text color
  static Color textPrimary = Color(0xFF333333);
  static Color textSecondary = Color(0xFF6C757D);
  static Color textWhite = Colors.white;

  // background color
  static Color light = Color(0xFFF6F6F6);
  static Color dark = Color(0xFF272727);
  static Color primaryBackground = Color(0xFFF3F5FF);

  // background container color
  static Color lightContainer = Color(0xFFF6F6F6);
  static Color darkContainer = TColors.white.withValues(alpha: 0.1);

  // button color
  static Color buttonPrimary = Color(0xFF4b68ff);
  static Color buttonSecondary = Color(0xFF6C757D);
  static Color buttonDisabled = Color(0xFFC4C4C4);

  // error and validation color
  static Color error = Color(0xFFD32F2F);
  static Color success = Color(0xFF388E3C);
  static Color warning = Color(0xFFF57C00);
  static Color info = Color(0xFF1976D2);

  // neutral shades
  static Color white = Color(0xFFFFFFFF);
  static Color lightGrey = Color(0xFFF9F9F9);
  static Color softGrey = Color(0xFFF4F4F4);
  static Color grey = Color(0xFFE0E0E0);
  static Color darkGrey = Color(0xFF939393);
  static Color darkerGrey = Color(0xFF4F4F4F);
  static Color black = Color(0xFF232323);
}
