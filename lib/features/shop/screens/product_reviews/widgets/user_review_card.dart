import 'package:e_store/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:e_store/common/widgets/products/rating/rating_indicator.dart';
import 'package:e_store/utils/constants/colors.dart';
import 'package:e_store/utils/constants/image_strings.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:e_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(backgroundImage:AssetImage(EImages.userProfileImage1)),
                const SizedBox(width: ESizes.spaceBtwItems),
                Text('John Doe', style: Theme.of(context).textTheme.titleLarge,)
              ],
            ),
            IconButton(onPressed: (){}, icon: Icon(Icons.more_vert))
          ],
        ),
        const SizedBox(height: ESizes.spaceBtwItems/4,),
        //Review
        Row(
          children: [
            ERatingBarIndicator(rating: 4),
            const SizedBox(width: ESizes.spaceBtwItems),
            Text('01 May,2026',style: Theme.of(context).textTheme.bodyMedium,)

          ],
        ),
        const SizedBox(height: ESizes.spaceBtwItems,),
        ReadMoreText('This is user interface of the gsjdfjgsfgsf skfdhksfhks fhsfks fklhsklfh sif isklhdf ls fil fis fs fisdh fsdf sdhfilksdh fihsd df app is quite intutive. i was able to navigate and make purchase seamlessly. great Job!',
        trimLines:2 ,
        trimMode: TrimMode.Length,
        trimExpandedText: 'show less',
        trimCollapsedText: 'show more',
        moreStyle: TextStyle(fontSize: 14,fontWeight:FontWeight.bold,color:EColors.primary),
        lessStyle: TextStyle(fontSize: 14,fontWeight:FontWeight.bold,color:EColors.primary),
        ),
        const SizedBox(height: ESizes.spaceBtwItems,),
        //Comapny Review
         ERoundedContainer(
            backgroundColor: dark? EColors.darkerGrey : EColors.grey,
            child: Padding(padding: EdgeInsets.all(ESizes.md),
            child: Column( children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Text("E's Store", style: Theme.of(context).textTheme.titleMedium),
                Text("2 May 2026", style: Theme.of(context).textTheme.bodyMedium),
              ],),
              const SizedBox(height:ESizes.spaceBtwItems ,),
              ReadMoreText('This is user interface of the gsjdfjgsfgsf skfdhksfhks fhsfks fklhsklfh sif isklhdf ls fil fis fs fisdh fsdf sdhfilksdh fihsd df app is quite intutive. i was able to navigate and make purchase seamlessly. great Job!',
                trimLines:2 ,
                trimMode: TrimMode.Length,
                trimExpandedText: 'show less',
                trimCollapsedText: 'show more',
                moreStyle: TextStyle(fontSize: 14,fontWeight:FontWeight.bold,color:EColors.primary),
                lessStyle: TextStyle(fontSize: 14,fontWeight:FontWeight.bold,color:EColors.primary),
        ),

            ]
              
            ),),

        ),
        SizedBox(height: ESizes.spaceBtwSections,)
        
      ],
    );
  }
}
