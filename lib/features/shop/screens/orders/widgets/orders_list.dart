import 'package:e_store/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:e_store/utils/constants/colors.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:e_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class EOrderListItem extends StatelessWidget {
  const EOrderListItem({super.key});
  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);
    return ListView.separated(
      separatorBuilder: (_,_)=> SizedBox(height: ESizes.spaceBtwItems,) ,
      itemCount: 12,
      itemBuilder: (_,  index) =>ERoundedContainer(
        padding: EdgeInsets.all(ESizes.md),
        showBorder: true,
        backgroundColor: dark ? EColors.dark : EColors.light,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            //Row1
            Row(
              children: [
                //Icon
                Icon(Iconsax.ship),
                SizedBox(width: ESizes.spaceBtwItems / 2),
                //Status
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Processing',
                        style: Theme.of(context).textTheme.bodyLarge!.apply(
                          color: EColors.primary,
                          fontWeightDelta: 1,
                        ),
                      ),
                      Text(
                        '07-01-2026',
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                    ],
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Iconsax.arrow_right_34, size: ESizes.iconsSm),
                ),
              ],
            ),
            SizedBox(height: ESizes.spaceBtwItems),
            //Row2
            Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      //Icon
                      Icon(Iconsax.tag),
                      SizedBox(width: ESizes.spaceBtwItems / 2),
                      //Status
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Order',
                              style: Theme.of(context).textTheme.labelMedium,
                            ),
                            Text(
                              '[#342f34]',
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      //Icon
                      Icon(Iconsax.calendar),
                      SizedBox(width: ESizes.spaceBtwItems / 2),
                      //Status
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Shipping Date',
                              style: Theme.of(context).textTheme.labelMedium,
                            ),
                            Text(
                              '03-01-2026',
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
