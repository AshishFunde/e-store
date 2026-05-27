import 'package:e_store/common/widgets/app_bar/appbar.dart';
import 'package:e_store/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:e_store/common/widgets/products/cart/cart_item.dart';
import 'package:e_store/common/widgets/products/cart/coupon_widget.dart';
import 'package:e_store/common/widgets/success_screen/success_screen.dart';
import 'package:e_store/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:e_store/features/shop/screens/checkout/widget/biling_address_section.dart';
import 'package:e_store/features/shop/screens/checkout/widget/biling_amount_section.dart';
import 'package:e_store/features/shop/screens/checkout/widget/biling_payment_section.dart';
import 'package:e_store/navigation_menu.dart';
import 'package:e_store/utils/constants/colors.dart';
import 'package:e_store/utils/constants/image_strings.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:e_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: EAppBar(
        showBackArrow: true,
        title: Text(
          'Order Review',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(ESizes.defaultSpace),
          child: Column(
            children: [
              ECartItems(showAddRemoveButtons: false),
              const SizedBox(height: ESizes.spaceBtwSections),
              //coupoun field
              ECouponCode(),
              const SizedBox(height: ESizes.spaceBtwSections),
              //Biling sectin
              ERoundedContainer(
                padding: EdgeInsets.all(ESizes.md),
                showBorder: true,
                backgroundColor: dark?EColors.black:EColors.white ,
                child: Column(
                  children: [
                    //Pricing
                   EBilingAmountSection(),
                    const SizedBox(height: ESizes.spaceBtwItems),
                    //Divider
                    Divider(),
                    const SizedBox(height: ESizes.spaceBtwItems),
                    //payment method
                     EBilingPaymentSection(),
                     const SizedBox(height: ESizes.spaceBtwItems),
                    //Address
                    EBilingAddressSection(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
       //CHeckout Button
      bottomNavigationBar:Padding(
        padding: EdgeInsets.all(ESizes.defaultSpace),
        child: ElevatedButton(onPressed: ()=>Get.to(()=>SuccessScreen(image: EImages.successdulPaymentIcon, title: 'Payment Successful', subTitle: 'Your Order will be Shipped soon', onPressed: () => const NavigationMenu(),) ),style: ElevatedButton.styleFrom(backgroundColor: EColors.primary), child: Text('Checkout \₹25000'))));
    
  }
}

