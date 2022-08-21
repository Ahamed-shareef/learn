// ignore: file_names

import 'package:flutter/material.dart';
import 'package:learn/constants/colors.dart';

import '../../models/dishes.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 252, 229, 200),
      appBar: AppBar(
        title: const Text("Dishes Cart"),
        backgroundColor: Colors.white,
        foregroundColor: AppColors.primaryColor,
        elevation: 0,
        actions: [ElevatedButton(onPressed: () {}, child: const Text("order"))],
      ),
      body: Column(
        children: [
          SizedBox(
            height: size.height - 230,
            child: ListView(
              children: List.generate(10, (index) {
                var count = 3;
                return ListTile(
                  title: Text(dishes[0].name),
                  subtitle: Row(
                    children: [
                      Text(dishes[0].price),
                      Text("       count  $count"),
                    ],
                  ),
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage(dishes[0].image),
                  ),
                  trailing: IconButton(onPressed: () {}, icon: const Icon(Icons.change_circle)),
                  onTap: () {},
                );
              }),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 5, 20, 0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Text(
                      "dishes count",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "10",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Text(
                      "amount",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "QR520.0",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
