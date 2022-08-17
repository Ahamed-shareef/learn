import 'package:flutter/material.dart';
import 'package:learn/constants/colors.dart';
import 'package:learn/screens/home/widgets/dishes_search.dart';

class DishDetailsScreen extends StatelessWidget {
  const DishDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.background,
        appBar: AppBar(
          backgroundColor: AppColors.background,
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
        body: Column());
  }
}
