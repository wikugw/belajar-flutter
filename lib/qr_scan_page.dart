import 'package:flutter/material.dart';
import 'package:qrscan/qrscan.dart' as scanner;

class QRScanPage extends StatefulWidget {

  @override
  _QRScanPageState createState() => _QRScanPageState();
}

class _QRScanPageState extends State<QRScanPage> {
  String text = 'Hasil QR Scan';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('QR SCAN PAGE'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(text),
            SizedBox(height: 20),
            RaisedButton(
              onPressed: () async{
                text = await scanner.scan();
                setState(() {});
              },
              child: Text('scan'),
            ),
          ],
        ),
      ),
    );
  }
}