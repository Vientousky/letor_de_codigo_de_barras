import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

Future<Database> openDB() async {
  return openDatabase(
    join(await getDatabasesPath(), 'app.db'),
    version: 2,
    onCreate: (db, version) async {
      await db.execute('''
        CREATE TABLE productos(
          id INTEGER PRIMARY KEY AUTOINCREMENT,
          codigo TEXT NOT NULL UNIQUE,
          nombre TEXT,
          precio REAL
        )
      ''');
    },

    onUpgrade: (db, oldVersion, newVersion) async {
      if (oldVersion < 2) {
        await db.execute('''
          CREATE UNIQUE INDEX IF NOT EXISTS idx_productos_codigo ON productos(codigo)
        ''');
      }
    },
  );
}


