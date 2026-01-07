import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class QrScanner extends StatefulWidget {
  const QrScanner({super.key});

  @override
  State<QrScanner> createState() => _QrScannerState();
}

class _QrScannerState extends State<QrScanner> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:AppBar(
        title: Text(" Scan QR "),
      ),
      body:MobileScanner(
        onDetect: (BarcodeCapture capture) {
          final String? qrValue = capture.barcodes.first.rawValue;
          if(qrValue != null){
            Navigator.pop(context,qrValue);
          }
        },
      ),
    );
  }
}