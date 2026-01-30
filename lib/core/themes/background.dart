import 'package:flutter/material.dart';

class Background {
  // FONDO PRINCIPAL
  static BoxDecoration bg40(BuildContext context) {
    return BoxDecoration(
      color: Theme.of(context).colorScheme.surface,
      borderRadius: BorderRadius.circular(10),
      border: Border.all(
        color: Theme.of(context).colorScheme.surfaceContainerHighest,
        width: 1,
        style: BorderStyle.solid,
      ),
    );
  }

  //FONDO SECUNDARIO
  static BoxDecoration bg30(BuildContext context) {
    return BoxDecoration(
      color: Theme.of(context).colorScheme.surfaceContainerHighest,
      borderRadius: BorderRadius.circular(8),
      border: Border.all(
        color: Theme.of(context).colorScheme.surfaceContainerHighest,
        width: 1,
        style: BorderStyle.solid,
      ),
    );
  }
}
