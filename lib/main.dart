// ignore_for_file: prefer_const_constructors
import 'package:learn/view/homedesign.dart';
import 'package:splashscreen/splashscreen.dart';

import 'package:flutter/material.dart';
import 'package:learn/view/dishespage.dart';
import 'package:learn/view/homepage.dart';
import 'package:learn/view/login.dart';
import 'package:learn/models/dishes.dart';
import 'package:learn/view/homepage.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp( 
      debugShowCheckedModeBanner: false,
      home: Login(),
      routes: {
        "login" :(context) =>  Login(),
        "homepage":(context) => Home(),
        "dishes" : (context) => deshespage(),
        "designhome" : (context) => designhome(),  
      },
    );

  }
  
}


