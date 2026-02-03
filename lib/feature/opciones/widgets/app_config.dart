import 'package:codigo_de_barras/core/themes/text_styles.dart';
import 'package:flutter/material.dart';

class AppConfig extends StatelessWidget {
  const AppConfig({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Text("Configuración general", style: TextStyles.text70(context),)

        
      ],
    );
  }
}