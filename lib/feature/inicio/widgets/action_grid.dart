import 'package:codigo_de_barras/feature/control_de_codigo_barras/barcode_control.dart';
import 'package:codigo_de_barras/feature/control_de_precio/price_control.dart';
import 'package:codigo_de_barras/feature/control_stock/stock_control.dart';
import 'package:codigo_de_barras/feature/controlar_etiquetas.dart/label_control.dart';
import 'package:codigo_de_barras/core/themes/background.dart';
import 'package:codigo_de_barras/core/themes/text_styles.dart';
import 'package:codigo_de_barras/feature/inicio/widgets/generic_button.dart';
import 'package:flutter/material.dart';

//====================================
//APARTE INFERIOR BUTTONES DE ACCIONES
//====================================

class ActionGrid extends StatelessWidget {
  const ActionGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: Background.bg40(context),
      child: Padding(
        padding: const EdgeInsets.only(top: 16, bottom: 0, left: 16, right: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Controlar", style: TextStyles.text70(context)),
            const SizedBox(height: 8),
            GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              mainAxisSpacing: 16,
              crossAxisSpacing: 16,
              children: [
                GenericButton(
                  title: "Etiquetas",
                  route: LabelControl(),
                  color: Colors.red,
                ),

                GenericButton(
                  title: "Codigo de barras",
                  route: BarcodeControl(),
                  color: Colors.blue,
                ),

                GenericButton(
                  title: "Precios",
                  route: PriceControl(),
                  color: Colors.amber,
                ),

                GenericButton(
                  title: "Stock",
                  route: StockControl(),
                  color: Colors.green,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
