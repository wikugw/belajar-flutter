import 'package:flutter/material.dart';

class InkwellButtonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(  
      appBar: AppBar(
        title: Text('Default Raised button vs Inkwell button'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            RaisedButton(
              onPressed: (){},
              child: Text('Raised Button'),
              shape: StadiumBorder(),
            ),
            Material(
              borderRadius: BorderRadius.circular(25),
              elevation: 3,
              child: Container(
                height: 40,
                width: 130,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  gradient: LinearGradient(
                    colors: [Colors.purple, Colors.amber],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight
                  )
                ),
                child: Material(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.transparent,
                  child: InkWell(
                    splashColor: Colors.amber,
                    borderRadius: BorderRadius.circular(25),
                    onTap: (){},
                    child: Center(
                      child: Text(
                        'Custom Button',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                        ),
                      ),
                    )
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}