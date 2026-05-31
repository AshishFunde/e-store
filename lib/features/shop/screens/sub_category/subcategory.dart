import 'package:e_store/common/widgets/app_bar/appbar.dart';
import 'package:e_store/common/widgets/images/e_rounded_image.dart';
import 'package:e_store/common/widgets/products/product_cards/product_card_horizontal.dart';
import 'package:e_store/common/widgets/texts/section_heading.dart';
import 'package:e_store/utils/constants/image_strings.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: EAppBar(title: Text('Sports'), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(ESizes.defaultSpace),
          child: Column(
            children: [
              //Bannner
              ERoundedImage(
                imageUrl: EImages.promoBanner1,
                width: double.infinity,
                height: null,
                applyImageRadius: true,
              ),
              SizedBox(height: ESizes.spaceBtwItems),
              //Sub Categories]
              Column(
                children: [
                  //Heading
                  ESectionHeading(title: 'Sports shirt', onPressed: () {}),
                  SizedBox(height: ESizes.spaceBtwItems / 2),
                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                      itemCount: 4,
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (context,index)=> const SizedBox(width: ESizes.spaceBtwItems,),
                      itemBuilder: (context, index) =>
                          const EProductCardHorizontal(),
                    ),
                  ),

                  //
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
