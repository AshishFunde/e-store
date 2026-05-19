import 'package:e_store/utils/constants/colors.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:e_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class ECircularImage extends StatelessWidget {
  const ECircularImage({
    super.key,
    this.width= 56,
    this.height=56,
    this.padding=ESizes.sm,
    this.overlayColor,
    this.backgroundColor,
    this.isNetworkImage= false,
    required this.image,
    this.fit= BoxFit.cover,
  });

  final double width, height, padding;
  final Color? overlayColor;
  final Color? backgroundColor;
  final bool isNetworkImage;
  final String image;
  final BoxFit? fit;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        color: backgroundColor?? (EHelperFunctions.isDarkMode(context)
            ? EColors.black
            : EColors.white),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Image(
        color:overlayColor,
        image: isNetworkImage? NetworkImage(image) : AssetImage(image) as ImageProvider ,
        fit: fit,
      ),
    );
  }
}
