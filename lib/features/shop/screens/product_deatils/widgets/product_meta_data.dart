import 'package:e_store/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:e_store/common/widgets/images/e_circular_image.dart';
import 'package:e_store/common/widgets/products/product_cards/product_price_text.dart';
import 'package:e_store/common/widgets/texts/e_brand_titile_text_with_verified_Icon.dart';
import 'package:e_store/common/widgets/texts/product_title_text.dart';
import 'package:e_store/utils/constants/colors.dart';
import 'package:e_store/utils/constants/enums.dart';
import 'package:e_store/utils/constants/image_strings.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:e_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class EProductMetaData extends StatelessWidget {
  const EProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    // final dark = EHelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          //saleTag
          children: [
            ERoundedContainer(
              radius: ESizes.sm,
              backgroundColor: EColors.secondary.withValues(alpha: 0.8),
              padding: const EdgeInsets.symmetric(
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
            const SizedBox(width: ESizes.spaceBtwItems,),
            //price
            Text('\₹2500',style:Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough) ,),
            const SizedBox(width: ESizes.spaceBtwItems,),
            EProductPriceText(price: '1900',isLarge: true,)
          ],
        ),
         const SizedBox(height: ESizes.spaceBtwItems/1.5),
        //title
        EProductTitleText(title: 'Nike Blue Shoes'),
         const SizedBox(height: ESizes.spaceBtwItems/1.5),
        //StockStatus
        Row(children:[ 
          EProductTitleText(title: 'Status'),
           const SizedBox(width: ESizes.spaceBtwItems),
         Text('In Stock', style: Theme.of(context).textTheme.titleMedium,)]),
       
        //Brand
        const SizedBox(height: ESizes.spaceBtwItems/1.5),
        Row(
          children: [
            ECircularImage(image: EImages.toyIcon,),
            EBrandTitleTextWithVerifiedIcon(title: 'Nike',brandTextSize: TextSizes.medium,),
          ],
        )
      ],
    );
  }
}
