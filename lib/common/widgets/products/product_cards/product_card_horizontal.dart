import 'package:e_store/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:e_store/common/widgets/icons/e_circular_icon.dart';
import 'package:e_store/common/widgets/images/e_rounded_image.dart';
import 'package:e_store/common/widgets/products/product_cards/product_price_text.dart';
import 'package:e_store/common/widgets/texts/e_brand_titile_text_with_verified_Icon.dart';
import 'package:e_store/common/widgets/texts/product_title_text.dart';
import 'package:e_store/utils/constants/colors.dart';
import 'package:e_store/utils/constants/image_strings.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:e_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class EProductCardHorizontal extends StatelessWidget {
  const EProductCardHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);
    // Container with side paddings,color,edges,radius and shadow
    return Container(
      width: 310,
      padding: EdgeInsets.all(1),
      decoration: BoxDecoration(
        // boxShadow: [EShadowStyle.verticalProductShadow],
        borderRadius: BorderRadius.circular(ESizes.productImageRadius),
        color: dark ? EColors.darkerGrey : EColors.softGrey,
      ),
      child: Row(
        children: [
          //Thumbnail
          ERoundedContainer(
            height: 120,
            padding: const EdgeInsets.all(ESizes.sm),
            backgroundColor: dark? EColors.dark:EColors.light,
            child: Stack(
              children: [
                SizedBox(
                  height: 120,
                  width: 120,
                  child: ERoundedImage(imageUrl: EImages.productImage1,applyImageRadius: true,),
                ),

                //Sale Tag
                  Positioned(
                    top: 12,
                    // left: 10,
                    child: ERoundedContainer(
                      radius: ESizes.sm,
                      backgroundColor: EColors.secondary,
                      padding: EdgeInsets.symmetric(
                        horizontal: ESizes.sm,
                        vertical: ESizes.xs,
                      ),
                      child: Text(
                        '25%',
                        style: Theme.of(
                          context,
                        ).textTheme.labelLarge!.apply(color: EColors.black),
                      ),
                    ),
                  ),
                  //Favourite Icon Button
                  Positioned(
                    top: 0,
                    right: 0,
                    child: ECircularIcon(icon: Iconsax.heart5, color: Colors.red),
                  ),
              ],
            ),
          ),

          //Details
          SizedBox(
            width: 172,
            child: Padding(
              padding: const EdgeInsets.only(top:ESizes.sm, left: ESizes.sm),
              child: Column(
                children: [
                  Column(
                    children: [
                      EProductTitleText(title: 'Green Nike Half Sleeves Shirt ',smallSize: true,),
                      SizedBox(height: ESizes.spaceBtwItems/2,),
                      EBrandTitleTextWithVerifiedIcon(title: 'Nike')
                    ],
                  ),

                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(child: EProductPriceText(price: '2500')),
                      //Add to dart
                      Container(
                        decoration: BoxDecoration(
                          color: EColors.dark,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(ESizes.cardRadiusMd,),
                            bottomRight: Radius.circular(ESizes.productImageRadius)
                          ),
                        ),
                        child: const SizedBox(
                          width: ESizes.iconsLg *1.2,
                          height: ESizes.iconsLg *1.2,
                          child: Center(child: Icon(Iconsax.add,color: EColors.white,),),
                        ),
                      )

                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
