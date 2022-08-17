import 'package:flutter/material.dart';
import 'package:learn/models/dishes.dart';
import 'package:learn/screens/home/widgets/dish_card.dart';

class DishesGrid extends StatelessWidget {
  final List<Dish> dishes;

  const DishesGrid({super.key, required this.dishes});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(15),
          topLeft: Radius.circular(15),
        ),
        child: GridView.builder(
          padding: EdgeInsets.zero,
          physics: const BouncingScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            mainAxisExtent: 180,
            childAspectRatio: 3 / 5,
            crossAxisSpacing: 5,
            mainAxisSpacing: 5,
          ),
          itemCount: dishes.length,
          itemBuilder: (context, index) => DishesCard(dish: dishes[index]),
        ),
      ),
    );
  }
}
