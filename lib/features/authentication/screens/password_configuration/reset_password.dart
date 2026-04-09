import 'package:e_store/features/authentication/screens/login/login.dart';
import 'package:e_store/utils/constants/colors.dart';
import 'package:e_store/utils/constants/image_strings.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:e_store/utils/constants/text_strings.dart';
import 'package:e_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

    

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: ()=>Get.back(), icon: Icon(Icons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(ESizes.defaultSpace),
          child: Column(
            children: [
                Image(
                image: AssetImage(EImages.deliverdEmailIllustration),
                width: EHelperFunctions.screenWidth() * 0.6,
              ),
              SizedBox(height: ESizes.spaceBtwSections),
              //Title ans SubTitle
              Text(
                ETexts.changeYourPasswordTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              SizedBox(height: ESizes.spaceBtwItems),
              Text(
                ETexts.changeYourPasswordSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
              ),
              SizedBox(height: ESizes.spaceBtwSections),

              //button
              SizedBox(
                width: double.infinity, // ✅ FIXED
                child: ElevatedButton(
               onPressed: ()=> Get.to(()=> LoginScreen()),
                style: ElevatedButton.styleFrom(
                    backgroundColor: EColors.buttonPrimary,
                  ),
                child: Text(ETexts.done),
              ),
              ),
              SizedBox(height: ESizes.spaceBtwItems),
              SizedBox(
                width: double.infinity, // ✅ FIXED
                child: TextButton(
               onPressed: (){},
                
                child: Text(ETexts.resendEmail),
              ),
              ),
            ]
            
          ),),
      ),

    );
  }
}
