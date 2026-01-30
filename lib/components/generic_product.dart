class GenericProduct {
  final String codigo;
  final String nombre;
  final num precio;

  GenericProduct({
    required this.codigo,
    required this.nombre,
    required this.precio,
  });

  factory GenericProduct.fromMap(Map<String, dynamic> map) {
    return GenericProduct(
      codigo: map['codigo'],
      nombre: map['nombre'],
      precio: (map['precio'] as num).toDouble(),
    );
  }
}
