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
        foregroundColor: AppColors.primaryColor,
        elevation: 0,
        shape: const Border(bottom: BorderSide(color: AppColors.primaryColor)),
        actions: [
          const SizedBox(width: 15),
          IconButton(
            icon: const Icon(Icons.shopping_bag_outlined, size: 24),
            onPressed: () {},
          ),
          const SizedBox(width: 10),
          IconButton(
            icon: const Icon(Icons.search, size: 24),
            onPressed: () => showSearch(context: context, delegate: DishesSearch()),
          ),
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
                    color: AppColors.backgroundShaded,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                    child: Padding(
                      padding: const EdgeInsets.all(5),
                      child: Row(
                        children: [
                          CircleAvatar(backgroundImage: AssetImage(category[index].image)),
                          Text(category[index].name),
                        ],
                      ),
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
                      decoration: BoxDecoration(color: AppColors.backgroundShaded, borderRadius: BorderRadius.circular(15)),
                      child: Column(
                        children: [
                          Image.asset(dishes[index].image),
                          Text(dishes[index].name),
                          Text(dishes[index].price),
                        ],
                      ));
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DishesSearch extends SearchDelegate {
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [IconButton(onPressed: () => query = "", icon: const Icon(Icons.close))];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(onPressed: () => close(context, null), icon: const Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    return const Text("data");
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    var filterDishes = dishes.where(
      (element) => element.name.toLowerCase().contains(query.toLowerCase()),
    );

    List<Dish> usedDishes = query == "" ? dishes : filterDishes.toList();

    return ListView.builder(
      itemCount: usedDishes.length,
      itemBuilder: (context, i) {
        return InkWell(
          onTap: () => showResults(context),
          child: Container(
            padding: const EdgeInsets.all(20),
            color: AppColors.backgroundShaded,
            child: Column(
              children: [
                Image.asset(usedDishes[i].image),
                Text(usedDishes[i].name),
                Text(usedDishes[i].price),
                Text(usedDishes[i].description),
                const SizedBox(height: 10),
                const Text("************************")
              ],
            ),
          ),
        );
      },
    );
  }
}
