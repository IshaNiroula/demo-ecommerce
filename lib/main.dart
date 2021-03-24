import 'package:flutter/material.dart';
//import 'package:junkiri/HomePage.dart';
import 'package:junkiri/UI/home.dart';
//import 'package:junkiri/log_in_screen.dart';
import 'package:junkiri/UI/Login/splashscreen.dart';

var routes = <String, WidgetBuilder>{
  "/page": (BuildContext) => Homes(),
};

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Junkiri',
        home: SplashScreen(),
        routes: routes,
      ),
    );
