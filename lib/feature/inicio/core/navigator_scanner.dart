import 'package:codigo_de_barras/core/sqlite/get_product_by_code.dart';
import 'package:codigo_de_barras/feature/detalles_producto/product_details_screen.dart';
import 'package:codigo_de_barras/core/themes/text_styles.dart';
import 'package:flutter/material.dart';

class NavigatorScanner {
  final Widget selectScanner;

  const NavigatorScanner({required this.selectScanner});

  Future<void> call(BuildContext context) async {
    //================================
    //AQUI SE ELIGE QUE ESCANER USARAS
    //================================

    final codigo = await Navigator.push<String>(
      context,
      MaterialPageRoute(builder: (_) => selectScanner),
    );

    if (codigo == null) return;

    final product = await GetProductByCode.call(codigo);

    if (!context.mounted) return;

    //========================================
    //MUESTRA ESTE MENSAJE SI NO HAY PRODUCTOS
    //========================================

    if (product == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            'Producto no encontrado',
            style: TextStyles.text50(context),
          ),
          backgroundColor: Theme.of(context).colorScheme.surface,
        ),
      );
      return;
    }

    //================================
    //SOLAMENTE TE LLEVARA A DETALLES
    //================================

    Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => ProductDetailsScreen(product: product)),
    );
  }
}
