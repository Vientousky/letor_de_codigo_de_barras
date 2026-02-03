import 'package:codigo_de_barras/components/generic_bar.dart';
import 'package:codigo_de_barras/feature/detalles_producto/widget/action_product.dart';
import 'package:codigo_de_barras/feature/detalles_producto/widget/details_barcode.dart';
import 'package:codigo_de_barras/feature/detalles_producto/widget/product_details.dart';
import 'package:flutter/material.dart';
import '../../components/generic_product.dart';

class ProductDetailsScreen extends StatelessWidget {
  final GenericProduct? product;

  const ProductDetailsScreen({super.key, this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GenericBar(title: "Detalles del producto", showConfig: true,),

      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //COLUMNAS DEL CODIGO + IMAGENES
            DetailsBarcode(code: product!.codigo),

            const SizedBox(height: 20),

            ProductDetails(precio: product!.precio, titulo: product!.nombre),

            const Spacer(),

            ActionProduct(),
          ],
        ),
      ),
    );
  }
}
