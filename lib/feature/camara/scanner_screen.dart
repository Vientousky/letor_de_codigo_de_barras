import 'package:codigo_de_barras/components/generic_bar.dart';
import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class ScannerScreen extends StatefulWidget {
  const ScannerScreen({super.key});

  @override
  State<ScannerScreen> createState() => _ScannerScreenState();
}

class _ScannerScreenState extends State<ScannerScreen> {
  bool scanned = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GenericBar(title: "Escaneado codigo", showConfig: true),
      body: MobileScanner(
        onDetect: (BarcodeCapture capture) {
          if (scanned) return;
          scanned = true;

          final code = capture.barcodes.first.rawValue;
          if (code == null) return;

          Navigator.pop(context, code);
        },
      ),
    );
  }
}
