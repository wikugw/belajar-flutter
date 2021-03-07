import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QRCodePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: QrImage(
          backgroundColor: Colors.red,
          foregroundColor: Colors.black,
          padding: EdgeInsets.all(30),
          size: 300,
          data: 'https://stackoverflow.com/questions/53462488/flutter-how-to-resolve-error-importing-packagehttp-http-dart/53464436'
        ),
      ),
    );
  }
}