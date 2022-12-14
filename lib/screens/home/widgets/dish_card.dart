import 'package:flutter/material.dart';
import 'package:learn/constants/colors.dart';
import 'package:learn/models/dishes.dart';
import 'package:learn/widgets/rating_bar.dart';

import '../../../constants/route_names.dart';

class DishesCard extends StatefulWidget {
  final Dish dish;
  const DishesCard({super.key, required this.dish});

  @override
  State<DishesCard> createState() => _DishesCardState();
}

class _DishesCardState extends State<DishesCard> {
  bool favorite = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      color: AppColors.backgroundShaded,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)), // alignment: Alignment.center,
      child: Stack(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed(AppRouteNames.dishDetailsScreen, arguments: widget.dish.toMap() as dynamic);
            },
            child: Column(
              children: [
                Image.asset(widget.dish.image, width: double.infinity, height: 120, fit: BoxFit.cover),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.dish.name,
                        style: const TextStyle(fontSize: 12),
                        softWrap: false,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            widget.dish.price,
                            style: const TextStyle(color: AppColors.primaryColor, fontSize: 12),
                          ),
                          const RatingBar(),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
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
    );
  }
}
