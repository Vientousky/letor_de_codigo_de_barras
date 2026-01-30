import 'package:flutter/material.dart';

class GenericSearch extends StatelessWidget {
  final dynamic onChanged;

  const GenericSearch({super.key, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: "Buscar por nombre o codigo de barras",
        prefixIcon: const Icon(Icons.search),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
      ),
      onChanged: onChanged,
    );
  }
}
