import 'package:codigo_de_barras/core/themes/button_styles.dart';
import 'package:flutter/material.dart';

class LabelAction extends StatefulWidget {
  const LabelAction({super.key});

  @override
  State<LabelAction> createState() => _LabelActionState();
}

class _LabelActionState extends State<LabelAction> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          onPressed: () {},
          style: GenerycButtonStyles.buttonBackground(context),
          icon: Icon(
            Icons.print_outlined,
            color: Colors.orangeAccent,
            size: 32,
            semanticLabel: 'INPRIMIR TIKER',
          ),
        ),

        SizedBox(height: 8),

        IconButton(
          onPressed: () {},
          style: GenerycButtonStyles.buttonBackground(context),
          icon: Icon(
            Icons.save_sharp,
            color: Colors.blueAccent,
            size: 32,
            semanticLabel: 'INPRIMIR TIKER',
          ),
        ),
      ],
    );
  }
}
