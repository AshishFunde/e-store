import 'package:e_store/common/widgets/icons/e_circular_icon.dart';
import 'package:e_store/utils/constants/colors.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:e_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class EBottomAddToCart extends StatelessWidget {
  const EBottomAddToCart({super.key});
  

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: ESizes.defaultSpace,
        vertical: ESizes.defaultSpace / 2,
      ),
      decoration: BoxDecoration(
        color: dark ? EColors.darkerGrey : EColors.light,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(ESizes.cardRadiusLg),
          topRight: Radius.circular(ESizes.cardRadiusLg),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ECircularIcon(
                icon: Iconsax.minus,
                backgroundColor: EColors.darkerGrey,
                width: 40,
                height: 40,
                color: EColors.white,
              ),
              const SizedBox(width: ESizes.spaceBtwItems),
              Text('2', style: Theme.of(context).textTheme.titleSmall),
              const SizedBox(width: ESizes.spaceBtwItems),
              ECircularIcon(
                icon: Iconsax.add,
                backgroundColor: EColors.black,
                width: 40,
                height: 40,
                color: EColors.white,
              ),
            ],
          ),
          
          ElevatedButton(onPressed: () {},
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(ESizes.md),
              backgroundColor: EColors.black,
              side: const BorderSide(color: EColors.black)
            ),
           child: const Text('Add to Cart')),
        ],
      ),
    );
  }
}
