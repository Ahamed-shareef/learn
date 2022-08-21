import 'package:flutter/material.dart';
import 'package:learn/constants/action_bars.dart';
import 'package:learn/models/dishes.dart';
import 'package:learn/screens/home/widgets/categories_horizontal_view.dart';
import 'package:learn/screens/home/widgets/dishes_grid.dart';
import 'package:learn/widgets/custom_layout.dart';

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

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: homeActionBar(context),
      ),
      body: CustomLayout(
        child: Padding(
          padding: const EdgeInsets.only(top: 15),
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
