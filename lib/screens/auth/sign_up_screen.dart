// ignore: unused_import
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:learn/constants/colors.dart';
import 'package:learn/constants/route_names.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);
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
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              margin: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
              color: AppColors.background,
              child: Container(
                padding: const EdgeInsets.all(15),
                child: Form(
                    child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "username",
                        prefixIcon: const Icon(Icons.person),
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(width: 1),
                          borderRadius: BorderRadius.circular(40),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "password",
                        prefixIcon: const Icon(Icons.person),
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(width: 1),
                          borderRadius: BorderRadius.circular(40),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      margin: const EdgeInsets.all(10),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30)),
                            primary: Colors.brown,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                          ),
                          onPressed: () => Navigator.of(context)
                              .pushReplacementNamed(AppRouteNames.home),
                          child: const Text(
                            "تسجيل الدخول ",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          )),
                    ),
                    const SizedBox(height: 50),
                    Row(
                      children: const [
                        InkWell(
                          child: Text("اضغط هنا ",
                              style: TextStyle(
                                  color: AppColors.primaryColor, fontSize: 18)),
                        ),
                        Text("اذا كنت لا تملك حساب "),
                      ],
                    )
                  ],
                )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
