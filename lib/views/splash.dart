import 'dart:async';

import 'package:flutter/material.dart';
import 'package:twitter_redesigned/styles/colors.dart';
import 'package:twitter_redesigned/views/home.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 4), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
        return Home();
      }));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: XColors.backgroundColor,
      body: Container(
        alignment: Alignment.center,
        child: Image.asset(
          'assets/images/twitter.png',
          color: XColors.twitter,
        ),
      ),
    );
  }
}
