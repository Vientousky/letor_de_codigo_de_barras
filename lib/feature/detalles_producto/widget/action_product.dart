import 'package:codigo_de_barras/core/themes/button_styles.dart';
import 'package:flutter/material.dart';

class ActionProduct extends StatelessWidget {
  const ActionProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        children: [
          Expanded(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: GenerycButtonStyles.buttonBackground(context),
              child: Text("IR ATRAS"),
            ),
          ),
          SizedBox(width: 20),
          Expanded(
            child: ElevatedButton(
              onPressed: () {},
              style: GenerycButtonStyles.buttonBackground(context),
              child: Text("IMPRIMIR"),
            ),
          ),
        ],
      ),
    );
  }
}
