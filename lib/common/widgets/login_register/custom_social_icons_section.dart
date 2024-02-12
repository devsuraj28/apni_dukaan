import 'package:apni_dukaan/utils/constants/colors.dart';
import 'package:apni_dukaan/utils/constants/image_strings.dart';
import 'package:apni_dukaan/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class CustomSocialIconSection extends StatelessWidget {
  const CustomSocialIconSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.all(BaseAppSizes.xs),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            border: Border.all(color: BaseAppColors.grey),
          ),
          child: const Image(
            width: BaseAppSizes.iconLg,
            height: BaseAppSizes.iconLg,
            image: AssetImage(BaseAppImages.google),
          ),
        ),
        const SizedBox(
          width: BaseAppSizes.spaceBtwItems,
        ),
        Container(
          padding: const EdgeInsets.all(BaseAppSizes.xs),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            border: Border.all(color: BaseAppColors.grey),
          ),
          child: const Image(
            width: BaseAppSizes.iconLg,
            height: BaseAppSizes.iconLg,
            image: AssetImage(BaseAppImages.facebook),
          ),
        ),
      ],
    );
  }
}
