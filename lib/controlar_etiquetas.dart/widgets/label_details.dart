import 'package:codigo_de_barras/components/generic_product.dart';
import 'package:codigo_de_barras/core/themes/background.dart';
import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';

class LabelDetails extends StatelessWidget {
  final GenericProduct? product;

  const LabelDetails({super.key, this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: Background.bg40(context),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "\$${product!.precio}",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.w700),
            ),
            const SizedBox(height: 4),
            Text(
              product!.nombre,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 12),
            BarcodeWidget(
              height: 60,
              barcode: Barcode.code128(),
              data: product!.codigo,
              drawText: false,
              color: Theme.of(context).colorScheme.primary,
            ),
            const SizedBox(height: 12),
            Text(
              "Codigo: ${product!.codigo}",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}
