import 'package:codigo_de_barras/control_de_codigo_barras/barcode_control.dart';
import 'package:codigo_de_barras/control_de_precio/price_control.dart';
import 'package:codigo_de_barras/control_stock/stock_control.dart';
import 'package:codigo_de_barras/controlar_etiquetas.dart/label_control.dart';
import 'package:codigo_de_barras/core/themes/background.dart';
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
            const Text(
              "Controlar",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
            ),
            const SizedBox(height: 8),
            GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              mainAxisSpacing: 16,
              crossAxisSpacing: 16,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => LabelControl()),
                    );
                  },
                  style: ButtonStyle(
                    shape: WidgetStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    backgroundColor: WidgetStateProperty.all(Colors.red[900]),
                    foregroundColor: WidgetStateProperty.all(
                      Theme.of(context).appBarTheme.foregroundColor,
                    ),
                  ),
                  child: Text(
                    "ETIQUETAS",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    textAlign: TextAlign.center,
                  ),
                ),

                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => BarcodeControl()),
                    );
                  },
                  style: ButtonStyle(
                    shape: WidgetStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    backgroundColor: WidgetStateProperty.all(Colors.green[800]),
                    foregroundColor: WidgetStateProperty.all(
                      Theme.of(context).appBarTheme.foregroundColor,
                    ),
                  ),
                  child: Text(
                    "CODIGOS DE BARRAS",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    textAlign: TextAlign.center,
                  ),
                ),

                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => PriceControl()),
                    );
                  },
                  style: ButtonStyle(
                    shape: WidgetStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    backgroundColor: WidgetStateProperty.all(Colors.blue[900]),
                    foregroundColor: WidgetStateProperty.all(
                      Theme.of(context).appBarTheme.foregroundColor,
                    ),
                  ),
                  child: Text(
                    "PRECIOS",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    textAlign: TextAlign.center,
                  ),
                ),

                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => StockControl()),
                    );
                  },
                  style: ButtonStyle(
                    shape: WidgetStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    backgroundColor: WidgetStateProperty.all(
                      Colors.deepOrange[900],
                    ),
                    foregroundColor: WidgetStateProperty.all(
                      Theme.of(context).appBarTheme.foregroundColor,
                    ),
                  ),
                  child: Text(
                    "STOCK",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    textAlign: TextAlign.center,
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
