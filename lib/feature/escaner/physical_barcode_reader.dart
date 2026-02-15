import 'package:flutter/material.dart';

class PhysicalBarcodeReader extends StatefulWidget {
  const PhysicalBarcodeReader({super.key});

  @override
  State<PhysicalBarcodeReader> createState() => _PhysicalBarcodeReaderState();
}

class _PhysicalBarcodeReaderState extends State<PhysicalBarcodeReader> {
  final TextEditingController _controller = TextEditingController();
  final FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _focusNode.requestFocus();
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  void _onScan(String value) {
    if (value.isEmpty) return;

    Navigator.pop(context, value.trim());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () => _focusNode.requestFocus(),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircularProgressIndicator(),
              const SizedBox(height: 12),
              const Text("Esperando escaneo"),

              Opacity(
                opacity: 0.0,
                child: TextField(
                  controller: _controller,
                  focusNode: _focusNode,
                  autofocus: true,
                  showCursor: false,
                  enableSuggestions: true,
                  autocorrect: false,
                  keyboardType: TextInputType.none,
                  onSubmitted: _onScan,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
