import 'package:e_store/features/authentication/screens/login/login.dart';
import 'package:e_store/features/authentication/screens/signup.widgets/widgets/terms_conditon_checkbox.dart';
import 'package:e_store/utils/constants/colors.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:e_store/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:iconsax/iconsax.dart';

class ESignUpForm extends StatelessWidget {
  const ESignUpForm({
    super.key,
    
  });

  

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Iconsax.user),
                    labelText: ETexts.firstName,
                  ),
                ),
              ),
              SizedBox(width: ESizes.spacebtwInputFields),
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Iconsax.user),
                    labelText: ETexts.firstName,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: ESizes.spacebtwInputFields),
          //UserName
          TextFormField(
            decoration: InputDecoration(
              prefixIcon: Icon(Iconsax.user_edit),
              labelText: ETexts.username,
            ),
          ),
          SizedBox(height: ESizes.spacebtwInputFields),
          //Email
          TextFormField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.email_outlined),
              labelText: ETexts.email,
            ),
          ),
          SizedBox(height: ESizes.spacebtwInputFields),
          //Phone Number
          TextFormField(
            decoration: InputDecoration(
              prefixIcon: Icon(Iconsax.call),
              labelText: ETexts.phoneNumber,
            ),
          ),
          SizedBox(height: ESizes.spacebtwInputFields),
          //Passport
          TextFormField(
            decoration: InputDecoration(
              prefixIcon: Icon(Iconsax.password_check),
              suffixIcon: Icon(Iconsax.eye_slash),
              labelText: ETexts.password,
            ),
          ),
          SizedBox(height: ESizes.spacebtwInputFields),
          //Tearms&Conditions Checkbox
          ETermsAndConditionCheckbox(),
          SizedBox (height:ESizes.spacebtwInputFields),
          //SignUp Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => Get.to(() => const LoginScreen()),
              style: ElevatedButton.styleFrom(
        backgroundColor: EColors.buttonPrimary,
      ),
              child: Text(ETexts.createAccount,),
            ),
          ),
        ],
      ),
    );
  }
}

