import 'package:codigo_de_barras/core/themes/text_styles.dart';
import 'package:codigo_de_barras/feature/opciones/widgets/button_router.dart';
import 'package:flutter/material.dart';

class PrintConfig extends StatelessWidget {
  const PrintConfig({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Impresora", style: TextStyles.text70(context)),

        ButtonRouter(
          icons: Icons.print_sharp,
          title: "Lista de impresoras",
          description: "busque las impresoras que esten vinculados",
        ),

        SizedBox(height: 12),

        ButtonRouter(
          icons: Icons.print_sharp,
          title: "Vincular impresora",
          description: "vincula ",
        ),

        SizedBox(height: 12),

        Text("Impresora", style: TextStyles.text70(context)),

        ButtonRouter(
          icons: Icons.account_tree_outlined,
          title: "Modo de impresion",
          description: "Eliga un modo ",
        ),

        SizedBox(height: 12),

        ButtonRouter(
          icons: Icons.account_tree_outlined,
          title: "impresora de tiker",
          description: "Selecione el tipo de tiker",
        ),
      ],
    );
  }
}
