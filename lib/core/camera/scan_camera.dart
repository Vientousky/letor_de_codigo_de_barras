import 'package:mobile_scanner/mobile_scanner.dart';

class ScanCamera {
  static String? lastCode;

  static void onDetect(BarcodeCapture capture) {
    final barcode = capture.barcodes.first;
    lastCode = barcode.rawValue;
  }
}
