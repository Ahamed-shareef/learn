import 'package:flutter/material.dart';
import 'package:learn/constants/colors.dart';
import 'package:learn/models/categories.dart';

class CategoriesHorizontalView extends StatefulWidget {
  final void Function(String categoryID) onPressed;

  const CategoriesHorizontalView({super.key, required this.onPressed});

  @override
  State<CategoriesHorizontalView> createState() =>
      _CategoriesHorizontalViewState();
}

class _CategoriesHorizontalViewState extends State<CategoriesHorizontalView> {
  String? selectedID;
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
              onTap: () {
                widget.onPressed(category[index].id);
                setState(() {
                  selectedID = category[index].id;
                });
              },
              child: Card(
                elevation: 0,
                color: selectedID == category[index].id
                    ? AppColors.primaryColor
                    : AppColors.background,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40)),
                child: Row(
                  children: [
                    CircleAvatar(
                        backgroundImage: AssetImage(category[index].image)),
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
