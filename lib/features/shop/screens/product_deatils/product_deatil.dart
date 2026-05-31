import 'package:e_store/common/widgets/texts/section_heading.dart';
import 'package:e_store/features/shop/screens/product_deatils/widgets/bottom_add_to_cart_widget.dart';
import 'package:e_store/features/shop/screens/product_deatils/widgets/product_attributes.dart';
import 'package:e_store/features/shop/screens/product_deatils/widgets/product_detail_image_slider.dart';
import 'package:e_store/features/shop/screens/product_deatils/widgets/product_meta_data.dart';
import 'package:e_store/features/shop/screens/product_deatils/widgets/rating_share_widget.dart';
import 'package:e_store/features/shop/screens/product_reviews/product_reviews.dart';
import 'package:e_store/utils/constants/colors.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:e_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';

class ProductDeatil extends StatelessWidget {
  const ProductDeatil({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar:EBottomAddToCart()  ,
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Product Image Slider
            EProductImageSlider(),
            //Product Deatils
            Padding(
              padding: EdgeInsets.only(
                right: ESizes.defaultSpace,
                left: ESizes.defaultSpace,
                bottom: ESizes.defaultSpace,
              ),
              child: Column(
                children: [
                  //rating and share
                  ERatingandShare(),
                  //price,title,stock,brand
                  EProductMetaData(),
                  //attributes
                  EProductAttributes(),
                  SizedBox(height: ESizes.spaceBtwSections,),
                  //checkout button
                  SizedBox(width: double.infinity, child: ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(backgroundColor: EColors.primary,), child: Text('Checkout'),)),
                  //description
                  SizedBox(height: ESizes.spaceBtwSections/4,),
                  ESectionHeading(title: 'Description'),
                  SizedBox(height: ESizes.spaceBtwItems,),
                  ReadMoreText(
                    'aksghfsaghghghghghghghghghghghghghghgh fklhsdd sh dlfk s ldf sl fls dlkf',
                    trimMode: TrimMode.Line,
                    trimLines: 2,
                    trimCollapsedText: 'Show More',
                    trimExpandedText: 'Less',
                    moreStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w800),
                    lessStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w800),
                  ),
                  //reviewa
                  const Divider(),
                  const SizedBox(height: ESizes.spaceBtwItems,),
                  Row(
                    children: [
                      ESectionHeading(title: 'Reviews(199)',showActionButton: false,),
                      IconButton(icon: Icon(Iconsax.arrow_right_3,size: 18),onPressed: ()=> Get.to(()=> ProductReviewsScreen()),)
                    ],
                  ),
                  const SizedBox(height: ESizes.spaceBtwSections,)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

