import 'package:codigo_de_barras/core/themes/button_styles.dart';
import 'package:codigo_de_barras/feature/inicio/core/excel/import_excel_to_sqlite.dart';
import 'package:codigo_de_barras/core/themes/background.dart';
import 'package:flutter/material.dart';

//========================================
//APARTE SUPERIOR IMPORTANDO EXCEL A QLITO
//========================================

class AddExcel extends StatefulWidget {
  const AddExcel({super.key});

  @override
  State<AddExcel> createState() => _AddExcelState();
}

class _AddExcelState extends State<AddExcel> {
  bool loading = false;
  double progress = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: Background.bg40(context),

      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Text(
              "CARGAR ARCHIVO EXCEL",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
            ),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: loading
                  ? null
                  : () {
                      ImportExcelToSqlite.call(
                        context: context,
                        onLoading: (v) {
                          setState(() => loading = v);
                        },
                        onProgress: (p) {
                          setState(() => progress = p);
                        },
                      );
                    },
              style: GenerycButtonStyles.buttonBackground(context),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.save_alt_outlined),
                  const SizedBox(width: 8),
                  const Text("Subir archivo"),
                ],
              ),
            ),

            if (loading) ...[
              const SizedBox(height: 12),
              LinearProgressIndicator(value: progress),
              const SizedBox(height: 6),
              Text("${(progress * 100).toInt()}%"),
            ],
          ],
        ),
      ),
    );
  }
}
