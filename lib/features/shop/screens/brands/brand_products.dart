import 'package:e_store/common/widgets/app_bar/appbar.dart';
import 'package:e_store/common/widgets/brands/brand_card.dart';
import 'package:e_store/common/widgets/products/sortable/sortable_products.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class BrandProducts extends StatelessWidget {
  const BrandProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: EAppBar(title: Text('Nike'),showBackArrow: true,),
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(ESizes.defaultSpace),
        child:Column(
          children: [
            EBrandCard(showBorder: true),
            SizedBox(height: ESizes.spaceBtwSections,),
            ESortableProducts()
          ],
        ) ,
        ),
      ),
    );
  }
}
