import 'package:codigo_de_barras/components/generic_bar.dart';
import 'package:codigo_de_barras/feature/opciones/widgets/print_config.dart';
import 'package:flutter/material.dart';

class Config extends StatefulWidget {
  const Config({super.key});

  @override
  State<Config> createState() => _ConfigState();
}

class _ConfigState extends State<Config> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GenericBar(title: "Configuracion"),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            Column(
              children: [
                PrintConfig(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
