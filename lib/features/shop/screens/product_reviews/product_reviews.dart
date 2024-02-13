import 'package:apni_dukaan/common/widgets/appbar/custom_appbar.dart';
import 'package:apni_dukaan/common/widgets/products/ratings/rating_indicator.dart';
import 'package:apni_dukaan/features/shop/screens/product_reviews/widgets/user_review_card.dart';
import 'package:apni_dukaan/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'widgets/overall_rating_indicator.dart';

class ProductReviews extends StatelessWidget {
  const ProductReviews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ///--AppBar
      appBar: const ADCustomAppBar(
          title: Text('Reviews & Ratings'), showBackArrow: true),

      ///--Body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(BaseAppSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                  'Ratings and Reviews are verified and are from people who use the same type of device that you use.'),
              const SizedBox(height: BaseAppSizes.spaceBtwItems),

              ///Overall Product Ratings
              const ADOverallProductRatings(),
              const ADRatingBarIndicator(rating: 3.5),
              Text('12,630', style: Theme.of(context).textTheme.bodySmall),
              const SizedBox(height: BaseAppSizes.spaceBtwSections),

              ///User Reviews List
              const UserReviewCard(),
              const UserReviewCard(),
            ],
          ),
        ),
      ),
    );
  }
}
