import 'package:flutter/material.dart';
import 'package:hello_world/colorfull_button.dart';

class ColorfullButtonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Colorfull Button'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ColorfullButton(Colors.pink, Colors.blue, Icons.accessibility_new_outlined),
            ColorfullButton(Colors.amber, Colors.teal, Icons.comment),
            ColorfullButton(Colors.red, Colors.yellow, Icons.leak_remove),
            ColorfullButton(Colors.black, Colors.purple, Icons.stop_circle),
          ],
        ),
      ),
    );
  }
}