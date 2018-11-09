import 'package:flutter/material.dart';
import 'dart:async';

void main() => runApp(MaterialApp(
  theme:
    ThemeData(primaryColor: Colors.red, accentColor: Colors.yellowAccent),
  debugShowCheckedModeBanner: false,
  home: SplashScreen(),
));

class SplashScreen extends StatefulWidget{
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>{

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5), ()=>print("Splash Done!!"));
  }
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(color: Colors.deepOrangeAccent),
          ),//Container
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 70.0,
                        child: Icon(
                          Icons.shopping_cart,
                          color: Colors.redAccent,
                          size: 90.0,
                        ),//Icon
                      ),//CircleAvatar
                      Padding(
                        padding: EdgeInsets.only(top: 10.0),
                      ),//Padding
                      Text(
                        "Kart Rider",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 50.0,
                              fontWeight: FontWeight.bold),//TextStyle
                      ),//Text
                    ],//<Widget>[]
                  ),//Column
                ),//Container
              ),//Expanded
              Expanded(
                flex: 1,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircularProgressIndicator(),
                      Padding(
                          padding: EdgeInsets.only(top: 20.0),
                      ),//Padding
                      Text(
                        "Online Store\nFor Everyone",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                        ),//TextStyle
                      ),//Text
                    ],//<Widget>[]
                  ),//Column
                ),//Container
              ),//Expanded
            ],//Widget>[]
          ),//Column
        ],//<Widget>[]
      ),//Stack
    );//Scaffold
  }
}