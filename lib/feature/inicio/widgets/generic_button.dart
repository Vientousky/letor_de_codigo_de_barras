import 'package:codigo_de_barras/core/themes/text_styles.dart';
import 'package:flutter/material.dart';

class GenericButton extends StatelessWidget {
  final String title;
  final Widget route;
  final Color color;

  const GenericButton({
    super.key,
    required this.title,
    required this.route,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (_) => route));
      },

      style: ButtonStyle(
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        ),
        backgroundColor: WidgetStateProperty.all(color),
        foregroundColor: WidgetStateProperty.all(
          Theme.of(context).appBarTheme.foregroundColor,
        ),
      ),
      child: Text(title, style: TextStyles.text70(context)),
    );
  }
}
