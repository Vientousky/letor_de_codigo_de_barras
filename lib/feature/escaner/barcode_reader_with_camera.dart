import 'package:codigo_de_barras/components/generic_bar.dart';
import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class BarcodeReaderWithCamera extends StatefulWidget {
  const BarcodeReaderWithCamera({super.key});

  @override
  State<BarcodeReaderWithCamera> createState() => _BarcodeReaderWithCameraState();
}

class _BarcodeReaderWithCameraState extends State<BarcodeReaderWithCamera> {
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
