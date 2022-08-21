import 'package:flutter/material.dart';

class RatingBar extends StatelessWidget {
  const RatingBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.star, size: 19, color: Colors.amber.shade800),
        Icon(Icons.star, size: 19, color: Colors.amber.shade800),
        Icon(Icons.star, size: 19, color: Colors.amber.shade800),
        Icon(Icons.star, size: 19, color: Colors.amber.shade800),
        Icon(Icons.star_half, size: 19, color: Colors.amber.shade800),
      ],
    );
  }
}
