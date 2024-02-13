import 'package:apni_dukaan/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:apni_dukaan/common/widgets/products/ratings/rating_indicator.dart';
import 'package:apni_dukaan/utils/constants/colors.dart';
import 'package:apni_dukaan/utils/constants/image_strings.dart';
import 'package:apni_dukaan/utils/constants/sizes.dart';
import 'package:apni_dukaan/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = BaseAppHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        ///User Review
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const CircleAvatar(
                    backgroundImage:
                        AssetImage(BaseAppImages.userProfileImage2)),
                const SizedBox(width: BaseAppSizes.spaceBtwItems),
                Text(
                  'Rohit Arora',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ],
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
          ],
        ),
        const SizedBox(height: BaseAppSizes.spaceBtwItems),
        Row(
          children: [
            const ADRatingBarIndicator(rating: 4),
            const SizedBox(width: BaseAppSizes.spaceBtwItems),
            Text(
              '01 Jan, 2024',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
        const SizedBox(height: BaseAppSizes.spaceBtwItems),
        const ReadMoreText(
          'The user interface of the app is quite intuitive. I was able to navigate and make purchase seamlessly. Great Job!',
          trimLines: 2,
          trimMode: TrimMode.Line,
          trimCollapsedText: " show more ",
          trimExpandedText: " show less ",
          moreStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: BaseAppColors.primary),
          lessStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: BaseAppColors.primary),
        ),
        const SizedBox(
          height: BaseAppSizes.spaceBtwItems,
        ),

        ///Company Review
        ADRoundedContainer(
          backgroundColor:
              isDark ? BaseAppColors.darkerGrey : BaseAppColors.grey,
          child: Padding(
            padding: const EdgeInsets.all(BaseAppSizes.md),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Trendy Mart',
                        style: Theme.of(context).textTheme.titleMedium),
                    Text('02 Jan, 2024',
                        style: Theme.of(context).textTheme.bodyMedium),
                  ],
                ),
                const SizedBox(height: BaseAppSizes.spaceBtwItems),
                const ReadMoreText(
                  'The user interface of the app is quite intuitive. I was able to navigate and make purchase seamlessly. Great Job!',
                  trimLines: 2,
                  trimMode: TrimMode.Line,
                  trimCollapsedText: " show more ",
                  trimExpandedText: " show less ",
                  moreStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: BaseAppColors.primary),
                  lessStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: BaseAppColors.primary),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: BaseAppSizes.spaceBtwSections),
      ],
    );
  }
}
