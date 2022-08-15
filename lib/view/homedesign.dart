import 'package:awesome_dialog/awesome_dialog.dart';

import 'package:learn/models/dishes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vertical_tabs/vertical_tabs.dart';
import 'package:vertical_tab_bar_view/vertical_tab_bar_view.dart';
import 'package:learn/models/categories.dart';

class designhome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return designhomestate();
  }
}

class designhomestate extends State<designhome> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 236, 193, 140),
      appBar: AppBar(),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                child: VerticalTabs(
                  tabsWidth: 100,
                  tabs: <Tab>[
                    Tab(
                        child: Column(
                      children: [
                        Image.asset(
                          catigory[0].image,
                          fit: BoxFit.cover,
                        ),
                        Text(catigory[0].name)
                      ],
                    )),
                    Tab(
                        child: Column(
                      children: [
                        Image.asset(
                          catigory[1].image,
                          fit: BoxFit.cover,
                        ),
                        Text(catigory[1].name)
                      ],
                    )),
                    Tab(
                        child: Column(
                      children: [
                        Image.asset(
                          catigory[2].image,
                          fit: BoxFit.cover,
                        ),
                        Text(catigory[2].name)
                      ],
                    )),
                    Tab(
                        child: Column(
                      children: [
                        Image.asset(
                          catigory[0].image,
                          fit: BoxFit.cover,
                        ),
                        Text(catigory[0].name)
                      ],
                    )),
                    Tab(
                        child: Column(
                      children: [
                        Image.asset(
                          catigory[1].image,
                          fit: BoxFit.cover,
                        ),
                        Text(catigory[1].name)
                      ],
                    )),
                    Tab(
                        child: Column(
                      children: [
                        Image.asset(
                          catigory[2].image,
                          fit: BoxFit.cover,
                        ),
                        Text(catigory[2].name)
                      ],
                    )),
                    Tab(
                        child: Column(
                      children: [
                        Image.asset(
                          catigory[0].image,
                          fit: BoxFit.cover,
                        ),
                        Text(catigory[0].name)
                      ],
                    )),
                  ],
                  contents: <Widget>[
                    Container(
                        color: Color.fromARGB(115, 250, 244, 165),
                        child: ListView.builder(
                            scrollDirection: Axis.vertical,
                            itemCount: dishes.length,
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                onTap: () {
                                  AwesomeDialog(
                                    context: context,
                                    dialogType: DialogType.INFO,
                                    animType: AnimType.BOTTOMSLIDE,
                                    title: dishes[index].name,
                                    desc: 'add this dishe to your order',
                                    btnCancelOnPress: () {},
                                    btnOkOnPress: () {
                                      AwesomeDialog(
                                        context: context,
                                        dialogType: DialogType.SUCCES,
                                        animType: AnimType.BOTTOMSLIDE,
                                        title: 'add order',
                                        btnOkOnPress: () {},
                                      )..show();
                                    },
                                  )..show();
                                },
                                child: Column(
                                  children: [
                                    Image.asset(dishes[index].image),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(dishes[index].name,
                                        style: TextStyle(
                                          fontSize: 18,
                                        )),
                                    Text(dishes[index].price),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      dishes[index].description,
                                      style: TextStyle(
                                        fontSize: 18,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                  ],
                                ),
                              );
                            })),
                    Container(
                        color: Color.fromARGB(115, 250, 244, 165),
                        child: ListView.builder(
                            scrollDirection: Axis.vertical,
                            itemCount: dishes.length,
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                onTap: () {
                                  AwesomeDialog(
                                    context: context,
                                    dialogType: DialogType.INFO,
                                    animType: AnimType.BOTTOMSLIDE,
                                    title: dishes[index].name,
                                    desc: 'add this dishe to your order',
                                    btnCancelOnPress: () {},
                                    btnOkOnPress: () {
                                      AwesomeDialog(
                                        context: context,
                                        dialogType: DialogType.SUCCES,
                                        animType: AnimType.BOTTOMSLIDE,
                                        title: 'add order',
                                        btnOkOnPress: () {},
                                      )..show();
                                    },
                                  )..show();
                                },
                                child: Column(
                                  children: [
                                    Image.asset(dishes[index].image),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(dishes[index].name,
                                        style: TextStyle(
                                          fontSize: 18,
                                        )),
                                    Text(dishes[index].price),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      dishes[index].description,
                                      style: TextStyle(
                                        fontSize: 18,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                  ],
                                ),
                              );
                            })),
                    Container(
                        color: Color.fromARGB(115, 250, 244, 165),
                        child: ListView.builder(
                            scrollDirection: Axis.vertical,
                            itemCount: dishes.length,
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                onTap: () {
                                  AwesomeDialog(
                                    context: context,
                                    dialogType: DialogType.INFO,
                                    animType: AnimType.BOTTOMSLIDE,
                                    title: dishes[index].name,
                                    desc: 'add this dishe to your order',
                                    btnCancelOnPress: () {},
                                    btnOkOnPress: () {
                                      AwesomeDialog(
                                        context: context,
                                        dialogType: DialogType.SUCCES,
                                        animType: AnimType.BOTTOMSLIDE,
                                        title: 'add order',
                                        btnOkOnPress: () {},
                                      )..show();
                                    },
                                  )..show();
                                },
                                child: Column(
                                  children: [
                                    Image.asset(dishes[index].image),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(dishes[index].name,
                                        style: TextStyle(
                                          fontSize: 18,
                                        )),
                                    Text(dishes[index].price),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      dishes[index].description,
                                      style: TextStyle(
                                        fontSize: 18,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                  ],
                                ),
                              );
                            })),
                    Container(
                        color: Color.fromARGB(115, 250, 244, 165),
                        child: ListView.builder(
                            scrollDirection: Axis.vertical,
                            itemCount: dishes.length,
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                onTap: () {
                                  AwesomeDialog(
                                    context: context,
                                    dialogType: DialogType.INFO,
                                    animType: AnimType.BOTTOMSLIDE,
                                    title: dishes[index].name,
                                    desc: 'add this dishe to your order',
                                    btnCancelOnPress: () {},
                                    btnOkOnPress: () {
                                      AwesomeDialog(
                                        context: context,
                                        dialogType: DialogType.SUCCES,
                                        animType: AnimType.BOTTOMSLIDE,
                                        title: 'add order',
                                        btnOkOnPress: () {},
                                      )..show();
                                    },
                                  )..show();
                                },
                                child: Column(
                                  children: [
                                    Image.asset(dishes[index].image),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(dishes[index].name,
                                        style: TextStyle(
                                          fontSize: 18,
                                        )),
                                    Text(dishes[index].price),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      dishes[index].description,
                                      style: TextStyle(
                                        fontSize: 18,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                  ],
                                ),
                              );
                            })),
                    Container(
                        color: Color.fromARGB(115, 250, 244, 165),
                        child: ListView.builder(
                            scrollDirection: Axis.vertical,
                            itemCount: dishes.length,
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                onTap: () {
                                  AwesomeDialog(
                                    context: context,
                                    dialogType: DialogType.INFO,
                                    animType: AnimType.BOTTOMSLIDE,
                                    title: dishes[index].name,
                                    desc: 'add this dishe to your order',
                                    btnCancelOnPress: () {},
                                    btnOkOnPress: () {
                                      AwesomeDialog(
                                        context: context,
                                        dialogType: DialogType.SUCCES,
                                        animType: AnimType.BOTTOMSLIDE,
                                        title: 'add order',
                                        btnOkOnPress: () {},
                                      )..show();
                                    },
                                  )..show();
                                },
                                child: Column(
                                  children: [
                                    Image.asset(dishes[index].image),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(dishes[index].name,
                                        style: TextStyle(
                                          fontSize: 18,
                                        )),
                                    Text(dishes[index].price),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      dishes[index].description,
                                      style: TextStyle(
                                        fontSize: 18,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                  ],
                                ),
                              );
                            })),
                    Container(
                        color: Color.fromARGB(115, 250, 244, 165),
                        child: ListView.builder(
                            scrollDirection: Axis.vertical,
                            itemCount: dishes.length,
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                onTap: () {
                                  AwesomeDialog(
                                    context: context,
                                    dialogType: DialogType.INFO,
                                    animType: AnimType.BOTTOMSLIDE,
                                    title: dishes[index].name,
                                    desc: 'add this dishe to your order',
                                    btnCancelOnPress: () {},
                                    btnOkOnPress: () {
                                      AwesomeDialog(
                                        context: context,
                                        dialogType: DialogType.SUCCES,
                                        animType: AnimType.BOTTOMSLIDE,
                                        title: 'add order',
                                        btnOkOnPress: () {},
                                      )..show();
                                    },
                                  )..show();
                                },
                                child: Column(
                                  children: [
                                    Image.asset(dishes[index].image),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(dishes[index].name,
                                        style: TextStyle(
                                          fontSize: 18,
                                        )),
                                    Text(dishes[index].price),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      dishes[index].description,
                                      style: TextStyle(
                                        fontSize: 18,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                  ],
                                ),
                              );
                            })),
                    Container(
                        color: Color.fromARGB(115, 250, 244, 165),
                        child: ListView.builder(
                            scrollDirection: Axis.vertical,
                            itemCount: dishes.length,
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                onTap: () {
                                  AwesomeDialog(
                                    context: context,
                                    dialogType: DialogType.INFO,
                                    animType: AnimType.BOTTOMSLIDE,
                                    title: dishes[index].name,
                                    desc: 'add this dishe to your order',
                                    btnCancelOnPress: () {},
                                    btnOkOnPress: () {
                                      AwesomeDialog(
                                        context: context,
                                        dialogType: DialogType.SUCCES,
                                        animType: AnimType.BOTTOMSLIDE,
                                        title: 'add order',
                                        btnOkOnPress: () {},
                                      )..show();
                                    },
                                  )..show();
                                },
                                child: Column(
                                  children: [
                                    Image.asset(dishes[index].image),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(dishes[index].name,
                                        style: TextStyle(
                                          fontSize: 18,
                                        )),
                                    Text(dishes[index].price),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      dishes[index].description,
                                      style: TextStyle(
                                        fontSize: 18,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                  ],
                                ),
                              );
                            })),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget tabsContent(String image, String nam, String price, String des) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(20),
      color: Color.fromARGB(115, 248, 241, 146),
      child: Column(
        children: <Widget>[
          Text(
            nam,
            style: TextStyle(fontSize: 25),
          ),
          Divider(
            height: 20,
            color: Color.fromARGB(115, 248, 241, 146),
          ),
          Text(
            des,
            style: TextStyle(fontSize: 15, color: Colors.black87),
          ),
          Divider(
            height: 20,
            color: Color.fromARGB(115, 248, 241, 146),
          ),
          Text(
            price,
            style: TextStyle(fontSize: 25),
          ),
          Divider(
            height: 20,
            color: Color.fromARGB(115, 248, 241, 146),
          ),
        ],
      ),
    );
  }
}







          /*child: Column(
            children: <Widget>[
              Container(
                height: 300,
                child: VerticalTabs(
                  tabsWidth: 150,
                  direction: TextDirection.ltr,
                  contentScrollAxis: Axis.vertical,
                  changePageDuration: Duration(milliseconds: 500),
                  tabs: <Tab>[
                    Tab(child: Text('Flutter'), icon: Icon(Icons.phone)),
                    Tab(child: Text('Dart')),
                    Tab(
                      child: Container(
                        margin: EdgeInsets.only(bottom: 1),
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.favorite),
                            SizedBox(width: 25),
                            Text('Javascript'),
                          ],
                        ),
                      ),
                    ),
                    Tab(child: Text('NodeJS')),
                    Tab(child: Text('PHP')),
                  ],
                  contents: <Widget>[
                    tabsContent('Flutter', 'You can change page by scrolling content vertically'),
                    tabsContent('Dart'),
                    tabsContent('Javascript'),
                    tabsContent('NodeJS'),
                    Container(
                        color: Colors.black12,
                        child: ListView.builder(
                            itemCount: 10,
                            itemExtent: 100,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index){
                              return Container(
                                margin: EdgeInsets.all(10),
                                color: Colors.white30,
                              );
                            })
                    ),
                  ],
                ),
              ),
              Divider(height: 20, color: Colors.black87,),
              Container(
                height: 300,
                child: VerticalTabs(
                  tabsWidth: 150,
                  direction: TextDirection.ltr,
                  changePageDuration: Duration(milliseconds: 500),
                  tabs: <Tab>[
                    Tab(child: Text('Flutter'), icon: Icon(Icons.phone)),
                    Tab(child: Text('Dart')),
                    Tab(
                      child: Container(
                        margin: EdgeInsets.only(bottom: 1),
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.favorite),
                            SizedBox(width: 25),
                            Text('Javascript'),
                          ],
                        ),
                      ),
                    ),
                    Tab(child: Text('NodeJS')),
                    Tab(child: Text('PHP')),
                  ],
                  contents: <Widget>[
                    tabsContent('Flutter', 'You can change page by scrolling content horizontally'),
                    tabsContent('Dart'),
                    tabsContent('Javascript'),
                    tabsContent('NodeJS'),
                    Container(
                        color: Colors.black12,
                        child: ListView.builder(
                            itemCount: 10,
                            itemExtent: 100,
                            scrollDirection: Axis.vertical,
                            itemBuilder: (context, index){
                              return Container(
                                margin: EdgeInsets.all(10),
                                color: Colors.white30,
                              );
                            })
                    ),
                  ],
                ),
              ),
            ],
          ),*/
