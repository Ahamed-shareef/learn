import 'package:flutter/material.dart';
import 'package:learn/constants/colors.dart';
import 'package:learn/models/dishes.dart';

class DishesDetail extends StatefulWidget {
  final Dish dish;
  const DishesDetail({super.key, required this.dish});

  @override
  State<DishesDetail> createState() => _DishesDetailState();
}

class _DishesDetailState extends State<DishesDetail> {
  bool favorite = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SingleChildScrollView(
        child: Card(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          color: AppColors.backgroundShaded,
          shape: RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.circular(30)), // alignment: Alignment.center,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Stack(
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        Image.asset(widget.dish.image,
                            width: 100, height: 110, fit: BoxFit.cover),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: [
                            Text(widget.dish.name),
                            Text(widget.dish.price),
                            Row(
                              children: [
                                Icon(Icons.star,
                                    size: 16, color: Colors.amber.shade800),
                                Icon(Icons.star,
                                    size: 16, color: Colors.amber.shade800),
                                Icon(Icons.star,
                                    size: 16, color: Colors.amber.shade800),
                                Icon(Icons.star,
                                    size: 16, color: Colors.amber.shade800),
                                Icon(Icons.star_half,
                                    size: 16, color: Colors.amber.shade800),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                    ExpansionTile(
                      childrenPadding:
                          const EdgeInsets.all(15).copyWith(top: 0),
                      title: const Text(
                        "description ....",
                        style: TextStyle(
                            color: AppColors.primaryColor, fontSize: 12),
                      ),
                      children: [
                        Text(
                          widget.dish.description,
                          style: const TextStyle(
                              color: AppColors.primaryColor, fontSize: 12),
                        ),
                      ],
                    ),
                  ],
                ),
                Positioned(
                  top: 0,
                  left: 0,
                  child: IconButton(
                    icon: Icon(
                      favorite ? Icons.favorite : Icons.favorite_outline,
                      color: favorite ? Colors.red : Colors.white,
                    ),
                    onPressed: () => setState(() => favorite = !favorite),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


// Column(
//                   children: [
                    // Image.asset(widget.dish.image,
                    //     width: 100, height: 110, fit: BoxFit.fitWidth),
//                     Padding(
//                       padding: const EdgeInsets.symmetric(horizontal: 8),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             widget.dish.name,
//                             style: const TextStyle(fontSize: 12),
//                             softWrap: false,
//                             overflow: TextOverflow.ellipsis,
//                           ),
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               Text(
//                                 widget.dish.price,
//                                 style: const TextStyle(
//                                     color: AppColors.primaryColor,
//                                     fontSize: 12),
//                               ),
                              // Row(
                              //   children: [
                              //     Icon(Icons.star,
                              //         size: 16, color: Colors.amber.shade800),
                              //     Icon(Icons.star,
                              //         size: 16, color: Colors.amber.shade800),
                              //     Icon(Icons.star,
                              //         size: 16, color: Colors.amber.shade800),
                              //     Icon(Icons.star,
                              //         size: 16, color: Colors.amber.shade800),
                              //     Icon(Icons.star_half,
                              //         size: 16, color: Colors.amber.shade800),
                              //   ],
                              // )
                              // // const Text("4.5", style: TextStyle(color: AppColors.primaryColor, height: 2)),
//                             ],
//                           ),
                        //   ExpansionTile(
                        //     childrenPadding:
                        //         const EdgeInsets.all(15).copyWith(top: 0),
                        //     title: const Text(
                        //       "description ....",
                        //       style: TextStyle(
                        //           color: AppColors.primaryColor, fontSize: 12),
                        //     ),
                        //     children: [
                        //       Text(
                        //         widget.dish.description,
                        //         style: const TextStyle(
                        //             color: AppColors.primaryColor,
                        //             fontSize: 12),
                        //       ),
                        //     ],
                        //   ),
                        // ],
//                       ),
//                     ),
//                   ],
//                 ),