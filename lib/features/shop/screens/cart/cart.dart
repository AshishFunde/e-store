import 'package:e_store/common/widgets/app_bar/appbar.dart';
import 'package:e_store/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:e_store/features/shop/screens/checkout/checkout.dart';
import 'package:e_store/utils/constants/colors.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:e_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: EAppBar(
        showBackArrow: true,
        title: Text('Cart', style: Theme.of(context).textTheme.headlineMedium),
      ),
      body: Padding(
        padding: EdgeInsets.all(ESizes.defaultSpace),
        //items in cart
        child: ECartItems()
      ),
      //CHeckout Button
      bottomNavigationBar:Padding(
        padding: EdgeInsets.all(ESizes.defaultSpace),
        child: ElevatedButton(onPressed: ()=>Get.to(()=>CheckoutScreen() ),style: ElevatedButton.styleFrom(backgroundColor: EColors.primary), child: Text('Checkout ₹25000'),)),
    );
  }
}

