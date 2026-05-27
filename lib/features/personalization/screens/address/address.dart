import 'package:e_store/common/widgets/app_bar/appbar.dart';
import 'package:e_store/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:e_store/features/personalization/screens/address/add_new_address.dart';
import 'package:e_store/features/personalization/screens/address/widget/single_address.dart';
import 'package:e_store/utils/constants/colors.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:iconsax/iconsax.dart';

class UserAddressScreen extends StatelessWidget {
  const UserAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: EColors.primary,
        onPressed: ()=> Get.to(()=>AddNewAddressScreen()),
        child: Icon(Iconsax.add, color:EColors.white),
        ),
        appBar: EAppBar(
          showBackArrow: true,
          title: Text('Addresses',style: Theme.of(context).textTheme.headlineSmall,),
        ),
        body: SingleChildScrollView(
          child: Padding(padding: EdgeInsets.all(ESizes.defaultSpace),
          child: Column(
            children: [
              ESingleAddress(selectedAddress: true),
              ESingleAddress(selectedAddress: false),
              ESingleAddress(selectedAddress: false),
              ESingleAddress(selectedAddress: false),
            ],
          ),
          ),
        ),
    );
  }
}
