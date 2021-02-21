import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card Page'),
      ),
      body: Column(
        children: [
          buildCard(Icons.ac_unit, 'sebuah text random aja'),
          buildCard(Icons.access_alarm, 'sebuah text random aja hahai iri, bilang bos'),
        ],
      ),
    );
  }

  Card buildCard(IconData iconData, String text) {
    return Card(
      child: Container(
        padding: EdgeInsets.all(10),
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.only(right: 10),
              child: Icon(iconData)
            ),
            Text(text)
          ],
        ),
      ),
    );
  }
}