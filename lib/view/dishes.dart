import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:learn/constants/colors.dart';
import 'package:learn/models/dishes.dart';

class Dishes extends StatelessWidget {
  const Dishes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 252, 229, 200),
      appBar: AppBar(
        title: const Center(child: Text("Dishes")),
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
      body: Container(
        margin: const EdgeInsets.all(20),
        child: ListView.separated(
          separatorBuilder: (context, i) {
            return const Divider(
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
                    ).show();
                  },
                ).show();
              },
              child: Card(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: [
                    Image.asset(dishes[index].image),
                    Text(dishes[index].name),
                    Text(dishes[index].price),
                    Container(
                      padding: const EdgeInsets.all(10),
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