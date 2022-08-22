import 'package:flutter/material.dart';
import 'package:learn/constants/colors.dart';
import 'package:learn/constants/styles.dart';

class CustomLayout extends StatelessWidget {
  final Widget child;

  const CustomLayout({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 5),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: const [BoxShadow(color: Colors.grey, blurRadius: 5, offset: Offset(0, 0))],
        borderRadius: kSheetBorderRadius,
      ),
      child: Container(
        // padding: const EdgeInsets.only(top: 15),
        decoration: BoxDecoration(
          borderRadius: kSheetBorderRadius,
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              AppColors.background.withOpacity(0.8),
              AppColors.background.withOpacity(0.7),
              AppColors.background.withOpacity(0.5),
              AppColors.background.withOpacity(0.4),
              AppColors.background.withOpacity(0.3),
            ],
          ),
        ),
        child: child,
      ),
    );
  }
}
