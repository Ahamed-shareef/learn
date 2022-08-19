import 'package:flutter/material.dart';
import 'package:learn/constants/colors.dart';
import 'package:learn/models/categories.dart';
import 'package:learn/models/dishes.dart';

class CategoriesHorizontalView extends StatelessWidget {
  final void Function(String categoryID) onPressed;

  const CategoriesHorizontalView({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      width: double.infinity,
      height: 45,
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.backgroundShaded),
        borderRadius: BorderRadius.circular(40),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(40.0),
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: category.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () => onPressed(dishes[index].categoryID),
              child: Card(
                elevation: 0,
                color: AppColors.backgroundShaded,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
                child: Row(
                  children: [
                    CircleAvatar(backgroundImage: AssetImage(category[index].image)),
                    const SizedBox(width: 5),
                    Text(category[index].name),
                    const SizedBox(width: 10),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
