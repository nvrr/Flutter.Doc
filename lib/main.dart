import 'package:flutter/material.dart';
import 'dart:async';
void main() {
  runApp(MaterialApp(
    theme: ThemeData(primaryColor: Colors.red, accentColor: Colors.yellowAccent),
    debugShowCheckedModeBanner: false,
    home: SplashScreen(),
  ));
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override

  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 5), () => print('Splsh Done!')
      );
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(color: Colors.green),

          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundColor:  Colors.white,
                        radius: 50.0,
                        child: Icon(
                          Icons.shopping_cart,
                          color: Colors.redAccent,
                          size: 50.0,
                        )
                      ),
                      Padding(padding: EdgeInsets.only(top: 10.0)),
                      Text(
                        "EcomEcom",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold
                        )
                      )
                    ],
                  )
                )
              ),
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircularProgressIndicator(),
                    Padding(
                      padding: EdgeInsets.only(top: 20.0),
                    ),
                    Text("Online Store \n for Everyone",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10.0,
                      fontWeight: FontWeight.bold
                    )
                    )
                  ],
                )
              )
            ],
          )
        ],
      )
    );
  }
}