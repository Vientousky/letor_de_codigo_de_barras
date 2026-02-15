import 'package:codigo_de_barras/feature/opciones/config.dart';
import 'package:flutter/material.dart';

class GenericBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool showConfig;

  const GenericBar({super.key, required this.title, this.showConfig = false});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),

      actions: [
        if (showConfig)
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => Config()),
              );
            },
            icon: Icon(Icons.settings),
          ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
