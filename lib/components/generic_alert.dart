import 'package:codigo_de_barras/components/generic_product.dart';
import 'package:codigo_de_barras/detalles_producto/product_details_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GenericAlert extends StatelessWidget {
  final GenericProduct? product;

  const GenericAlert({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return CupertinoAlertDialog(
      title: Text("¿Quires imprimir automaticamente?"),
      content: Text("Luego lo podes activar o desativar en configuración"),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => ProductDetailsScreen(product: product),
              ),
            );
          },
          child: Text("No"),
        ),
        TextButton(onPressed: () {}, child: Text("Si")),
      ],
    );
  }
}
