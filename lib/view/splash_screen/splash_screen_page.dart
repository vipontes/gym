import 'dart:async';

import 'package:flutter/material.dart';
import 'package:gym/res/app_colors.dart';
import 'package:gym/routes/routes.dart';

class SplashScreenPage extends StatefulWidget {
  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  void initState() {
    super.initState();
    Timer(
      Duration(milliseconds: 5500),
      () => Routes.pushRemoveStack(context, Routes.home),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [AppColors.white, AppColors.primaryDark],
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 3,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(top: 50.0),
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 110.0,
                        child: Image(
                          width: 170.0,
                          height: 170.0,
                          image: AssetImage("assets/img/logo.png"),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 50.0),
                      ),
                      Text(
                        "Bem Vindo!",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 32.0),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircularProgressIndicator(
                      valueColor:
                          new AlwaysStoppedAnimation<Color>(Colors.blue),
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
