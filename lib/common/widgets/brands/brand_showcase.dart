import 'package:e_store/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:e_store/common/widgets/brands/brand_card.dart';
import 'package:e_store/utils/constants/colors.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:e_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class TBrandShowCase extends StatelessWidget {
  const TBrandShowCase({super.key, required this.images});
  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return ERoundedContainer(
      padding: EdgeInsets.all(ESizes.md),
      showBorder: true,
      borderColor: EColors.darkGrey,
      backgroundColor: Colors.transparent,
      margin: EdgeInsets.only(bottom: ESizes.spaceBtwItems),
      child: Column(
        children: [
          //Brand with Products COunt
          EBrandCard(showBorder: false),

          // Brands with top 3 products Images
          Row(
            children: (
              images.map((image) => brandTopProductImageWidget(image, context)).toList()
            ),
          ),
        ],
      ),
    );
  }

  Widget brandTopProductImageWidget(String image, context) {
    return Expanded(
      child: ERoundedContainer(
        height: 100,
        backgroundColor: EHelperFunctions.isDarkMode(context)
            ? EColors.darkerGrey
            : EColors.light,
        margin: EdgeInsets.only(right: ESizes.sm),
        padding: EdgeInsets.all(ESizes.md),
        child: Image(
          fit: BoxFit.contain,
          image: AssetImage(image),
        ),
      ),
    );
  }
}
