import 'package:flutter/material.dart';

class TextFieldPage extends StatefulWidget {
  @override
  _TextFieldPageState createState() => _TextFieldPageState();
}

class _TextFieldPageState extends State<TextFieldPage> {
  TextEditingController controller = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text Field'),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            TextField(
              onChanged: (value){
                setState(() {});
              },
              decoration: InputDecoration(
                fillColor: Colors.lightBlue[50],
                filled: true,
                icon:Icon(Icons.adb),
                suffix: Container(
                  width: 5,
                  height: 5,
                  color: Colors.red,
                ),
                prefixIcon: Icon(Icons.person),
                prefixText: "Namaewa ? ",
                prefixStyle: TextStyle(
                  fontWeight: FontWeight.bold
                ),
                labelText: "Namamu?",
                hintText: "isi nama pliss",
                hintStyle: TextStyle(
                  fontSize: 20 
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10)
                )
              ),
              controller: controller,
              maxLength: 5,
            ),
            Text(controller.text)
          ],
        ),
      ),
    );
  }
}