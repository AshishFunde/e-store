import 'package:e_store/common/widgets/images/e_rounded_image.dart';
import 'package:e_store/common/widgets/texts/e_brand_titile_text_with_verified_Icon.dart';
import 'package:e_store/common/widgets/texts/product_title_text.dart';
import 'package:e_store/utils/constants/colors.dart';
import 'package:e_store/utils/constants/image_strings.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:e_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class ECartItem extends StatelessWidget {
  const ECartItem({super.key});
  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);
    return Row(
      children: [
        //Image
        ERoundedImage(
          imageUrl: EImages.productImage1,
          width: 60,
          height: 60,
          padding: EdgeInsets.all(ESizes.sm),
          backgroundColor: dark ? EColors.darkerGrey : EColors.light,
        ),
        const SizedBox(width: ESizes.spaceBtwItems),
        //Title,Price,Size
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              EBrandTitleTextWithVerifiedIcon(title: 'Nike'),
              Flexible(
                child: EProductTitleText(
                  title: 'Black Sport Shoe',
                  maxLines: 1,
                ),
              ),
              //Attributes
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'Color',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    TextSpan(
                      text: 'Green',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    TextSpan(
                      text: 'Size',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    TextSpan(
                      text: 'UK 08',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
