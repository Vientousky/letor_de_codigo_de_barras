import 'package:codigo_de_barras/core/themes/background.dart';
import 'package:codigo_de_barras/core/themes/text_styles.dart';
import 'package:codigo_de_barras/feature/opciones/widgets/button_router.dart';
import 'package:flutter/material.dart';

class ScannerConfig extends StatelessWidget {
  const ScannerConfig({super.key});

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
            Text("Escaner", style: TextStyles.text70(context)),

            SizedBox(height: 12),

            ButtonRouter(icons: Icons.print_sharp, title: "Listado de Escaner"),

            SizedBox(height: 12),

            ButtonRouter(icons: Icons.print_sharp, title: "Vincular Escaner"),
          ],
        ),
      ),
    );
  }
}
