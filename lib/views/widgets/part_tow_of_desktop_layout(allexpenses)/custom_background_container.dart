import 'package:flutter/material.dart';
class CustomBackgroundContainer extends StatelessWidget {
  const CustomBackgroundContainer({
    super.key, required this.child, required this.paddingHorizontal,
  });
  final Widget child;
  final double paddingHorizontal;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12)
      ),

      child:  Padding(
        padding:  EdgeInsets.symmetric(horizontal: paddingHorizontal),
        child: child,
      ),
    );
  }
}
