import 'package:codigo_de_barras/feature/camara/scanner_screen.dart';
import 'package:codigo_de_barras/core/sqlite/get_product_by_code.dart';
import 'package:codigo_de_barras/core/themes/background.dart';
import 'package:codigo_de_barras/core/themes/button_styles.dart';
import 'package:codigo_de_barras/core/themes/text_styles.dart';
import 'package:codigo_de_barras/feature/detalles_producto/product_details_screen.dart';
import 'package:flutter/material.dart';

class SelectScanner extends StatelessWidget {
  const SelectScanner({super.key});

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
                Expanded(
                  child: ElevatedButton(
                    onPressed: () async {
                      final codigo = await Navigator.push<String>(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const ScannerScreen(),
                        ),
                      );

                      if (codigo == null) return;

                      final product = await GetProductByCode.call(codigo);

                      if (!context.mounted) return;

                      if (product == null) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              'Producto no encontrado',
                              style: TextStyles.text50(context),
                            ),
                            backgroundColor: Theme.of(
                              context,
                            ).colorScheme.surface,
                          ),
                        );
                        return;
                      }

                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) =>
                              ProductDetailsScreen(product: product),
                        ),
                      );
                    },
                    style: GenerycButtonStyles.buttonBackground(context),
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
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
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
