import 'package:apni_dukaan/common/styles/shadows.dart';
import 'package:apni_dukaan/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:apni_dukaan/common/widgets/icons/custom_circular_icon.dart';
import 'package:apni_dukaan/common/widgets/images/custom_rounded_images.dart';
import 'package:apni_dukaan/common/widgets/texts/custom_product_price_text.dart';
import 'package:apni_dukaan/common/widgets/texts/custom_product_title_text.dart';
import 'package:apni_dukaan/utils/constants/colors.dart';
import 'package:apni_dukaan/utils/constants/image_strings.dart';
import 'package:apni_dukaan/utils/constants/sizes.dart';
import 'package:apni_dukaan/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../texts/custom_brand_title_text_with_verified_icon.dart';

class ADProductHorizontalCard extends StatelessWidget {
  const ADProductHorizontalCard({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = BaseAppHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 280,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(BaseAppSizes.productImageRadius),
          color: isDark ? BaseAppColors.darkerGrey : BaseAppColors.softGrey,
        ),
        child: Row(
          children: [
            ///Thumbnail
            ADRoundedContainer(
              height: 120,
              padding: const EdgeInsets.all(BaseAppSizes.sm),
              backgroundColor:
                  isDark ? BaseAppColors.dark : BaseAppColors.white,
              child: Stack(
                children: [
                  ///Thumbnail Image
                  const SizedBox(
                    height: 120,
                    width: 120,
                    child: ADRoundedImage(
                      imageUrl: BaseAppImages.productImage3,
                      applyImageRadius: true,
                    ),
                  ),

                  ///Sale Tag
                  Positioned(
                    top: 4,
                    child: ADRoundedContainer(
                      backgroundColor: BaseAppColors.secondary.withOpacity(0.8),
                      radius: BaseAppSizes.sm,
                      padding: const EdgeInsets.symmetric(
                          horizontal: BaseAppSizes.sm,
                          vertical: BaseAppSizes.xs),
                      child: Text(
                        '20%',
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .apply(color: Colors.black),
                      ),
                    ),
                  ),

                  ///Favorite Heart Icon
                  Positioned(
                    top: 0,
                    right: 0,
                    child: ADCircularIcon(
                        icon: Iconsax.heart5,
                        color: Colors.red,
                        onPressed: () {}),
                  )
                ],
              ),
            ),

            ///Details
            SizedBox(
              width: 140,
              child: Padding(
                padding: const EdgeInsets.only(
                    top: BaseAppSizes.sm, left: BaseAppSizes.sm),
                child: Column(
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ADProductTitleText(
                          title: "Green Nike Full Sleeve Shirt",
                          smallSize: true,
                        ),
                        SizedBox(height: BaseAppSizes.spaceBtwItems / 2),
                        ADBrandTitleTextsWithVerifyIcon(title: 'Nike'),
                      ],
                    ),
                    const Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ///Pricing
                        const Flexible(
                          child: ADProductPriceText(price: '120.0'),
                        ),

                        ///Add to Cart
                        Container(
                          decoration: const BoxDecoration(
                            color: BaseAppColors.dark,
                            borderRadius: BorderRadius.only(
                              topLeft:
                                  Radius.circular(BaseAppSizes.cardRadiusMd),
                              bottomRight: Radius.circular(
                                  BaseAppSizes.productImageRadius),
                            ),
                          ),
                          child: const SizedBox(
                            width: BaseAppSizes.iconLg * 1.2,
                            height: BaseAppSizes.iconLg * 1.2,
                            child: Icon(
                              Iconsax.add,
                              color: BaseAppColors.white,
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
