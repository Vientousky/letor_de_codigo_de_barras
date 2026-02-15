import 'package:codigo_de_barras/feature/inicio/widgets/action_grid.dart';
import 'package:codigo_de_barras/feature/inicio/widgets/add_excel.dart';
import 'package:codigo_de_barras/feature/inicio/widgets/select_scanner.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HeroState();
}

class _HeroState extends State<Home> {
  
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: [
          AddExcel(),
          SizedBox(height: 16),
          SelectScanner(),
          SizedBox(height: 16),
          ActionGrid(),
        ],
      ),
    );
  }
}
