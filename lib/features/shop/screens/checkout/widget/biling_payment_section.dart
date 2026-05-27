import 'package:e_store/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:e_store/common/widgets/texts/section_heading.dart';
import 'package:e_store/utils/constants/colors.dart';
import 'package:e_store/utils/constants/image_strings.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:e_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class EBilingPaymentSection extends StatelessWidget {
  const EBilingPaymentSection({super.key});
  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        ESectionHeading(title:'Payment Method',buttonTitle: 'Change',showActionButton: true,onPressed: (){},),
        const SizedBox(height: ESizes.spaceBtwItems/2),
        Row(
          children: [
            ERoundedContainer(
              width: 60,
              height: 40,
              backgroundColor:dark? EColors.light:EColors.white ,
              padding: EdgeInsets.all(ESizes.sm),
              child: Image(image:AssetImage(EImages.paypal),fit: BoxFit.contain,),
            ),
            SizedBox(width: ESizes.spaceBtwItems/2,),
            Text('Paypal',style: Theme.of(context).textTheme.bodyLarge,)
          ],
        )
      ],
    );
  }
}
