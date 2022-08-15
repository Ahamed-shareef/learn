// ignore: unused_import
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:learn/view/homepage.dart';

class Login extends StatefulWidget {
  @override
  loginstate createstate() => loginstate();

  @override
  State<StatefulWidget> createState() {
    return loginstate();
  }
}

class loginstate extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Color.fromARGB(255, 252, 229, 200),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              child: Center(
                  child: CircleAvatar(
                    radius: 100,
                      backgroundImage: AssetImage("images/login.jpg"),

              ))),
                  SizedBox(height: 20,),
          Card(
             clipBehavior: Clip.antiAliasWithSaveLayer,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
            margin: EdgeInsets.only(left: 10, right: 10, bottom: 10),
            color: Color.fromARGB(255, 235, 199, 156),
            child: Container(
              padding: EdgeInsets.all(15),
              child: Form(
                  child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: "username",
                        prefixIcon: Icon(Icons.person),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(width: 1),
                            borderRadius: BorderRadius.circular(40))),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: "password",
                        prefixIcon: Icon(Icons.person),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(width: 1),
                            borderRadius: BorderRadius.circular(40))),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                          primary: Colors.brown,
                          padding: EdgeInsets.symmetric(horizontal: 20),
                        ),
                        onPressed: () {
                          setState(() {
                            Navigator.of(context).pushReplacementNamed("designhome");
                          });
                        },
                        child: Text(
                          "تسجيل الدخول ",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        )),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                      child: Row(
                    children: [
                      InkWell(
                        child: Text(
                          "اضغط هنا ",
                          style: TextStyle(color: Colors.blue, fontSize: 20),
                        ),
                      ),
                      Text("اذا كنت لا تملك حساب "),
                    ],
                  ))
                ],
              )),
            ),
          )
        ],
      ),
    );
  }
}
