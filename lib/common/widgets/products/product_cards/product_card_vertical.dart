import 'package:e_store/common/styles/shadows.dart';
import 'package:e_store/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:e_store/common/widgets/icons/e_circular_icon.dart';
import 'package:e_store/common/widgets/images/e_rounded_image.dart';
import 'package:e_store/common/widgets/products/product_cards/product_price_text.dart';
import 'package:e_store/common/widgets/texts/e_brand_titile_text_with_verified_Icon.dart' show EBrandTitleTextWithVerifiedIcon;
import 'package:e_store/common/widgets/texts/product_title_text.dart';
import 'package:e_store/features/shop/screens/product_deatils/product_deatil.dart';
import 'package:e_store/utils/constants/colors.dart';
import 'package:e_store/utils/constants/image_strings.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:e_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:iconsax/iconsax.dart';

class EProductCardVertical extends StatelessWidget {
  const EProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);
    // Container with side paddings,color,edges,radius and shadow
    return GestureDetector(
      onTap: ()=> Get.to(() => const ProductDeatil()),
      child: Container(
        width: 180,
        padding: EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [EShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(ESizes.productImageRadius),
          color: dark ? EColors.darkerGrey : EColors.white,
        ),
        child: Column(
          children: [
            //Thumbnail, wishlistButton , discount tag
            ERoundedContainer(
              height: 180,
              padding: EdgeInsets.all(ESizes.sm),
              backgroundColor: dark ? EColors.dark : EColors.light,
              child: Stack(
                children: [
                  //Thumnail image
                  ERoundedImage(
                    imageUrl: EImages.productImage1,
                    applyImageRadius: true,
                  ),
                  //Sale Tag
                  Positioned(
                    top: 10,
                    left: 10,
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
      
            //Deatils
            SizedBox(height: ESizes.spaceBtwItems / 2),
            Padding(
              padding: EdgeInsets.only(left: ESizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  EProductTitleText(
                    title: 'Cream Nike Air Shoes',
                    smallSize: true,
                  ),
                  SizedBox(height: ESizes.spaceBtwItems / 2),
                  EBrandTitleTextWithVerifiedIcon(title: 'Nike',), 
                ],
              ),
            ),
                Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: ESizes.sm),
                        child: EProductPriceText(price: '5000',)),
                      //Add cart button
                      Container(
                        decoration: BoxDecoration(
                          color: EColors.dark,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(ESizes.cardRadiusMd),
                            bottomRight: Radius.circular(
                              ESizes.productImageRadius,
                            ),
                          ),
                        ),
                        child: SizedBox(
                          width: ESizes.iconsLg*1.2,
                          height: ESizes.iconsLg*1.2,
                          child: Center(child: Icon(Iconsax.add, color: EColors.white)),
                        ),
                      ),
                    ],
                  ),
          ],
        ),
      ),
    );
  }
}




