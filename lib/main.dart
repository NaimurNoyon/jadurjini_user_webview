import 'package:flutter/material.dart';
import 'package:user_web_app/splash_screen.dart';
import 'package:user_web_app/webpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    initialRoute: SplashScreen.routeName,
    routes: {
      WebPage.routeName: (context) => WebPage(),
      SplashScreen.routeName: (context) => SplashScreen(),
    },
    );
  }
}

