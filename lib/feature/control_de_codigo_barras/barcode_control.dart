import 'package:codigo_de_barras/components/generic_product.dart';
import 'package:codigo_de_barras/components/generic_product_control.dart';
import 'package:codigo_de_barras/components/generic_search.dart';
import 'package:codigo_de_barras/core/sqlite/dynamic_product.dart';
import 'package:codigo_de_barras/core/themes/background.dart';
import 'package:flutter/material.dart';

class BarcodeControl extends StatefulWidget {
  const BarcodeControl({super.key});

  @override
  State<BarcodeControl> createState() => _BarcodeControlState();
}

class _BarcodeControlState extends State<BarcodeControl> {
  List<GenericProduct> _allProducts = [];
  List<GenericProduct> _filteredProducts = [];
  bool _loading = true;

  @override
  void initState() {
    super.initState();
    _loadProducts();
  }

  Future<void> _loadProducts() async {
    final product = await DynamicallyProductService.getAll();
    setState(() {
      _allProducts = product;
      _filteredProducts = product;
      _loading = false;
    });
  }

  void _onSearch(String value) {
    final query = value.toLowerCase();

    setState(() {
      _filteredProducts = _allProducts.where((p) {
        return p.nombre.toLowerCase().contains(query) ||
            p.codigo.toLowerCase().contains(query);
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Controlar codigo de barras")),

      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            GenericSearch(onChanged: _onSearch),
            const SizedBox(height: 20),
            if (_loading)
              const Expanded(child: Center(child: CircularProgressIndicator()))
            else if (_filteredProducts.isEmpty)
              const Expanded(
                child: Center(child: Text("Lo que buscaba no se encontro")),
              )
            else
              Container(
                decoration: Background.bg40(context),
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 16,
                    right: 16,
                    top: 16,
                    bottom: 0,
                  ),
                  child: GenericProductControl(
                    title: "Productos",
                    items: _filteredProducts,
                    itemBuilder: (context, product) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 6),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              product.nombre,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
