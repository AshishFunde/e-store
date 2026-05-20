import 'package:e_store/common/widgets/app_bar/appbar.dart';
import 'package:e_store/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:e_store/common/widgets/custom_shapes/curved_edges/curved_edges.dart';
import 'package:e_store/common/widgets/custom_shapes/curved_edges/curved_edges_widgets.dart';
import 'package:e_store/common/widgets/icons/e_circular_icon.dart';
import 'package:e_store/common/widgets/images/e_rounded_image.dart';
import 'package:e_store/features/shop/screens/product_deatils/widgets/product_detail_image_slider.dart';
import 'package:e_store/features/shop/screens/product_deatils/widgets/product_meta_data.dart';
import 'package:e_store/features/shop/screens/product_deatils/widgets/rating_share_widget.dart';
import 'package:e_store/utils/constants/colors.dart';
import 'package:e_store/utils/constants/image_strings.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:e_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProductDeatil extends StatelessWidget {
  const ProductDeatil({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);
    return Scaffold(
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
                  //checkout button
                  //description
                  //reviewa
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

