import 'package:e_store/common/widgets/app_bar/appbar.dart';
import 'package:e_store/common/widgets/product_cart/cart_menu_icon.dart';
import 'package:e_store/utils/constants/colors.dart';
import 'package:e_store/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class EHomeAppBar extends StatelessWidget {
  const EHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return EAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            ETexts.homeAppBarTitle,
            style: Theme.of(
              context,
            ).textTheme.labelMedium!.apply(color: EColors.grey),
            textAlign: TextAlign.center,
          ),
          Text(
            ETexts.homeAppBarSubTitle,
            style: Theme.of(context).textTheme.headlineSmall!
                .apply(color: EColors.white),
          ),
        ],
      ),
    
      actions: [
        ECartCounterIcon(
          iconColor: EColors.white,
          onPressed: () {},
        ),
      ],
    );
  }
}

