import 'package:codigo_de_barras/core/themes/background.dart';
import 'package:codigo_de_barras/core/themes/button_styles.dart';
import 'package:codigo_de_barras/core/themes/text_styles.dart';
import 'package:codigo_de_barras/feature/escaner/barcode_reader_with_camera.dart';
import 'package:codigo_de_barras/feature/inicio/core/navigator_scanner.dart';
import 'package:codigo_de_barras/feature/escaner/physical_barcode_reader.dart';
import 'package:flutter/material.dart';

class SelectScanner extends StatefulWidget {
  const SelectScanner({super.key});

  @override
  State<SelectScanner> createState() => _SelectScannerState();
}

class _SelectScannerState extends State<SelectScanner> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: Background.bg40(context),

      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Text("¿Como quieres escanear?", style: TextStyles.text70(context)),
            const SizedBox(height: 12),
            Row(
              children: [
                //ESCANER CON LA CAMARA DEL CEL
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      NavigatorScanner(
                        selectScanner: BarcodeReaderWithCamera(),
                      )(context);
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.camera_alt_outlined),
                        const SizedBox(width: 6),
                        const Text("Camara"),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 12),

                //ESCANER DE LETOR DE CODIGO DE BARRAS FISICO
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      NavigatorScanner(selectScanner: PhysicalBarcodeReader())(
                        context,
                      );
                    },
                    style: GenerycButtonStyles.buttonBackground(context),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: [
                        Icon(Icons.document_scanner_outlined),
                        const SizedBox(width: 6),
                        const Text("Escanear"),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
