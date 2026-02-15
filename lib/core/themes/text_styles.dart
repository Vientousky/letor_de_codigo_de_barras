import 'package:flutter/material.dart';

class TextStyles {
  static TextStyle text70(BuildContext context) {
    return TextStyle(
      color: Theme.of(context).colorScheme.primary,
      fontSize: 20,
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle text50(BuildContext context) {
    return TextStyle(
      color: Theme.of(context).colorScheme.primary,
      fontSize: 16,
      fontWeight: FontWeight.w500,
    );
  }
}
