import 'package:flutter/material.dart';
import 'package:hello_world/custom_card_page.dart';
import 'package:hello_world/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CustomCardPage(),
    );
  }
}