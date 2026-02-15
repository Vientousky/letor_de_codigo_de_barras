import 'package:codigo_de_barras/core/themes/text_styles.dart';
import 'package:flutter/material.dart';

class GenericProductControl<T> extends StatelessWidget {
  final String title;
  final String? category;
  final List<T> items;
  final Widget Function(BuildContext, T) itemBuilder;

  const GenericProductControl({
    super.key,
    required this.title,
    this.category,
    required this.items,
    required this.itemBuilder,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: Theme.of(context).colorScheme.surfaceContainerHighest,
                width: 1,
                style: BorderStyle.solid,
              ),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(bottom: 6),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: TextStyles.text70(context)
                ),
                if (category != null)
                  Text(
                    category!,
                    style: TextStyles.text70(context)
                  ),
              ],
            ),
          ),
        ),

        const SizedBox(height: 12),

        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: items.length,
          itemBuilder: (context, index) {
            return itemBuilder(context, items[index],);
          },
        ),
        
      ],
    );
  }
}
