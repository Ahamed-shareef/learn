import 'package:flutter/material.dart';
import 'package:learn/constants/colors.dart';
import 'package:learn/constants/route_names.dart';
import 'package:learn/models/categories.dart';

class CategoriesHorizontalView extends StatelessWidget {
  const CategoriesHorizontalView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      width: double.infinity,
      height: 45,
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.backgroundShaded),
        borderRadius: BorderRadius.circular(50),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(60.0),
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: category.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () => Navigator.of(context).pushNamed(AppRouteNames.dishes),
              child: Card(
                elevation: 0,
                color: AppColors.backgroundShaded,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Row(
                    children: [
                      CircleAvatar(backgroundImage: AssetImage(category[index].image)),
                      Text(category[index].name),
                      const SizedBox(width: 10),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
