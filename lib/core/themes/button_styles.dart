import 'package:flutter/material.dart';

class GenerycButtonStyles {
  static ButtonStyle buttonBackground(BuildContext context) {
    return ButtonStyle(
      shape: WidgetStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: BorderSide(
            color: Theme.of(context).colorScheme.surfaceContainerHighest,
          ),
        ),
      ),

      backgroundColor: WidgetStateProperty.all(
        Theme.of(context).colorScheme.surface,
      ),

      foregroundColor: WidgetStateProperty.all(
        Theme.of(context).appBarTheme.foregroundColor,
      ),
    );
  }

  static ButtonStyle buttonAyeCatching(BuildContext context) {
    return ButtonStyle(
      shape: WidgetStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: BorderSide(
            color: Colors.greenAccent,
          ),
        ),
      ),

      backgroundColor: WidgetStateProperty.all(Colors.green),

      foregroundColor: WidgetStateProperty.all(
        Theme.of(context).appBarTheme.foregroundColor,
      ),
    );
  }
}
