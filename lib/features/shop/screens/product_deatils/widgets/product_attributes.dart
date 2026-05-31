import 'package:e_store/common/widgets/chips/choice_chip.dart';
import 'package:e_store/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:e_store/common/widgets/products/product_cards/product_price_text.dart';
import 'package:e_store/common/widgets/texts/product_title_text.dart';
import 'package:e_store/common/widgets/texts/section_heading.dart';
import 'package:e_store/utils/constants/colors.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:e_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class EProductAttributes extends StatelessWidget {
  const EProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        //Selected Attributes
        ERoundedContainer(
          padding: EdgeInsets.all(ESizes.md),
          backgroundColor: dark ? EColors.darkerGrey : EColors.grey,
          child: Column(
            children: [
              //Title,Price and Stack Status
              Row(
                children: [
                  ESectionHeading(title: 'Variation', showActionButton: false),
                  SizedBox(width: ESizes.spaceBtwItems),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          EProductTitleText(title: 'Price : ', smallSize: true),

                          //Actual Price
                          Text(
                            '₹2500',
                            style: Theme.of(context).textTheme.titleSmall!
                                .apply(decoration: TextDecoration.lineThrough),
                          ),
                          SizedBox(width: ESizes.spaceBtwItems),
                          //Sale price
                          EProductPriceText(price: '2000'),
                        ],
                      ),

                      //Sale Price
                      Row(
                        children: [
                          EProductTitleText(title: 'Stock : ', smallSize: true),
                          Text(
                            'In Stock',
                            style: Theme.of(
                              context,
                            ).textTheme.titleMedium!.apply(color: Colors.amber),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              //Variation Description
              EProductTitleText(
                title:
                    'This is the description of the product and it can go upto max 4 line ',
                smallSize: true,
                maxLines: 4,
              ),
            ],
          ),
        ),
        const SizedBox(height: ESizes.spaceBtwItems),

        //Attributes
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ESectionHeading(title: 'Colors',showActionButton: false,),
            SizedBox(height: ESizes.spaceBtwItems / 2),
            Wrap(
              children: [
                 EChoiceChip(text: 'Green', selected:true,onSelected: (value){},),
                 EChoiceChip(text: 'Red', selected:false,onSelected: (value){},),
                 EChoiceChip(text: 'Blue', selected:false,onSelected: (value){},),
              ],
            )
            
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ESectionHeading(title: 'Size',showActionButton: false,),
            SizedBox(height: ESizes.spaceBtwItems / 2),
            Wrap(
              spacing: 8,
              children: [
                  EChoiceChip(text: 'UK 7', selected:true,onSelected: (value){},),
                  EChoiceChip(text: 'UK 8', selected:false,onSelected: (value){},),
                  EChoiceChip(text: 'UK 9', selected:false,onSelected: (value){},),
              ],
            )
           

          ],
        ),
      ],
    );
  }
}

