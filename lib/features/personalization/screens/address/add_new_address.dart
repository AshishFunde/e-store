import 'package:e_store/common/widgets/app_bar/appbar.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class AddNewAddressScreen extends StatelessWidget {
  const AddNewAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: EAppBar(
        title: Text('Add New Address',style: Theme.of(context).textTheme.headlineSmall,),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(ESizes.defaultSpace),
        child: Form(
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Iconsax.user),labelText:'Name'
                ),
              ),
              const SizedBox(height: ESizes.spacebtwInputFields,),
              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Iconsax.mobile),labelText:'Phone Number'
                ),
              ),
              const SizedBox(height: ESizes.spacebtwInputFields,),
              Row(
                children: [
                  TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Iconsax.building_31),labelText:'Street'
                ),
              ),
              const SizedBox(width: ESizes.spacebtwInputFields,),
              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Iconsax.code),labelText:'Postal Code'
                ),
              ),
                ],
              ),
              const SizedBox(height: ESizes.spacebtwInputFields,),
              Row(
                children: [
                  TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Iconsax.building),labelText:'City'
                ),
              ),
              const SizedBox(width: ESizes.spacebtwInputFields,),
              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Iconsax.activity),labelText:'State'
                ),
              ),
                ],
              ),
              const SizedBox(height: ESizes.spacebtwInputFields,),
              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Iconsax.global),labelText:'Country'
                ),
              ),
              const SizedBox(height: ESizes.defaultSpace,),
              SizedBox(
                child: ElevatedButton(onPressed: (){}, child: Text('Save')),
              )
            ],
          ),
        ),
        ),
      ),
    );
  }
}