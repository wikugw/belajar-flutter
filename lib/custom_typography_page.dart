import 'dart:ui';

import 'package:flutter/material.dart';

class CustomTypographyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Custom Typography'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'Contoh 01 (Tanpa apapun)',
              style: TextStyle(
                fontSize: 20
              ),
            ),
            Text(
              'Contoh 02 (Small Caps)',
              style: TextStyle(
                fontSize: 20,
                fontFeatures: [
                  FontFeature.enable('smcp')
                ]
              ),
            ),
            Text(
              'Contoh 3 1/2 (Small Caps & frac)',
              style: TextStyle(
                fontSize: 20,
                fontFeatures: [
                  FontFeature.enable('smcp'),
                  FontFeature.enable('frac')
                ]
              ),
            ),
            Text(
              'Contoh 3 1/2 (Small Caps & frac)',
              style: TextStyle(
                fontSize: 20,
                fontFamily: 'Milonga',
                fontFeatures: [
                  FontFeature.enable('smcp'),
                  FontFeature.enable('frac')
                ]
              ),
            ),
            Text(
              'Contoh 19 Cardo (tanpa apapun)',
              style: TextStyle(
                fontSize: 20,
                fontFamily: 'Cardo'
              ),
            ),
            Text(
              'Contoh 19 Cardo (tanpa apapun)',
              style: TextStyle(
                fontSize: 20,
                fontFamily: 'Cardo',
                fontFeatures: [
                  FontFeature.oldstyleFigures(),
                ]
              ),
            ),
            Text(
              'Contoh Gabriola (tanpa apapun)',
              style: TextStyle(
                fontSize: 20,
                fontFamily: 'Gabriola'
              ),
            ),
            Text(
              'Contoh 19 Cardo (style set 5)',
              style: TextStyle(
                fontSize: 20,
                fontFamily: 'Gabriola',
                fontFeatures: [
                  FontFeature.stylisticSet(5),
                ]
              ),
            ),
          ],
        ),
      ),
    );
  }
}