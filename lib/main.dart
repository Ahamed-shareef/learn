import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:learn/constants/route_names.dart';
import 'package:learn/view/dishes.dart';
import 'package:learn/view/home.dart';
import 'package:learn/view/login.dart';

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
      theme: ThemeData(
        textTheme: GoogleFonts.cairoTextTheme(),
      ),
      home: const Login(),
      routes: {
        AppRouteNames.login: (context) => const Login(),
        AppRouteNames.home: (context) => const Home(),
        AppRouteNames.dishes: (context) => const Dishes(),
        AppRouteNames.dishDetails: (context) => const Dishes(),
      },
    );
  }
}
