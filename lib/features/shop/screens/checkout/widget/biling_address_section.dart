import 'package:e_store/common/widgets/texts/section_heading.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class EBilingAddressSection extends StatelessWidget {
  const EBilingAddressSection({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ESectionHeading(title: 'Shipping Address',buttonTitle: 'Change',onPressed: (){},),
        Text('Coding with T',style: Theme.of(context).textTheme.bodyLarge,),
        SizedBox(height: ESizes.spaceBtwItems/2,),
        Row(
          children: [
            Icon(Icons.phone,color: Colors.grey,size:16),
            SizedBox(width: ESizes.spaceBtwItems,),
            Text('+91 9399073802',style: Theme.of(context).textTheme.bodyMedium,),
        ],),
        SizedBox(height: ESizes.spaceBtwItems/2,),
        Row(
          children: [
            Icon(Icons.phone,color: Colors.grey,size:16),
            SizedBox(width: ESizes.spaceBtwItems,),
            Text('Saket Colony Durg,INDIA',style: Theme.of(context).textTheme.bodyMedium,softWrap: true,),
           
        ],),
        
        Row(
          children: [
            Icon(Icons.phone,color: Colors.grey,size:16),
            SizedBox(width: ESizes.spaceBtwItems,),
            Text('Saket Colony Durg,INDIA',style: Theme.of(context).textTheme.bodyMedium,softWrap: true,),
           
        ],),
        
        Row(
          children: [
            Icon(Icons.phone,color: Colors.grey,size:16),
            SizedBox(width: ESizes.spaceBtwItems,),
            Text('Saket Colony Durg,INDIA',style: Theme.of(context).textTheme.bodyMedium,softWrap: true,),
           
        ]),

      ],
    );
  }
}
