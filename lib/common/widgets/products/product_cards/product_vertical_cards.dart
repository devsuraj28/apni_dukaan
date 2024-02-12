import 'package:apni_dukaan/common/styles/shadows.dart';
import 'package:apni_dukaan/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:apni_dukaan/common/widgets/icons/custom_circular_icon.dart';
import 'package:apni_dukaan/common/widgets/images/custom_rounded_images.dart';
import 'package:apni_dukaan/common/widgets/texts/custom_product_price_text.dart';
import 'package:apni_dukaan/common/widgets/texts/custom_product_title_text.dart';
import 'package:apni_dukaan/features/shop/screens/products/product_details.dart';
import 'package:apni_dukaan/utils/constants/colors.dart';
import 'package:apni_dukaan/utils/constants/image_strings.dart';
import 'package:apni_dukaan/utils/constants/sizes.dart';
import 'package:apni_dukaan/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../texts/custom_brand_title_text_with_verified_icon.dart';

class ADProductVerticalCards extends StatelessWidget {
  const ADProductVerticalCards({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = BaseAppHelperFunctions.isDarkMode(context);

    ///Container with side paddings, edges, colors, radius and shadow
    return GestureDetector(
      onTap: () => Get.to(() => const ProductDetailsScreen()),
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [ADShadowStyles.verticalProductShadow],
          borderRadius: BorderRadius.circular(BaseAppSizes.productImageRadius),
          color: isDark ? BaseAppColors.darkerGrey : BaseAppColors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ///Thumbnail, Wishlist Button, Discount Tag
            ADRoundedContainer(
              height: 180,
              padding: const EdgeInsets.all(BaseAppSizes.sm),
              backgroundColor:
                  isDark ? BaseAppColors.dark : BaseAppColors.light,
              child: Stack(
                children: [
                  ///Thumbnail Image
                  const ADRoundedImage(
                      imageUrl: BaseAppImages.productImage1,
                      applyImageRadius: true),

                  ///Sale Tag
                  Positioned(
                    top: 12,
                    left: 0,
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
                    right: 0,
                    child: ADCircularIcon(
                        icon: Iconsax.heart5,
                        color: Colors.red,
                        onPressed: () {}),
                  )
                ],
              ),
            ),

            const SizedBox(
              height: BaseAppSizes.spaceBtwItems / 2,
            ),

            ///--Details
            const Padding(
              padding: EdgeInsets.only(left: BaseAppSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ADProductTitleText(
                    title: 'Green Nike Air Shoe',
                    smallSize: true,
                  ),
                  SizedBox(
                    height: BaseAppSizes.spaceBtwItems / 2,
                  ),
                  ADBrandTitleTextsWithVerifyIcon(title: 'Nike'),
                ],
              ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ///Price
                const Padding(
                  padding: EdgeInsets.only(left: BaseAppSizes.sm),
                  child: ADProductPriceText(price: '28.0'),
                ),

                Container(
                  decoration: const BoxDecoration(
                    color: BaseAppColors.dark,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(BaseAppSizes.cardRadiusMd),
                      bottomRight:
                          Radius.circular(BaseAppSizes.productImageRadius),
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
    );
  }
}
