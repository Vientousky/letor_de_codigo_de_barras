import 'package:codigo_de_barras/core/themes/background.dart';
import 'package:codigo_de_barras/core/themes/text_styles.dart';
import 'package:codigo_de_barras/feature/opciones/widgets/button_router.dart';
import 'package:flutter/material.dart';

class PrintConfig extends StatelessWidget {
  const PrintConfig({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: Background.bg40(context),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Impresora", style: TextStyles.text70(context)),

            SizedBox(height: 12),

            ButtonRouter(
              icons: Icons.print_sharp,
              title: "Lista de impresoras",
            ),

            SizedBox(height: 12),

            ButtonRouter(icons: Icons.print_sharp, title: "Vincular impresora"),

            SizedBox(height: 12),

            ButtonRouter(icons: Icons.tune_sharp, title: "Modos de impresoras"),
          ],
        ),
      ),
    );
  }
}
