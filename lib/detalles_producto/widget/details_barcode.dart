import 'package:barcode_widget/barcode_widget.dart';
import 'package:codigo_de_barras/core/themes/background.dart';
import 'package:flutter/material.dart';

class DetailsBarcode extends StatelessWidget {
  final String code;

  const DetailsBarcode({super.key, required this.code});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: Background.bg40(context),

      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            BarcodeWidget(
              barcode: Barcode.code128(),
              height: 100,
              data: code,
              drawText: false,
              color: Theme.of(context).colorScheme.primary,
            ),

            const SizedBox(height: 12),

            Text(
              "Codigo: $code",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}
