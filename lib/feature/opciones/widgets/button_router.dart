import 'package:codigo_de_barras/core/themes/text_styles.dart';
import 'package:flutter/material.dart';

class ButtonRouter extends StatelessWidget {
  final IconData? icons;
  final String title;
  final String? description;

  const ButtonRouter({
    super.key,
    this.icons,
    required this.title,
    this.description,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Row(
        children: [
          if (icons != null) Icon(icons, size: 30,),
          if (icons != null) const SizedBox(width: 12),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: TextStyles.text50(context)),

                if (description != null) ...[
                  const SizedBox(height: 4),
                  Text(
                    description!,
                  ),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }
}
