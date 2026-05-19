import 'package:e_store/common/widgets/app_bar/appbar.dart';
import 'package:e_store/common/widgets/custom_shapes/container/primary_header_container.dart';
import 'package:e_store/common/widgets/list_tile/setting_menu_tile.dart';
import 'package:e_store/common/widgets/list_tile/user_profile_tile.dart';
import 'package:e_store/common/widgets/texts/section_heading.dart';
import 'package:e_store/features/personalization/screens/profile/profile.dart';
import 'package:e_store/utils/constants/colors.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:iconsax/iconsax.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //HEADER
            EPrimaryHeaderContainer(
              child: Column(
                children: [
                  //APp Bar
                  EAppBar(
                    title: Text(
                      'Account',
                      style: Theme.of(
                        context,
                      ).textTheme.headlineMedium!.apply(color: EColors.white),
                    ),
                  ),

                  //User Profile Card
                  EUserProfileTile(onPressed:() => Get.to(()=> ProfileScreen()),),
                  const SizedBox(height: ESizes.spaceBtwSections),
                ],
              ),
            ),
            //BODY
            Padding(
              padding: EdgeInsets.all(ESizes.defaultSpace),
              child: Column(
                //Account Setting
                children: [
                  ESectionHeading(title: 'Account Setting',showActionButton: false,),
                  SizedBox(height: ESizes.spaceBtwItems),
                  ESettingsMenuTile(icon: Iconsax.safe_home,title: 'My Addresses',subTitle: 'Set shopping delivery address',onTap: (){},),
                  ESettingsMenuTile(icon: Iconsax.shopping_cart,title: 'My Cart',subTitle: 'Add, Remove products and move to checkout',onTap: (){},),
                  ESettingsMenuTile(icon: Iconsax.bag_tick,title: 'My Orders',subTitle: 'In-progress and Completed Orders ',onTap: (){},),
                  ESettingsMenuTile(icon: Iconsax.bank,title: 'Bank Account',subTitle: 'Withdraw balance to registered bank account a',onTap: (){},),
                  ESettingsMenuTile(icon: Iconsax.discount_shape,title: 'My Coupons',subTitle: 'List of all the discounted coupons',onTap: (){},),
                  ESettingsMenuTile(icon: Iconsax.notification,title: 'Notification',subTitle: 'Set any kind of notification message',onTap: (){},),
                  ESettingsMenuTile(icon: Iconsax.security_card,title: 'Account Privacy',subTitle: 'Manage data usage and connected accounts',onTap: (){},),
                //App setting
                SizedBox(height: ESizes.spaceBtwSections,),
                ESectionHeading(title: 'App Settings', showActionButton: false,),
                SizedBox(height: ESizes.spaceBtwItems,),
                ESettingsMenuTile(icon: Iconsax.document_upload, title: 'Load Data', subTitle: 'Upload Data to your Cloud Firebase'),
                //---------------------------------------------------------------------------------------------------------------------
                ESettingsMenuTile(icon: Iconsax.location,title: 'GeoLoaction',subTitle: 'Set recommendation based on location',trailing: Switch(value: true, onChanged: (value){}),),
                ESettingsMenuTile(icon: Iconsax.security_user,title: 'Safe Mode',subTitle: 'Seaqrch result is safe for all ages',trailing: Switch(value: false, onChanged: (value){}),),
                ESettingsMenuTile(icon: Iconsax.image,title: 'HD Image Quality',subTitle: 'Set Image quality to be seen',trailing: Switch(value: false, onChanged: (value){}),),
                //LogoutButton
                SizedBox(height: ESizes.spaceBtwSections,),
                SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(onPressed: (){}, child: Text('Logout')),
                ),
                SizedBox(height: ESizes.spaceBtwSections * 2.5,)
                
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
