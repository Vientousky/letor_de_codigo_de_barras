import 'package:flutter/material.dart';

class NumberKeyboard extends StatefulWidget {
  final ValueChanged<String> onChanged;
  final ValueChanged<String> onAccept;

  const NumberKeyboard({
    super.key,
    required this.onChanged,
    required this.onAccept,
  });

  @override
  State<NumberKeyboard> createState() => _NumberKeyboardState();
}

class _NumberKeyboardState extends State<NumberKeyboard> {
  String value = "";

  void _onKeyTap(String key) {
    setState(() {
      value += key;
    });

    widget.onChanged(value);
  }

  void _delete() {
    if (value.isNotEmpty) {
      setState(() {
        value = value.substring(0, value.length - 1);
      });

      widget.onChanged(value);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text("7 up 3 LT 2026"),
            Column(
              children: [
                ElevatedButton(onPressed: _delete, child: Text("Eliminar")),
                ElevatedButton(
                  onPressed: () {
                    widget.onAccept(value);
                    Navigator.pop(context);
                  },
                  child: const Text("Aceptar"),
                ),
              ],
            ),
          ],
        ),

        Row(
          children: [
            ElevatedButton(onPressed: () => _onKeyTap(value), child: Text("-")),
            Text(value.isEmpty ? '0' : value),
            ElevatedButton(onPressed: () => _onKeyTap(value), child: Text("+")),
          ],
        ),

        GridView.count(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          crossAxisCount: 3,
          childAspectRatio: 1.2,
          children: [
            for (final key in [
              '1',
              '2',
              '3',
              '4',
              '5',
              '6',
              '7',
              '8',
              '9',
              '.',
              '0',
            ])
              _KeyButton(label: key, onTap: () => _onKeyTap(key)),
          ],
        ),
      ],
    );
  }
}

class _KeyButton extends StatelessWidget {
  final String label;
  final VoidCallback onTap;

  const _KeyButton({required this.label, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6),
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: onTap,
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.orangeAccent,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Text(
            label,
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
