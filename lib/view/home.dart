import 'package:flutter/material.dart';
import 'package:learn/constants/colors.dart';
import 'package:learn/constants/route_names.dart';
import 'package:learn/models/categories.dart';
import 'package:learn/models/dishes.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: const Center(child: Text("Categories")),
        backgroundColor: AppColors.background,
        foregroundColor: Colors.brown,
        elevation: 0,
        shape: const Border(bottom: BorderSide(color: Colors.brown)),
        actions: [
          const SizedBox(width: 15),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_bag_outlined, size: 24),
          ),
          const SizedBox(width: 10)
        ],
      ),
      drawer: const Drawer(),
      body: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: 50,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: category.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () => Navigator.of(context).pushNamed(AppRouteNames.dishes),
                  child: Card(
                    elevation: 0,
                    color: AppColors.backgroundShaded.withOpacity(0.6),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 8.0),
                      child: Text(category[index].name),
                    ),
                  ),
                );
              },
            ),
          ),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200,
                  childAspectRatio: 3 / 5,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemCount: dishes.length,
                itemBuilder: (context, index) {
                  return Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(color: Colors.amber, borderRadius: BorderRadius.circular(15)),
                    child: Text(
                      dishes[index].name,
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
