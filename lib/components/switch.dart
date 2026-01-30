import 'package:flutter/material.dart';

class ToggleTheme extends StatelessWidget {
  final void Function(bool) onToggleTheme;

  const ToggleTheme({super.key, required this.onToggleTheme});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return Switch(value: isDark, onChanged: onToggleTheme);
  }
}
