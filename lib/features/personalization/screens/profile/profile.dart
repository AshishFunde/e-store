import 'package:e_store/common/widgets/app_bar/appbar.dart';
import 'package:e_store/common/widgets/images/e_circular_image.dart';
import 'package:e_store/common/widgets/texts/section_heading.dart';
import 'package:e_store/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:e_store/utils/constants/image_strings.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: EAppBar(
        title: Text('Profile'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:EdgeInsets.all(ESizes.defaultSpace) ,
          child: Column(
            children: [
              //Profile Picture
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    ECircularImage(image: EImages.user, width: 80,height: 80,),
                    TextButton(onPressed: (){}, child: Text('Chnage Profile Picture')),
                  ],
                ),
              ),
                 //Details
                 SizedBox(height: ESizes.spaceBtwItems/2,),
                 Divider(),
                 SizedBox(height: ESizes.spaceBtwItems,),
                 //Heading Profile Info
                 ESectionHeading(title: 'Profile Information',showActionButton: false,),
                 SizedBox(height: ESizes.spaceBtwItems,),
                 EProfileMenu(title: 'Name', value: 'Coding with ash', onPressed: () {  }, ),
                 EProfileMenu(title: 'userName', value: 'coading_with ash', onPressed: () {  }, ),
                 SizedBox(height: ESizes.spaceBtwItems/2,),
                 Divider(),
                 SizedBox(height: ESizes.spaceBtwItems,),
                 //Heading personal info
                 ESectionHeading(title: 'Personal Information',showActionButton: false,),
                 SizedBox(height: ESizes.spaceBtwItems,),
                 EProfileMenu(title: 'User ID', value: '45689', onPressed: () {  },icon: Iconsax.copy, ),
                 EProfileMenu(title: 'E-mail', value: 'ash@gmail;.com', onPressed: () {  }, ),
                 EProfileMenu(title: 'Phone Number', value: '+91 9999999999', onPressed: () {  }, ),
                 EProfileMenu(title: 'Gender', value: 'Male', onPressed: () {  }, ),
                 EProfileMenu(title: 'Date of Birth', value: '26-12-2003', onPressed: () {  }, ),
                 Divider(),
                 SizedBox(height:ESizes.spaceBtwItems),
                 Center(child: TextButton(onPressed: (){}, child: Text('Delete Account', style:TextStyle(color:Colors.red),)))
            ],
          ),
        ),
      ),
    );
  }
}


