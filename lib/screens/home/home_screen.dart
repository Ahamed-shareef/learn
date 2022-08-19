import 'package:flutter/material.dart';
import 'package:learn/constants/colors.dart';
import 'package:learn/models/dishes.dart';
import 'package:learn/screens/home/widgets/categories_horizontal_view.dart';
import 'package:learn/screens/home/widgets/dishes_grid.dart';
import 'package:learn/screens/home/widgets/dishes_search.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Dish> filteredDishes = [];

  void filteringDishes(String categoryID) {
    setState(() {
      filteredDishes = dishes.where((dish) => dish.categoryID == categoryID).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Dish> usedDishes = filteredDishes.isNotEmpty ? filteredDishes : dishes;

    BorderRadius sheetBorderRadius = const BorderRadius.only(
      topLeft: Radius.circular(40),
      topRight: Radius.circular(40),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: AppColors.primaryColor,
        elevation: 0,
        actions: [
          const SizedBox(width: 5),
          IconButton(
            icon: const Icon(Icons.search, size: 22),
            onPressed: () => showSearch(context: context, delegate: DishesSearch()), //* Search View
          ),
          IconButton(
            icon: const Icon(Icons.shopping_bag_outlined, size: 22),
            onPressed: () {},
          ),
          const SizedBox(width: 5),
        ],
      ),
      body: Container(
        margin: const EdgeInsets.only(top: 5),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: const [BoxShadow(color: Colors.grey, blurRadius: 5, offset: Offset(0, 0))],
          borderRadius: sheetBorderRadius,
        ),
        child: Container(
          padding: const EdgeInsets.only(top: 15),
          decoration: BoxDecoration(
            borderRadius: sheetBorderRadius,
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                AppColors.background.withOpacity(0.8),
                AppColors.background.withOpacity(0.7),
                AppColors.background.withOpacity(0.5),
                AppColors.background.withOpacity(0.4),
                AppColors.background.withOpacity(0.3),
              ],
            ),
          ),
          child: Column(
            children: [
              //* List view to present categories
              CategoriesHorizontalView(onPressed: filteringDishes),
              //
              //* Grid View for the home page
              Flexible(child: DishesGrid(dishes: usedDishes)),
            ],
          ),
        ),
      ),
    );
  }
}
