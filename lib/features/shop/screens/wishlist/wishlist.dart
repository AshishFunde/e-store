import 'package:e_store/common/widgets/app_bar/appbar.dart';
import 'package:e_store/common/widgets/icons/e_circular_icon.dart';
import 'package:e_store/common/widgets/layouts/grid_layout.dart';
import 'package:e_store/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:e_store/features/shop/screens/home/home.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:iconsax/iconsax.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: EAppBar(
        title: Text('Wishlist', style: Theme.of(context).textTheme.headlineMedium,),
        actions: [
          ECircularIcon(icon: Iconsax.add , onPressed: () => Get.to(HomeScreen()), )
        ],
      ),
      body:SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(ESizes.defaultSpace),
        child: Column(
          children: [
            EGridLayout(itemCount: 10, itemBuilder:(_, index)=> EProductCardVertical())
          ],
        ),),
      ) ,
    );
  }
}
