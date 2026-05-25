import 'package:e_store/features/shop/screens/product_reviews/widgets/progess_indicator_and_rating.dart';
import 'package:flutter/material.dart';

class EOverallProductRating extends StatelessWidget {
  const EOverallProductRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: Text(
            '4.8',
            style: Theme.of(context).textTheme.displayLarge,
          ),
        ),
        Expanded(
          flex: 7,
          child: Column(
            children: [
              ERatingProgessIndicator(text: '5', value: 1,),
              ERatingProgessIndicator(text: '4', value: 0.8,),
              ERatingProgessIndicator(text: '3', value: 0.6,),
              ERatingProgessIndicator(text: '2', value: 0.4,),
              ERatingProgessIndicator(text: '1', value: 0.2,),
              ]),
        ),
    
        const SizedBox(width: 10),
      ],
    );
  }
}
