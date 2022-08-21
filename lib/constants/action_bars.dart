import 'package:flutter/material.dart';
import 'package:learn/constants/route_names.dart';
import 'package:learn/screens/home/widgets/dishes_search.dart';

List<Widget>? homeActionBar(BuildContext context) {
  return [
    const SizedBox(width: 5),
    IconButton(
      icon: const Icon(Icons.search),
      onPressed: () => showSearch(context: context, delegate: DishesSearch()), //* Search View
    ),
    IconButton(
      icon: const Icon(Icons.shopping_bag_outlined),
      onPressed: () => Navigator.of(context).pushNamed(AppRouteNames.dishesCart),
    ),
    const SizedBox(width: 5),
  ];
}
