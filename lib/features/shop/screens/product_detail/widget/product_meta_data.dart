import 'package:apni_dukaan/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:apni_dukaan/common/widgets/images/custom_circular_image.dart';
import 'package:apni_dukaan/common/widgets/texts/custom_brand_title_text_with_verified_icon.dart';
import 'package:apni_dukaan/common/widgets/texts/custom_product_price_text.dart';
import 'package:apni_dukaan/common/widgets/texts/custom_product_title_text.dart';
import 'package:apni_dukaan/utils/constants/colors.dart';
import 'package:apni_dukaan/utils/constants/enums.dart';
import 'package:apni_dukaan/utils/constants/image_strings.dart';
import 'package:apni_dukaan/utils/constants/sizes.dart';
import 'package:apni_dukaan/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class ProductMetaData extends StatelessWidget {
  const ProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = BaseAppHelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ///Price and Sales Tag,
        Row(
          children: [
            ///Sales Tag
            ADRoundedContainer(
              backgroundColor: BaseAppColors.secondary.withOpacity(0.8),
              radius: BaseAppSizes.sm,
              padding: const EdgeInsets.symmetric(
                  horizontal: BaseAppSizes.sm, vertical: BaseAppSizes.xs),
              child: Text(
                '20%',
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .apply(color: Colors.black),
              ),
            ),
            const SizedBox(
              width: BaseAppSizes.spaceBtwItems,
            ),

            ///Price
            Text(
              '\$200',
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .apply(decoration: TextDecoration.lineThrough),
            ),
            const SizedBox(
              width: BaseAppSizes.spaceBtwItems,
            ),
            const ADProductPriceText(
              price: "160",
              isLarge: true,
            ),
          ],
        ),
        const SizedBox(
          height: BaseAppSizes.spaceBtwItems / 2,
        ),

        ///Title
        const ADProductTitleText(title: 'Green Nike Air Shoes'),
        const SizedBox(
          height: BaseAppSizes.spaceBtwItems / 1.5,
        ),

        ///Stock Status
        Row(
          children: [
            const ADProductTitleText(title: 'Status'),
            const SizedBox(
              width: BaseAppSizes.spaceBtwItems,
            ),
            Text('In Stock', style: Theme.of(context).textTheme.titleMedium),
          ],
        ),
        const SizedBox(
          height: BaseAppSizes.spaceBtwItems / 4,
        ),

        ///Brand
        Row(
          children: [
            ADCircularImage(
              imageUrl: BaseAppImages.nikeLogo,
              overlay: isDark ? BaseAppColors.white : BaseAppColors.black,
              width: 32,
              height: 32,
            ),
            const ADBrandTitleTextsWithVerifyIcon(
                title: 'Nike', brandTextSizes: TextSizes.medium),
          ],
        ),
      ],
    );
  }
}
