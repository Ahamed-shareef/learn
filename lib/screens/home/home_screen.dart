import 'package:flutter/material.dart';
import 'package:learn/constants/colors.dart';
import 'package:learn/screens/home/widgets/dishes_search.dart';
import 'package:learn/screens/home/widgets/home_screen_design.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          //! title: const Center(child: Text("Categories")),
          backgroundColor: Colors.white,
          foregroundColor: AppColors.primaryColor,
          elevation: 0,
          // shape: const Border(bottom: BorderSide(color: AppColors.primaryColor)),
          actions: [
            const SizedBox(width: 5),
            IconButton(
              icon: const Icon(Icons.search, size: 22),
              onPressed: () => showSearch(
                  context: context, delegate: DishesSearch()), //* Search View
            ),
            IconButton(
              icon: const Icon(Icons.shopping_bag_outlined, size: 22),
              onPressed: () {},
            ),
            const SizedBox(width: 5),
          ],
        ),
        //! drawer: const Drawer(),
        body: const HomeScreenDesign());
  }
}
