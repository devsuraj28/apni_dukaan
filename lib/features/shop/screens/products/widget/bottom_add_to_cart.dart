import 'package:apni_dukaan/common/widgets/icons/custom_circular_icon.dart';
import 'package:apni_dukaan/utils/constants/colors.dart';
import 'package:apni_dukaan/utils/constants/sizes.dart';
import 'package:apni_dukaan/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ADBottomAddToCart extends StatelessWidget {
  const ADBottomAddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = BaseAppHelperFunctions.isDarkMode(context);
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: BaseAppSizes.defaultSpace,
          vertical: BaseAppSizes.defaultSpace / 2),
      decoration: BoxDecoration(
        color: isDark ? BaseAppColors.darkerGrey : BaseAppColors.light,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(BaseAppSizes.cardRadiusLg),
          topRight: Radius.circular(BaseAppSizes.cardRadiusLg),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              ADCircularIcon(
                icon: Iconsax.minus,
                backGroundColor: BaseAppColors.darkerGrey,
                color: BaseAppColors.white,
                onPressed: () {},
                width: 40,
                height: 40,
              ),
              const SizedBox(
                width: BaseAppSizes.spaceBtwItems,
              ),
              Text(
                '2',
                style: Theme.of(context).textTheme.titleSmall,
              ),
              const SizedBox(
                width: BaseAppSizes.spaceBtwItems,
              ),
              ADCircularIcon(
                icon: Iconsax.add,
                backGroundColor: BaseAppColors.black,
                color: BaseAppColors.white,
                onPressed: () {},
                width: 40,
                height: 40,
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(BaseAppSizes.md),
                backgroundColor: BaseAppColors.black,
                side: const BorderSide(color: BaseAppColors.black)),
            child: const Text('Add to Cart'),
          ),
        ],
      ),
    );
  }
}
