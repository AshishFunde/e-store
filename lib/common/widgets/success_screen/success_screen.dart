import 'package:e_store/common/styles/spacing_style.dart';
import 'package:e_store/utils/constants/colors.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:e_store/utils/constants/text_strings.dart';
import 'package:e_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key, required this.image, required this.title, required this.subTitle, required this.onPressed});

  final String image, title, subTitle;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: ESpacingStyle.paddingWithAppBaarHeight * 2,
          child: Column(
            children: [
              //Image
              Image(
                image: AssetImage(image),
                width: EHelperFunctions.screenWidth() * 0.6,
              ),
              SizedBox(height: ESizes.spaceBtwSections),
              //Title ans SubTitle
              Text(
                title,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              SizedBox(height: ESizes.spaceBtwItems),
              Text(
                subTitle,
                style: Theme.of(context).textTheme.labelMedium,
              ),
              SizedBox(height: ESizes.spaceBtwSections),

              //button
              SizedBox(
                width: double.infinity, 
                child: ElevatedButton(
               onPressed: onPressed,
                style: ElevatedButton.styleFrom(
                    backgroundColor: EColors.buttonPrimary,
                  ),
                child: Text(ETexts.eContinue),
              ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
