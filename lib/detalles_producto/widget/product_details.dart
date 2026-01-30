import 'package:codigo_de_barras/core/themes/app_colors.dart';
import 'package:codigo_de_barras/core/themes/background.dart';
import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  final num precio;
  final String titulo;

  const ProductDetails({super.key, required this.precio, required this.titulo});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: Background.bg40(context),

      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Container(
              width: 60,
              height: 60,
              decoration: Background.bg30(context),
            ),

            SizedBox(width: 12),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "\$$precio",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                      color: AppColors.darkAccent,
                    ),
                  ),

                  Text(
                    titulo,
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
