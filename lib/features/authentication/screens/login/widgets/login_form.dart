import 'package:e_store/features/authentication/screens/signup.widgets/signup.dart';
import 'package:e_store/utils/constants/colors.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:e_store/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:iconsax/iconsax.dart';

class ELoginForm extends StatelessWidget {
  const ELoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: ESizes.spaceBtwSections,
        ),
        child: Column(
          children: [
            //Email
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: ETexts.email,
              ),
            ),
            SizedBox(height: ESizes.spacebtwInputFields),
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.password),
                labelText: ETexts.password,
                suffixIcon: Icon(Iconsax.eye_slash),
              ),
            ),
            SizedBox(height: ESizes.spacebtwInputFields / 2),
    
            //Remember me or forget password
            Row(
              children: [
                //Remember me
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    Text(ETexts.rememberme),
                  ],
                ),
                //Forget Password
                TextButton(
                  onPressed: () {},
                  child: Text(ETexts.forgetPassword),
                ),
              ],
            ),
            SizedBox(height: ESizes.spaceBtwSections),
    
            //sign in Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: EColors.buttonPrimary,
                ),
                child: Text(ETexts.signIn),
              ),
            ),
            SizedBox(height: ESizes.spaceBtwItems,),
            //Create Account
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () => Get.to(()=>const SignUpScreen()),
                child: Text(ETexts.createAccount),
              ),
            ),
            SizedBox(height: ESizes.spaceBtwSections),
          ],
        ),
      ),
    );
  }
}