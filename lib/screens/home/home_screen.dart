import 'package:flutter/material.dart';
import 'package:learn/constants/colors.dart';
import 'package:learn/models/categories.dart';
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
    return DefaultTabController(
      length: 9,
      child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            bottom: TabBar(tabs: [
              Tab(
                child: Text(category[0].name),
              ),
              Tab(
                child: Text(category[1].name),
              ),
              Tab(
                child: Text(category[2].name),
              ),
              Tab(
                child: Text(category[3].name),
              ),
              Tab(
                child: Text(category[4].name),
              ),
              Tab(
                child: Text(category[5].name),
              ),
              Tab(
                child: Text(category[6].name),
              ),
              Tab(
                child: Text(category[7].name),
              ),
              Tab(
                child: Text(category[8].name),
              ),
            ]),
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
          // ignore: prefer_const_literals_to_create_immutables
          body: const TabBarView(children: [
            HomeScreenDesign(),
            HomeScreenDesign(),
            HomeScreenDesign(),
            HomeScreenDesign(),
            HomeScreenDesign(),
            HomeScreenDesign(),
            HomeScreenDesign(),
            HomeScreenDesign(),
            HomeScreenDesign(),
          ])),
    );
  }
}
