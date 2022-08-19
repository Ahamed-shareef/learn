import 'package:flutter/material.dart';
import 'package:learn/models/dishes.dart';
// import 'package:learn/screens/home/widgets/dish_card.dart';

import '../../../models/dish_details.dart';

class DishesGrid extends StatelessWidget {
  final List<Dish> dishes;

  const DishesGrid({super.key, required this.dishes});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0, top: 10.0, bottom: 10.0),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(15),
          topLeft: Radius.circular(15),
        ),
        child: GridView.builder(
          padding: const EdgeInsets.only(left: 10),
          physics: const BouncingScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
            crossAxisSpacing: 5,
            mainAxisSpacing: 5,
          ),
          itemCount: dishes.length,
          itemBuilder: (context, index) => DishesDetail(dish: dishes[index]),
        ),
      ),
    );
  }
}
