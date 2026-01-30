import 'package:codigo_de_barras/components/generic_product.dart';
import 'package:codigo_de_barras/controlar_etiquetas.dart/widgets/label_action.dart';
import 'package:codigo_de_barras/controlar_etiquetas.dart/widgets/label_details.dart';
import 'package:flutter/material.dart';

class LabelContainer extends StatelessWidget {
  final GenericProduct? product;

  const LabelContainer({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        children: [
          Expanded(child: LabelDetails(product: product)),
          SizedBox(width: 12),
          LabelAction(),
        ],
      ),
    );
  }
}
