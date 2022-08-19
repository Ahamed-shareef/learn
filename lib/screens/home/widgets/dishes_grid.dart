import 'package:flutter/material.dart';
import 'package:learn/models/dishes.dart';
import 'package:learn/screens/home/widgets/dish_card.dart';

class DishesGrid extends StatelessWidget {
  final List<Dish> dishes;
  const DishesGrid({super.key, required this.dishes});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    var cardWidth = size.width / 2;

    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(15),
          topLeft: Radius.circular(15),
        ),
        child: GridView.builder(
          physics: const BouncingScrollPhysics(),
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: cardWidth,
            childAspectRatio: cardWidth / size.height * 4,
          ),
          itemCount: dishes.length,
          itemBuilder: (context, index) => DishesCard(dish: dishes[index]),
        ),
      ),
    );
  }
}
