import 'package:codigo_de_barras/core/themes/text_styles.dart';
import 'package:flutter/material.dart';
import 'pick_excel_file.dart';
import 'parse_excel.dart';
import 'insert_from_excel.dart';

class ImportExcelToSqlite {
  static Future<void> call({
    required BuildContext context,
    required void Function(double progress) onProgress,
    required void Function(bool loading) onLoading,
  }) async {
    onLoading(true);

    final file = await pickExcelFile();
    if (file == null) {
      onLoading(false);
      return;
    }

    onProgress(0.2);

    final data = parseExcel.call(file);

    if (data.isEmpty) {
      onLoading(false);
      _snack(context, "El excel se encuentra vacio");
      return;
    }

    onProgress(0.5);

    await insertFromExcel(data);

    onProgress(1.0);
    onLoading(false);

    _snack(context, "Importacion Completada (${data.length} registros)");
  }

  static void _snack(BuildContext context, String msg) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          msg,
          style: TextStyles.text50(context),
          textAlign: TextAlign.center,
        ),
        backgroundColor: Theme.of(context).colorScheme.surface,
      ),
    );
  }
}
