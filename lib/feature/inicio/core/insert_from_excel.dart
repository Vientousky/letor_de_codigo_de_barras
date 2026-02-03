import 'package:codigo_de_barras/core/sqlite/open_db.dart';
import 'package:sqflite/sqflite.dart';

Future<void> insertFromExcel(List<Map<String, dynamic>> data) async {
  final db = await openDB();

  await db.transaction((txn) async {
    for (final item in data) {
      await txn.insert(
        'productos',
        item,
        conflictAlgorithm: ConflictAlgorithm.replace,
      );
    }
  });
}
