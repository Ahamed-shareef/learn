import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:learn/constants/colors.dart';
import 'package:learn/constants/route_names.dart';
import 'package:learn/screens/auth/sign_in_screen.dart';
import 'package:learn/screens/dish_details/dish_details_screen.dart';
import 'package:learn/screens/home/home_screen.dart';
import 'package:learn/view/DishesCart.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
//!   ThemeData appBarTheme(BuildContext context) {
//!     final ThemeData theme = Theme.of(context);
//!     return theme.copyWith(
//!       primaryColor: theme.primaryColor,
//!       primaryIconTheme: theme.primaryIconTheme,
//!       primaryColorBrightness: theme.primaryColorBrightness,
//!       primaryTextTheme: theme.primaryTextTheme,
//!     );
//!   }
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
//!     textSelectionTheme: TextSelectionThemeData(
//!     selectionHandleColor:AppColors.primaryColor),
        primarySwatch: AppColors.primaryColor,
        primaryColor: AppColors.primaryColor,
        textTheme: GoogleFonts.cairoTextTheme(),
      ),
      home: const SignInScreen(),
      routes: {
        AppRouteNames.singin: (context) => const SignInScreen(),
        AppRouteNames.home: (context) => const HomeScreen(),
        AppRouteNames.dishesCart: (context) => const DishesCart(),
        AppRouteNames.dishDetailsScreen: (context) => const DishDetailsScreen(),
      },
    );
  }
}
