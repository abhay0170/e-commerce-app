import 'package:flutter/material.dart';

class TDeviceUtility {
  static void hideKeyBoard(BuildContext context) {
    FocusScope.of(context).requestFocus(FocusNode());
  }
}
