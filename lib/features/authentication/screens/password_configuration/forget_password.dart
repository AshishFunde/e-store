import 'package:e_store/features/authentication/screens/password_configuration/reset_password.dart';
import 'package:e_store/utils/constants/colors.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:e_store/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:iconsax/iconsax.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(ESizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Heading
            Text(ETexts.forgetPasswordTitle,style: Theme.of(context).textTheme.headlineMedium,),
            SizedBox(height:ESizes.spaceBtwItems),
            Text(ETexts.forgetPasswordSubTitle,style: Theme.of(context).textTheme.labelMedium,),
            SizedBox(height:ESizes.spaceBtwSections * 2),
            //TextField
            TextFormField(
              decoration: InputDecoration(
                labelText: ETexts.email,prefixIcon:Icon(Iconsax.direct_right)  
              ),
            ),
            SizedBox(height:ESizes.spaceBtwSections ),

            //Submit button
            SizedBox(
                width: double.infinity, // ✅ FIXED
                child: ElevatedButton(
               onPressed: ()=> Get.to(()=>ResetPassword() ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: EColors.buttonPrimary,
                  ),
                child: Text(ETexts.submit),
              ),
              ),
          ],
        ),),
    );
  }
}