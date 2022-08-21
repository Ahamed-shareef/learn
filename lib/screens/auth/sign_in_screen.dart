// ignore: unused_import
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:learn/constants/colors.dart';
import 'package:learn/constants/route_names.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: ListView(
          children: [
            const SizedBox(height: 20),
            const CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage("images/login.jpg"),
            ),
            const SizedBox(height: 20),
            Card(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              margin: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
              color: AppColors.backgroundShaded,
              child: Container(
                padding: const EdgeInsets.all(15),
                child: Form(
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                          labelText: "Email or phone number",
                          prefixIcon: Icon(Icons.shopping_bag_outlined),
                        ),
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                          labelText: "PassWord",
                          prefixIcon: Icon(Icons.shopping_bag_outlined),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Container(
                        margin: const EdgeInsets.all(10),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                              backgroundColor: Colors.brown,
                              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                            ),
                            onPressed: () => Navigator.of(context).pushReplacementNamed(AppRouteNames.home),
                            child: const Text("login", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
                      ),
                      const SizedBox(height: 50),
                      Row(
                        children: const [
                          Text("You don't have an account? "),
                          InkWell(
                            child: Text("CLICK HERE", style: TextStyle(color: AppColors.primaryColor, fontSize: 10)),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
