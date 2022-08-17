import 'package:flutter/material.dart';
import 'package:learn/constants/colors.dart';
import 'package:learn/models/dishes.dart';
import 'package:learn/screens/home/widgets/categories_horizontal_view.dart';
import 'package:learn/screens/home/widgets/dishes_search.dart';

import 'widgets/dishes_grid.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        //! title: const Center(child: Text("Categories")),
        backgroundColor: Colors.white,
        foregroundColor: AppColors.primaryColor,
        elevation: 0,
        // shape: const Border(bottom: BorderSide(color: AppColors.primaryColor)),
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
      //! drawer: const Drawer(),
      body: Container(
        margin: const EdgeInsets.only(top: 5),
        decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 3, offset: Offset(0, 0))],
          borderRadius: BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15)),
        ),
        child: Container(
          padding: const EdgeInsets.only(top: 10),
          decoration: BoxDecoration(
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
            borderRadius: const BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15)),
          ),
          child: Column(
            children: [
              //* List view to present categories
              const CategoriesHorizontalView(),
              //
              //* Grid View for the home page
              Flexible(child: DishesGrid(dishes: dishes)),
            ],
          ),
        ),
      ),
    );
  }
}
