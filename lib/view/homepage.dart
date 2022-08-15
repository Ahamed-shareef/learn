import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:learn/models/categories.dart';
import 'package:vertical_tab_bar_view/vertical_tab_bar_view.dart';
import 'package:vertical_tabs/vertical_tabs.dart';


class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Homestate();
  }
}

class Homestate extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 252, 229, 200),
      appBar: AppBar(
        title: Text("home page"),
        
      ),
      drawer: Drawer(),
      body:    

 Container(
        padding: EdgeInsets.all(20),
// لسته تحتوي عليلاجميع صور وعناوين الاصناف
        child: ListView.separated(
          separatorBuilder: (context , i)
          {
              return const Divider(color: Color.fromARGB(255, 252, 221, 183) , height: 10 ,thickness: 2,);
          },
          
          itemCount: catigory.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              
              onTap: (){
                Navigator.of(context).pushNamed("dishes");  
              },
              child: Card(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: [
                    Image.asset(catigory[index].image,fit: BoxFit.cover,),
                    Text(catigory[index].name ,),
                  ],
                ),
              ),
            );
          },
        ),
      ),

    );
  }
}



