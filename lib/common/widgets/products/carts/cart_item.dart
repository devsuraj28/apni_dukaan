import 'package:apni_dukaan/common/widgets/images/custom_rounded_images.dart';
import 'package:apni_dukaan/common/widgets/texts/custom_brand_title_text_with_verified_icon.dart';
import 'package:apni_dukaan/common/widgets/texts/custom_product_title_text.dart';
import 'package:apni_dukaan/utils/constants/colors.dart';
import 'package:apni_dukaan/utils/constants/image_strings.dart';
import 'package:apni_dukaan/utils/constants/sizes.dart';
import 'package:apni_dukaan/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class ADCartItem extends StatelessWidget {
  const ADCartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            ///Image of Product
            ADRoundedImage(
              imageUrl: BaseAppImages.productImage1,
              width: 60,
              height: 60,
              backgroundColor: BaseAppHelperFunctions.isDarkMode(context)
                  ? BaseAppColors.darkerGrey
                  : BaseAppColors.light,
              padding: const EdgeInsets.all(BaseAppSizes.sm),
            ),
            const SizedBox(width: BaseAppSizes.spaceBtwItems),

            ///Title, Price and Size
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const ADBrandTitleTextsWithVerifyIcon(title: 'Nike'),
                  const Flexible(
                    child: ADProductTitleText(
                        title: 'Green Nike Air Shoes', maxLines: 1),
                  ),

                  ///Attributes
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                            text: 'Color ',
                            style: Theme.of(context).textTheme.bodySmall),
                        TextSpan(
                            text: 'Green ',
                            style: Theme.of(context).textTheme.bodyLarge),
                        TextSpan(
                            text: 'Size ',
                            style: Theme.of(context).textTheme.bodySmall),
                        TextSpan(
                            text: 'UK 08 ',
                            style: Theme.of(context).textTheme.bodyLarge),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}
