import 'dart:async';

import 'package:flutter/material.dart';
import 'package:user_web_app/webpage.dart';

class SplashScreen extends StatefulWidget {
  static const String routeName='/splash';
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  
  @override
  void initState() {
    Timer(Duration(milliseconds: 3400),(){
      Navigator.pushReplacementNamed(context,WebPage.routeName);
    });
    // TODO: implement initState
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                  height: 250,
                  width: 250,
                  image: AssetImage('assets/bg.png'),
                ),
                SizedBox(height: 10,),
                Image(
                  image: AssetImage('assets/loading.gif',),
                ),
                SizedBox(height: 150,),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
