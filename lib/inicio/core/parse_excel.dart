import 'dart:io';
import 'package:excel/excel.dart';

List<Map<String, dynamic>> parseExcel(File file) {
  final bytes = file.readAsBytesSync();
  final excel = Excel.decodeBytes(bytes);

  final sheet = excel.tables[excel.tables.keys.first]!;
  final List<Map<String, dynamic>> rows = [];

  for (int i = 1; i < sheet.rows.length; i++) {
    final row = sheet.rows[i];

    rows.add({
      'codigo': row[0]?.value.toString(),
      'nombre': row[1]?.value.toString(),
      'precio': row[2]?.value.toString(),
    });
  }

  return rows;
}
