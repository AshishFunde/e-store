import 'package:e_store/common/widgets/products/cart/add_remove_button.dart';
import 'package:e_store/common/widgets/products/cart/cart_item.dart';
import 'package:e_store/common/widgets/products/product_cards/product_price_text.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class ECartItems extends StatelessWidget {
  const ECartItems({super.key, this.showAddRemoveButtons=true});

  final bool showAddRemoveButtons;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      separatorBuilder: (_, _) =>
          const SizedBox(height: ESizes.spaceBtwSections),
      itemCount: 2,
      itemBuilder: (_, index) => Column(
        children: [
          ECartItem(),
          if(showAddRemoveButtons) const SizedBox(height: ESizes.spaceBtwItems),
          //add Remove button with totle
          if(showAddRemoveButtons)
            const Row(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(width: 70),
                  //Add remove Button
                  EProductQuantityWithAddRemoveButton(),
                ],
              ),

              EProductPriceText(price: '256'),
            ],
          ),
        ],
      ),
    );
  }
}
