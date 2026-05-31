import 'package:e_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class EBilingAmountSection extends StatelessWidget {
  const EBilingAmountSection({super.key});
  @override
  Widget build(BuildContext context) {
     return Column(
      children: [
        //Subtotal
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Subtotal',style: Theme.of(context).textTheme.bodyMedium),
            Text('₹2500',style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        SizedBox(height: ESizes.spaceBtwItems/2,),
        //Shipping fees
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Shipping Fee',style: Theme.of(context).textTheme.bodyMedium),
            Text('₹60',style: Theme.of(context).textTheme.labelLarge),
          ],
        ),
        SizedBox(height: ESizes.spaceBtwItems/2,),
        //Tax Fee
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Tax Fee',style: Theme.of(context).textTheme.bodyMedium),
            Text('₹60',style: Theme.of(context).textTheme.labelLarge),
          ],
        ),
        SizedBox(height: ESizes.spaceBtwItems/2,),
        //Order Toatl
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Order Total',style: Theme.of(context).textTheme.bodyMedium),
            Text('₹60',style: Theme.of(context).textTheme.titleMedium),
          ],
        ),
        SizedBox(height: ESizes.spaceBtwItems/2,),
      ],
     );
  }
}
