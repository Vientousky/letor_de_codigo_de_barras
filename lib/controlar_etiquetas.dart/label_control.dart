import 'package:codigo_de_barras/components/generic_product.dart';
import 'package:codigo_de_barras/components/generic_search.dart';
import 'package:codigo_de_barras/controlar_etiquetas.dart/widgets/label_container.dart';
import 'package:codigo_de_barras/core/sqlite/dynamic_product.dart';
import 'package:flutter/material.dart';

class LabelControl extends StatefulWidget {
  const LabelControl({super.key});

  @override
  State<LabelControl> createState() => _LabelControlState();
}

class _LabelControlState extends State<LabelControl> {
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
      appBar: AppBar(title: Text("Control de etiquetas")),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            GenericSearch(onChanged: _onSearch),
            const SizedBox(height: 16),
            if (_loading)
              const Expanded(child: Center(child: CircularProgressIndicator()))
            else if (_filteredProducts.isEmpty)
              const Expanded(child: Center(child: Text("No hay resultado")))
            else
              Expanded(
                child: ListView.builder(
                  itemCount: _filteredProducts.length,

                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        LabelContainer(product: _filteredProducts[index]),
                        SizedBox(height: 16),
                      ],
                    );
                  },
                ),
              ),
          ],
        ),
      ),
    );
  }
}
