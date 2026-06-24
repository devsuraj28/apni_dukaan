import 'package:apni_dukaan/common/widgets/icons/custom_circular_icon.dart';
import 'package:apni_dukaan/utils/constants/colors.dart';
import 'package:apni_dukaan/utils/constants/sizes.dart';
import 'package:apni_dukaan/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ADProductQuantityAddRemoveButtons extends StatelessWidget {
  const ADProductQuantityAddRemoveButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        ADCircularIcon(
          icon: Iconsax.minus,
          onPressed: () {},
          width: 32,
          height: 32,
          size: BaseAppSizes.md,
          color: BaseAppHelperFunctions.isDarkMode(context)
              ? BaseAppColors.white
              : BaseAppColors.black,
          backGroundColor: BaseAppHelperFunctions.isDarkMode(context)
              ? BaseAppColors.darkerGrey
              : BaseAppColors.grey,
        ),
        const SizedBox(width: BaseAppSizes.spaceBtwItems),
        Text(
          '2',
          style: Theme.of(context).textTheme.titleSmall,
        ),
        const SizedBox(width: BaseAppSizes.spaceBtwItems),
        ADCircularIcon(
          icon: Iconsax.add,
          onPressed: () {},
          width: 32,
          height: 32,
          size: BaseAppSizes.md,
          color: BaseAppColors.white,
          backGroundColor: BaseAppColors.primary,
        ),
      ],
    );
  }
}
