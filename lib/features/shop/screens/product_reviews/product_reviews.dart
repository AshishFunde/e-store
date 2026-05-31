import 'package:e_store/common/widgets/app_bar/appbar.dart';
import 'package:e_store/common/widgets/products/rating/rating_indicator.dart';
import 'package:e_store/features/shop/screens/product_reviews/widgets/rating_progess_indicator.dart';
import 'package:e_store/features/shop/screens/product_reviews/widgets/user_review_card.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: EAppBar(
        title: const Text('Reviews & Ratings'),
        showBackArrow: true,
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(ESizes.defaultSpace),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Rating and reviews are varified and fro people who use the same type of devices that you use',
              ),
              const SizedBox(height: ESizes.spaceBtwItems),
              //overall Product ratings 
              EOverallProductRating(),
              ERatingBarIndicator(rating: 4.5,),
              Text('12,211',style: Theme.of(context).textTheme.bodySmall,),
              const SizedBox(height: ESizes.spaceBtwSections,),
              //User Review List
              const UserReviewCard(),
              const UserReviewCard(),
              const UserReviewCard(),
              const UserReviewCard(),
            ],
          ),
        ),
      ),
    );
  }
}




