import 'open_db.dart';
import '../../components/generic_product.dart';

class GetProductByCode {
  static Future<GenericProduct?> call(String codigo) async {
    final db = await openDB();

    final res = await db.query(
      'productos',
      where: 'codigo = ?',
      whereArgs: [codigo],
      limit: 1,
    );

    if (res.isEmpty) return null;
    
    return GenericProduct.fromMap(res.first);
  }
}
