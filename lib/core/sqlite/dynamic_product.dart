import '../sqlite/open_db.dart';
import '../../components/generic_product.dart';

class DynamicallyProductService {
  static Future<List<GenericProduct>> getAll() async {
    final db = await openDB();
    final maps = await db.query("productos"); 

    return maps.map(GenericProduct.fromMap).toList();
  }
}
