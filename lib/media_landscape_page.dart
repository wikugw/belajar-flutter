import 'package:flutter/material.dart';

class LandscapePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('landcape and potrait query')
      ),
      body: Container(
        child: (MediaQuery.of(context).orientation == Orientation.portrait) ? Column (
          children: childrenContainer(),
        ) : Row (children: childrenContainer(),)
      )  ,
    );
  }

  List<Widget> childrenContainer() {
    return <Widget>[
          Container(
            height: 100,
            width: 100,
            color: Colors.red,
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.green,
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.blue,
          ),
        ];
  }
}