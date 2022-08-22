import 'package:flutter/material.dart';
import 'package:learn/constants/colors.dart';
import 'package:learn/constants/styles.dart';
import 'package:learn/screens/home/widgets/dishes_search.dart';

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
        backgroundColor: AppColors.background,
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
        body: Container(
          margin: const EdgeInsets.only(top: 5),
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: const [BoxShadow(color: Colors.grey, blurRadius: 5, offset: Offset(0, 0))],
            borderRadius: kSheetBorderRadius,
          ),
          child: Container(
            padding: const EdgeInsets.only(top: 15),
            decoration: BoxDecoration(
              borderRadius: kSheetBorderRadius,
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  AppColors.background.withOpacity(0.8),
                  AppColors.background.withOpacity(0.7),
                  AppColors.background.withOpacity(0.5),
                  AppColors.background.withOpacity(0.4),
                  AppColors.background.withOpacity(0.3),
                ],
              ),
            ),
            child: Column(
              // physics: const BouncingScrollPhysics(),
              // shrinkWrap: true,
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
                      alignment: const Alignment(0.0, 0.9),
                      margin: const EdgeInsets.fromLTRB(25, 120, 25, 0),
                      decoration: BoxDecoration(
                          color: AppColors.backgroundShaded,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: const [BoxShadow(blurRadius: 2, color: Colors.grey)]),
                      child: Center(
                        child: Text(
                          dish['name'],
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Container(
                    height: 50,
                    alignment: const Alignment(0.0, -0.5),
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    margin: const EdgeInsets.fromLTRB(15, 10, 10, 0),
                    decoration: BoxDecoration(
                        color: AppColors.background.withOpacity(.9),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: const [BoxShadow(blurRadius: 2, color: Colors.grey)]),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          dish['price'],
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          color: AppColors.backgroundShaded,
                          child: Row(
                            children: [
                              Icon(Icons.star, size: 19, color: Colors.amber.shade800),
                              Icon(Icons.star, size: 19, color: Colors.amber.shade800),
                              Icon(Icons.star, size: 19, color: Colors.amber.shade800),
                              Icon(Icons.star, size: 19, color: Colors.amber.shade800),
                              Icon(Icons.star_half, size: 19, color: Colors.amber.shade800),
                            ],
                          ),
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
                  margin: const EdgeInsets.fromLTRB(15, 10, 10, 0),
                  width: size.width,
                  height: size.width / 2,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Column(
                    children: [
                      Text(dish["description"]),
                    ],
                  ),
                ),
                TextFormField(
                  maxLines: 2,
                  decoration: const InputDecoration(
                    labelText: "your order option",
                    prefixIcon: Icon(Icons.shopping_bag_outlined),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                    margin: const EdgeInsets.fromLTRB(15, 10, 10, 25),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
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
                        Column(
                          children: [
                            const Text("order count"),
                            Row(
                              children: [
                                IconButton(
                                  onPressed: () => setState(() {
                                    counter++;
                                  }),
                                  icon: const Icon(Icons.add),
                                  iconSize: 30,
                                ),
                                Text(
                                  "$counter",
                                  style: const TextStyle(fontSize: 20),
                                ),
                                IconButton(
                                  onPressed: () => setState(() {
                                    if (counter > 1) {
                                      counter--;
                                    }
                                    if (counter < 1) {
                                      counter = 1;
                                    }
                                  }),
                                  icon: const Icon(Icons.remove),
                                  iconSize: 30,
                                )
                              ],
                            ),
                          ],
                        )
                      ],
                    ))
              ],
            ),
          ),
        ));
  }
}
