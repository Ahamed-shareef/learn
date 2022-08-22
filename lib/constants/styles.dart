import 'package:flutter/material.dart';

BorderRadius kSheetBorderRadius = const BorderRadius.only(
  topLeft: Radius.circular(40),
  topRight: Radius.circular(40),
);

BoxDecoration kCustomBoxShadow({color}) {
  return BoxDecoration(
    color: color,
    borderRadius: BorderRadius.circular(20),
    boxShadow: const [BoxShadow(blurRadius: 2, color: Colors.grey)],
  );
}
