import 'package:e_store/utils/constants/colors.dart';
import 'package:e_store/utils/constants/image_strings.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class ESocialButton extends StatelessWidget{
  const ESocialButton({super.key});
   @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: EColors.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              image: AssetImage(EImages.google),
              width: ESizes.iconsLg,
              height: ESizes.iconsLg,
            ),
          ),
        ),
        SizedBox(width:ESizes.spaceBtwItems),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: EColors.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              image: AssetImage(EImages.facebook),
              width: ESizes.iconsLg,
              height: ESizes.iconsLg,
            ),
          ),
        ),
      ],
    );
  }
}
