import 'package:e_store/common/widgets.login_signup/form_divider.dart';
import 'package:e_store/common/widgets.login_signup/social_button.dart';
import 'package:e_store/features/authentication/screens/signup.widgets/widgets/signup_form.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:e_store/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/string_extensions.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(ESizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Title
              Text(
                ETexts.signUpTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              SizedBox(height: ESizes.spaceBtwSections),
              //Form
              ESignUpForm(),
              SizedBox (height:ESizes.spaceBtwSections),
              //Divider
              EFormDivider(dividerText: ETexts.orSignUpWith.capitalize!),
              SizedBox (height:ESizes.spaceBtwSections),
              //SOcial Butotn
              ESocialButton()
            ],
          ),
        ),
      ),
    );
  }
}

