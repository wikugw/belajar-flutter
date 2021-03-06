import 'package:flutter/material.dart';

class CustomerAppbarHeight extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(200),
        child: AppBar(
          backgroundColor: Colors.red,
          flexibleSpace: Align(
            alignment: Alignment.bottomRight,
            child: Container(
              margin: EdgeInsets.all(20),
              child: Text(
                'Ini adalah custom height appbar',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 20
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}