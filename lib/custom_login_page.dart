import 'package:flutter/material.dart';
import 'package:hello_world/main_page.dart';

class CustomLoginPage extends StatelessWidget {
  double getSmallDiameter(BuildContext context) => MediaQuery.of(context).size.width * 2/3;
  double getBigDiameter(BuildContext context) => MediaQuery.of(context).size.width * 7/8;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEEEEEE),
      body: Stack(
        children: [
          Positioned(
            right: -getSmallDiameter(context) / 3,
            top: -getSmallDiameter(context) /3,
            child: Container(
              height: getSmallDiameter(context),
              width: getSmallDiameter(context),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  colors: [Color(0xFFB226B2), Color(0xFFFF6DA7)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter
                ),
              ),
            ),
          ),
          Positioned(
            left: -getBigDiameter(context) / 4,
            top: -getBigDiameter(context) /4,
            child: Container(
              height: getBigDiameter(context),
              width: getBigDiameter(context),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  colors: [Color(0xFFB226B2), Color(0xFFFF4891)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter
                ),
              ),
              child: Center(
                child: Text(
                  'Dribble',
                  style: TextStyle(
                    fontFamily: 'Pacifico',
                    fontSize: 30,
                    color: Colors.white
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            right: -getBigDiameter(context) / 2,
            bottom: -getBigDiameter(context) / 2,
            child: Container(
              height: getBigDiameter(context),
              width: getBigDiameter(context),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFFF3E9EE)
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: ListView(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      color: Colors.grey,
                    ),
                  ),
                  margin: EdgeInsets.fromLTRB(20, 300, 20, 10),
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 25),
                  child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          icon: Icon(
                            Icons.email,
                            color: Color(0xFFFF4891)
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFFFF4891)
                            ),
                          ),
                          labelText: "Email : ",
                          labelStyle: TextStyle(
                            color: Color(0xFFFF4891)
                          )
                        ),
                      ),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          icon: Icon(
                            Icons.vpn_key,
                            color: Color(0xFFFF4891)
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFFFF4891)
                            ),
                          ),
                          labelText: "Password : ",
                          labelStyle: TextStyle(
                            color: Color(0xFFFF4891)
                          )
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 20, 20),
                    child: Text(
                      'FORGOT PASSWORD?',
                      style: TextStyle(
                        fontSize: 11,
                        color: Color(0xFFFF4891),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(20, 0, 20, 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 2,
                        height: 40,
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [Color(0xFFB226B2), Color(0xFFFF4891)],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter
                            ),
                            borderRadius: BorderRadius.circular(20)
                          ),
                          child: Material(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(20),
                            child: InkWell(
                              borderRadius: BorderRadius.circular(20),
                              onTap: () {
                                Navigator.pushReplacement(context,
                                    MaterialPageRoute(builder: (context) {
                                  return MainPage();
                                }));
                              },
                              splashColor: Colors.amber,
                              child: Center(
                                child: Text(
                                  'SIGN IN',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      FloatingActionButton(
                        heroTag: "facebook",
                        onPressed: (){},
                        backgroundColor: Colors.transparent,
                        mini: true,
                        elevation: 0,
                        child: Image(
                          image: AssetImage('assets/images/facebook.png'),
                        ),
                      ),
                       FloatingActionButton(
                        heroTag: "twitter",
                        onPressed: (){},
                        backgroundColor: Colors.transparent,
                        mini: true,
                        elevation: 0,
                        child: Image(
                          image: AssetImage('assets/images/twitter.png'),
                        ),
                      )
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "DON'T HAVE AN ACCOUNT? ",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.grey
                      ), 
                    ),
                    Text(
                      "SIGN UP",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: Color(0xFFFF4891)
                      ), 
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),      
    );
  }
}