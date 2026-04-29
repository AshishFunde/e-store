import 'package:e_store/common/widgets/brands/brand_showcase.dart';
import 'package:e_store/common/widgets/layouts/grid_layout.dart';
import 'package:e_store/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:e_store/common/widgets/texts/section_heading.dart';
import 'package:e_store/utils/constants/image_strings.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class ECategoryTab extends StatelessWidget {
  const ECategoryTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      children:[
        Padding(
        padding: EdgeInsets.all(ESizes.defaultSpace),
        child: Column(
          children: [
            //BRANDS
            TBrandShowCase(images: [EImages.productImage1,EImages.productImage10,EImages.productImage2],),
            TBrandShowCase(images: [EImages.productImage1,EImages.productImage10,EImages.productImage2],),
            SizedBox(height: ESizes.spaceBtwItems,),
      
            //PRODUCTS
            ESectionHeading(title: 'You Might Like', onPressed: (){},),
            SizedBox(height: ESizes.spaceBtwItems,),
      
            EGridLayout(itemCount: 4, itemBuilder: (_, index)=> EProductCardVertical())
          ],
        ),
      ),
      ] 
    );
  }
}
