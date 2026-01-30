import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class ScanCameraScreen extends StatefulWidget {
  const ScanCameraScreen({super.key});

  @override
  State<ScanCameraScreen> createState() => _ScanCameraScreenState();
}

class _ScanCameraScreenState extends State<ScanCameraScreen> {
  bool _scanned = false;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: const Text("Escanear codigo")),
      body: MobileScanner(
        onDetect: (capture) {
          if (_scanned) return;

          final codigo = capture.barcodes.first.rawValue;
          if (codigo == null) return;

          _scanned = true;

          if(!mounted) return;
          Navigator.pop(context, codigo);
        },
      ),
    );
  }
}