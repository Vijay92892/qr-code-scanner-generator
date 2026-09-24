import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class ScanQrCode extends StatefulWidget {
  const ScanQrCode({super.key});

  @override
  State<ScanQrCode> createState() => _ScanQrCodeState();
}

class _ScanQrCodeState extends State<ScanQrCode> {
  String qrResult = 'Scanned data will appear here';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Qr Code Scanner'),),
      body: Column(
        children: [
          Expanded(
            child: MobileScanner(
              onDetect: (capture) {
                final barcode = capture.barcodes.first;
                final code = barcode.rawValue ?? 'Unknown';
                setState(() {
                  qrResult = code;
                });
              },
            ),
          ),
          SizedBox(height: 30,),
          Text(qrResult, style: TextStyle(color: Colors.black),),
          SizedBox(height: 30,),
        ],
      ),
    );
  }
}