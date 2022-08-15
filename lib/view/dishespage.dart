import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:learn/models/categories.dart';
import 'package:learn/models/dishes.dart';
import 'package:awesome_dialog/awesome_dialog.dart';

class deshespage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return dishespagestate();
  }
}

class dishespagestate extends State<deshespage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 252, 229, 200),
      appBar: AppBar(
        title: Text("home page"),
      ),
      body: Container(
        margin: EdgeInsets.all(20),
// لسته تحتوي عليلاجميع صور وعناوين الاصناف
        child: ListView.separated(
          separatorBuilder: (context, i) {
            return Divider(
              color: Color.fromARGB(255, 233, 195, 150),
              height: 10,
              thickness: 2,
            );
          },
          itemCount: dishes.length,
          itemBuilder: (BuildContext context, int index) {
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
              child: Card(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: [
                    Image.asset(dishes[index].image),
                    Text(dishes[index].name),
                    Text(dishes[index].price),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        dishes[index].description,
                        textAlign: TextAlign.center,
                      ),
                    ),
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


// AwesomeDialog(
//             context: context,
//             dialogType: DialogType.INFO,
//             animType: AnimType.BOTTOMSLIDE,
//             title: 'Dialog Title',
//             desc: 'Dialog description here.............',
//             btnCancelOnPress: () {},
//             btnOkOnPress: () {},
//             )..show();