import 'package:flutter/material.dart';
import 'package:learn/constants/colors.dart';
import 'package:learn/constants/styles.dart';
import 'package:learn/screens/home/widgets/dishes_search.dart';
import 'package:learn/widgets/custom_layout.dart';
import 'package:learn/widgets/rating_bar.dart';

import '../../constants/route_names.dart';

class DishDetailsScreen extends StatefulWidget {
  const DishDetailsScreen({super.key});

  @override
  State<DishDetailsScreen> createState() => _DishDetailsScreen();
}

class _DishDetailsScreen extends State<DishDetailsScreen> {
  dynamic dish;
  int counter = 1;
  bool favorite = false;
  @override
  Widget build(BuildContext context) {
    dish = ModalRoute.of(context)?.settings.arguments;
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
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
            onPressed: () => Navigator.of(context).pushNamed(AppRouteNames.dishesCart),
          ),
          const SizedBox(width: 5),
        ],
      ),
      body: CustomLayout(
        child: ClipRRect(
          borderRadius: kSheetBorderRadius,
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage(dish["image"]), fit: BoxFit.cover),
                    ),
                    height: 150,
                  ),
                  Container(
                    height: 85,
                    margin: const EdgeInsets.fromLTRB(10, 120, 10, 5),
                    decoration: kCustomBoxShadow(color: AppColors.backgroundShaded),
                    child: Center(
                      child: Text(
                        dish['name'],
                        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                  )
                ],
              ),
              Container(
                  height: 50,
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                  decoration: kCustomBoxShadow(color: AppColors.background.withOpacity(.9)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        dish['price'],
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        color: AppColors.backgroundShaded,
                        child: const RatingBar(),
                      ),
                      Container(
                        color: AppColors.backgroundShaded,
                        child: IconButton(
                          icon: Icon(
                            favorite ? Icons.favorite : Icons.favorite_outline,
                            color: favorite ? Colors.red : Colors.white,
                          ),
                          onPressed: () => setState(() => favorite = !favorite),
                        ),
                      ),
                    ],
                  )),
              Container(
                margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                padding: const EdgeInsets.all(15),
                width: size.width,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(25)),
                child: Text(dish["description"]),
              ),
              const Spacer(flex: 1),
              Container(
                margin: const EdgeInsets.fromLTRB(15, 10, 10, 25),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(25)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            IconButton(onPressed: () => setState(() => counter++), icon: const Icon(Icons.add), iconSize: 30),
                            Text("$counter", style: const TextStyle(fontSize: 20)),
                            IconButton(
                              onPressed: () => setState(() {
                                if (counter > 1) counter--;
                                if (counter < 1) counter = 1;
                              }),
                              icon: const Icon(Icons.remove),
                              iconSize: 30,
                            )
                          ],
                        ),
                        const SizedBox(height: 30),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                              backgroundColor: Colors.brown,
                              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                            ),
                            onPressed: () {},
                            child: const Text(
                              "order",
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            )),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
