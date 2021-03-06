import 'package:flutter/material.dart';

class AppbarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    TabBar myTabBar = TabBar(
            indicator: BoxDecoration(
              color: Colors.blue,
              border: Border(
                top: BorderSide(
                  color: Colors.white,
                  width: 10
                )
              )
            ),
            tabs: [
              Tab(icon: Icon(Icons.comment), text: 'Comment',),
              Tab(child: Image(image: AssetImage("assets/images/facebook.png"))),
              Tab(child: Icon(Icons.comment_bank_rounded),),
              Tab(text: 'Last Tab')
            ] 
          );

    return DefaultTabController(
      length: 4, 
      child: Scaffold(
        appBar: AppBar(
          title: Text('App Bar'),
          bottom: PreferredSize( 
            preferredSize: Size.fromHeight(myTabBar.preferredSize.height), 
            child: Container(
              color: Colors.teal,
              child: myTabBar
            )
          )
        ),
        body: TabBarView(
          children: [
            Center(child: Text('tab 1')),
            Center(child: Text('tab 2')),
            Center(child: Text('tab 3')),
            Center(child: Text('tab 4')),
          ],
        ),
      )
    );
  }
}