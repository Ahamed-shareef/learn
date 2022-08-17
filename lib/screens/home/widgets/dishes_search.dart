import 'package:flutter/material.dart';
import 'package:learn/constants/colors.dart';
import 'package:learn/models/dishes.dart';
import 'package:learn/screens/home/widgets/dishes_grid.dart';

class DishesSearch extends SearchDelegate {
  @override
  ThemeData appBarTheme(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return theme.copyWith(
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.background,
        iconTheme: theme.primaryIconTheme.copyWith(color: AppColors.primaryColor),
        toolbarTextStyle: theme.textTheme.bodyText2,
        titleTextStyle: theme.textTheme.headline6,
      ),
      inputDecorationTheme: searchFieldDecorationTheme ??
          InputDecorationTheme(
            hintStyle: searchFieldStyle ?? theme.inputDecorationTheme.hintStyle,
            border: InputBorder.none,
          ),
    );
  }

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

    return DishesGrid(dishes: usedDishes);

    //! To be Removed
    // return ListView.builder(
    //   itemCount: usedDishes.length,
    //   itemBuilder: (context, i) {
    //     return InkWell(
    //       onTap: () => showResults(context),
    //       child: Container(
    //         padding: const EdgeInsets.all(20),
    //         color: AppColors.backgroundShaded,
    //         child: Column(
    //           children: [
    //             Image.asset(usedDishes[i].image),
    //             Text(usedDishes[i].name),
    //             Text(usedDishes[i].price),
    //             Text(usedDishes[i].description),
    //             const SizedBox(height: 10),
    //             const Text("************************")
    //           ],
    //         ),
    //       ),
    //     );
    //   },
    // );
  }
}
