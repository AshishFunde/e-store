import 'package:e_store/common/widgets/custom_shapes/container/primary_header_container.dart';
import 'package:e_store/common/widgets/custom_shapes/container/search_container.dart';
import 'package:e_store/common/widgets/layouts/grid_layout.dart';
import 'package:e_store/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:e_store/common/widgets/texts/section_heading.dart';
import 'package:e_store/features/shop/screens/home/widget/home_appbar.dart';
import 'package:e_store/features/shop/screens/home/widget/home_categories.dart';
import 'package:e_store/features/shop/screens/home/widget/promo_slider.dart';
import 'package:e_store/utils/constants/colors.dart';
import 'package:e_store/utils/constants/image_strings.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Header
            EPrimaryHeaderContainer(
              child: Column(
                children: [
                  //App BAr
                  EHomeAppBar(),
                  SizedBox(height: ESizes.spaceBtwSections),

                  //SearchBar
                  ESearchContainer(text: 'Search in Store'),
                  SizedBox(height: ESizes.spaceBtwSections),

                  //Categories
                  Padding(
                    padding: EdgeInsets.only(left: ESizes.defaultSpace),
                    child: Column(
                      children: [
                        //heading
                        ESectionHeading(
                          title: 'Popular Categories',
                          textColor: EColors.white,
                          showActionButton: false,
                        ),
                        SizedBox(height: ESizes.spaceBtwItems),

                        //Categories
                        EHomeCategories(),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // Body
            Padding(
              padding: const EdgeInsets.all(ESizes.defaultSpace),
              child: Column(
                children: [
                  EPromoSlider(
                    banners: [
                      EImages.promoBanner1,
                      EImages.promoBanner2,
                      EImages.promoBanner3,
                    ],
                  ),
                  SizedBox(height: ESizes.spaceBtwSections),
                  //heading
                  ESectionHeading(title: 'Popular Products',onPressed: (){},),
                  SizedBox(height: ESizes.spaceBtwItems),

                  //Popular products
                  EGridLayout(itemCount: 10, itemBuilder: (_,index)=> EProductCardVertical()),
                 
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


