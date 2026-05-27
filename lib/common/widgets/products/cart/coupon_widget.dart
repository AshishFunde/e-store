import 'package:e_store/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:e_store/utils/constants/colors.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:e_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class ECouponCode extends StatelessWidget {
  const ECouponCode({super.key, });

  
  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);
    return ERoundedContainer(
      showBorder: true,
      backgroundColor: dark ? EColors.dark : EColors.white,
      padding: EdgeInsets.only(
        top: ESizes.sm,
        bottom: ESizes.sm,
        right: ESizes.sm,
        left: ESizes.md,
      ),
      child: Row(
        children: [
          //TextField
          Flexible(
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'Have to promo Code? Enter Here',
                focusedBorder: InputBorder.none,
                border: InputBorder.none,
                enabledBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
              ),
            ),
          ),
          //Buttons
          SizedBox(
            width: 80,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: EColors.grey.withValues(alpha: 0.5),
                foregroundColor: dark
                    ? EColors.white.withValues(alpha: 0.5)
                    : EColors.dark.withValues(alpha: 0.5),
                side: BorderSide(color: Colors.grey.withValues(alpha: 0.1)),
              ),
              child: Text('Apply'),
            ),
          ),
        ],
      ),
    );
  }
}
