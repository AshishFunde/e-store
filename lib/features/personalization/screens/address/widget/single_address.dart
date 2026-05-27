import 'package:e_store/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:e_store/utils/constants/colors.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:e_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ESingleAddress extends StatelessWidget {
  const ESingleAddress({super.key, required this.selectedAddress});

  final bool selectedAddress;

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);
    return ERoundedContainer(
      padding: EdgeInsets.all(ESizes.md),
      width: double.infinity,
      showBorder: true,
      backgroundColor: selectedAddress
          ? EColors.primary.withValues(alpha: 0.5)
          : Colors.transparent,
      borderColor: selectedAddress
          ? Colors.transparent
          : dark
          ? EColors.darkerGrey
          : EColors.grey,
      margin: EdgeInsets.only(bottom: ESizes.spaceBtwItems),
      child: Stack(
        children: [
          Positioned(
            right: 5,
            top: 0,
            child: Icon(
              selectedAddress ? Iconsax.tick_circle5 : null,
              color: selectedAddress
                  ? dark
                        ? EColors.light
                        : EColors.dark.withValues(alpha: 0.6)
                  : null,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Ashish Funde',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: ESizes.sm / 2),
              const Text('+91 9399073820', maxLines: 1, overflow: TextOverflow.ellipsis,),
              const SizedBox(height: ESizes.sm / 2),
              const Text('d-32 saket colony katulbod,durg,India',softWrap: true,)
            ],
          ),
        ],
      ),
    );
  }
}
