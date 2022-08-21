import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:learn/constants/colors.dart';
import 'package:learn/constants/route_names.dart';
import 'package:learn/screens/auth/sign_in_screen.dart';
import 'package:learn/screens/cart/cart_screen.dart';
import 'package:learn/screens/dish_details/dish_details_screen.dart';
import 'package:learn/screens/home/home_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: AppColors.primaryColor,
        primaryColor: AppColors.primaryColor,
        textTheme: GoogleFonts.cairoTextTheme(),
        appBarTheme: const AppBarTheme(
            backgroundColor: Colors.white,
            foregroundColor: AppColors.primaryColor,
            elevation: 0,
            actionsIconTheme: IconThemeData(color: AppColors.primaryColor, size: 22)),
      ),
      home: const SignInScreen(),
      routes: {
        AppRouteNames.singIn: (context) => const SignInScreen(),
        AppRouteNames.home: (context) => const HomeScreen(),
        AppRouteNames.dishesCart: (context) => const CartScreen(),
        AppRouteNames.dishDetailsScreen: (context) => const DishDetailsScreen(),
      },
    );
  }
}
