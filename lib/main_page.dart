import 'package:flutter/material.dart';
import 'package:hello_world/appbar_page.dart';
import 'package:hello_world/colorfull_button_page.dart';
import 'package:hello_world/custom_card_page.dart';
import 'package:hello_world/customer_appbar_height.dart';
import 'package:hello_world/hero_page.dart';
import 'package:hello_world/inkwell_button_page.dart';
import 'package:hello_world/media_query_page.dart';
import 'package:hello_world/qr_code_page.dart';
import 'package:hello_world/second_page.dart';
import 'package:hello_world/card_page.dart';
import 'package:hello_world/textfiled_page.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.ac_unit,
          color: Colors.green,
        ),
        title: Text('Main Page'),
        actions: [
          IconButton(icon: Icon(Icons.settings), onPressed: (){}),
          IconButton(icon: Icon(Icons.logout), onPressed: (){}),
        ],
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.amber, Color(0xff6610f2)],
              begin: FractionalOffset.topLeft,
              end: FractionalOffset.bottomRight,
            ),
            image: DecorationImage(
              image: AssetImage(
                'assets/images/Pattern-PNG-Transparent.png',
              ),
              fit: BoxFit.none,
              repeat: ImageRepeat.repeat
            )
          ),
        ),
      ),
      body: Center(
        child: ListView(
            children: [
              RaisedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return SecondPage();
                  }));
                },
                child: Text('GO TO SECOND PAGE'),
              ),
              RaisedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return CardPage();
                  }));
                },
                child: Text('GO TO CARD PAGE'),
              ),
              RaisedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return TextFieldPage();
                  }));
                },
                child: Text('GO TO TEXTFIELD PAGE'),
              ),
              RaisedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return MediaQueryPage();
                  }));
                },
                child: Text('GO TO MEDIA QUERY PAGE'),
              ),
              RaisedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return InkwellButtonPage();
                  }));
                },
                child: Text('GO TO INKWELL BUTTON PAGE'),
              ),
              RaisedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return CustomCardPage();
                  }));
                },
                child: Text('GO TO CUSTOM CARD BUTTON PAGE'),
              ),
              RaisedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return HeroPage();
                  }));
                },
                child: Text('GO TO HERO ANIMATION PAGE'),
              ),
              RaisedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return CustomerAppbarHeight();
                  }));
                },
                child: Text('GO TO CUSTOM APPBAR HEIGHT PAGE'),
              ),
               RaisedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return AppbarPage();
                  }));
                },
                child: Text('GO TO APPBAR PAGE'),
              ),
              RaisedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return QRCodePage();
                  }));
                },
                child: Text('GO TO QR PAGE'),
              ),
               RaisedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return ColorfullButtonPage();
                  }));
                },
                child: Text('GO TO Colorfull Button PAGE'),
              )
            ],
        ),
      ),      
    );
  }
}