// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:learn/constants/colors.dart';
import 'package:learn/models/dishes.dart';

class DishlistTile extends StatefulWidget {
  final Dish dish;
  const DishlistTile({super.key, required this.dish});

  @override
  State<DishlistTile> createState() => _DishesDetailState();
}

class _DishesDetailState extends State<DishlistTile> {
  bool favorite = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Card(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        color: AppColors.backgroundShaded,
        shape: RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(10)), // alignment: Alignment.center,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Stack(
            children: [
              Column(children: [
                ListTile(
                  title: Text(widget.dish.name),
                  subtitle: Text(widget.dish.price),
                  leading: Image.asset(widget.dish.image),
                  trailing: Column(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.star,
                              size: 16, color: Colors.amber.shade800),
                          Icon(Icons.star,
                              size: 16, color: Colors.amber.shade800),
                          Icon(Icons.star,
                              size: 16, color: Colors.amber.shade800),
                          Icon(Icons.star,
                              size: 16, color: Colors.amber.shade800),
                          Icon(Icons.star_half,
                              size: 16, color: Colors.amber.shade800),
                        ],
                      )
                    ],
                  ),
                ),
                ExpansionTile(
                  childrenPadding: const EdgeInsets.all(15).copyWith(top: 0),
                  title: const Text(
                    "description ....",
                    style:
                        TextStyle(color: AppColors.primaryColor, fontSize: 12),
                  ),
                  children: [
                    Text(
                      widget.dish.description,
                      style: const TextStyle(
                          color: AppColors.primaryColor, fontSize: 12),
                    )
                  ],
                )
              ]),
              Positioned(
                top: 10,
                left: 10,
                child: IconButton(
                  icon: Icon(
                    favorite ? Icons.favorite : Icons.favorite_outline,
                    color: favorite ? Colors.red : Colors.white,
                  ),
                  onPressed: () => setState(() => favorite = !favorite),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
