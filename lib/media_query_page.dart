import 'package:flutter/material.dart';
import 'package:hello_world/media_landscape_page.dart';


class MediaQueryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Media Query'),
      ),
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width /3,
          height: MediaQuery.of(context).size.height /2,
          color: Colors.green,
          child: RaisedButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return LandscapePage(); 
              }));
            },
            child: Text('GO TO LANDSCAPE/POTRAIT QUERY PAGE'),
          ),
        ),
      ) 
    );
  }
}