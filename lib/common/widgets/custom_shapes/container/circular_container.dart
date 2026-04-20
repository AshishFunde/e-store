import 'package:e_store/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class ECircularContainer extends StatelessWidget {
  const ECircularContainer(
    { 
    this.width = 400,
    this.height= 400,
    this.radius=400,
    this.padding=0,
    this.child,
    this.backgroundColor=EColors.white,
    super.key,
  });

  final double? width;
  final double? height;
  final double radius;
  final double padding;
  final Widget? child;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: backgroundColor,
      ),
      child: child,
    );
  }
}
