import 'package:apni_dukaan/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:apni_dukaan/utils/constants/colors.dart';
import 'package:apni_dukaan/utils/constants/sizes.dart';
import 'package:apni_dukaan/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import 'custom_brand_cards.dart';

class BrandShowCase extends StatelessWidget {
  const BrandShowCase({
    super.key,
    required this.images,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return ADRoundedContainer(
      padding: const EdgeInsets.all(BaseAppSizes.md),
      showBorder: true,
      backgroundColor: Colors.transparent,
      borderColor: BaseAppColors.darkerGrey,
      margin: const EdgeInsets.only(bottom: BaseAppSizes.spaceBtwItems),
      child: Column(
        children: [
          ///Brands with Products Count
          const ADBrandCard(
            showBorder: false,
          ),

          ///Top 3 Products of Brand
          Row(
            children: images
                .map(
                  (image) => brandTopProductImages(image, context),
                )
                .toList(),
          )
        ],
      ),
    );
  }

  Widget brandTopProductImages(String image, BuildContext context) {
    return Expanded(
      child: ADRoundedContainer(
        backgroundColor: BaseAppHelperFunctions.isDarkMode(context)
            ? BaseAppColors.darkerGrey
            : BaseAppColors.light,
        margin: const EdgeInsets.only(right: BaseAppSizes.sm),
        padding: const EdgeInsets.all(BaseAppSizes.md),
        height: 100,
        child: Image(
          fit: BoxFit.contain,
          image: AssetImage(image),
        ),
      ),
    );
  }
}
