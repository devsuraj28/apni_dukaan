import 'package:apni_dukaan/utils/constants/colors.dart';
import 'package:apni_dukaan/utils/constants/sizes.dart';
import 'package:apni_dukaan/utils/device/device_utility.dart';
import 'package:apni_dukaan/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ADSearchBar extends StatelessWidget {
  const ADSearchBar({
    super.key,
    required this.hintText,
    this.icon = Iconsax.search_normal,
    this.showBackGround = true,
    this.showBorder = true,
  });

  final String hintText;
  final IconData? icon;
  final bool showBackGround, showBorder;

  @override
  Widget build(BuildContext context) {
    final isDark = BaseAppHelperFunctions.isDarkMode(context);

    return Padding(
      padding:
      const EdgeInsets.symmetric(horizontal: BaseAppSizes.defaultSpace),
      child: Container(
        padding: const EdgeInsets.all(BaseAppSizes.md),
        width: TDeviceUtils.getScreenWidth(context),
        decoration: BoxDecoration(
          color: showBackGround
              ? isDark
              ? BaseAppColors.dark
              : BaseAppColors.light
              : Colors.transparent,
          borderRadius: BorderRadius.circular(BaseAppSizes.cardRadiusLg),
          border: showBorder ? Border.all(color: BaseAppColors.grey) : null,
        ),
        child: Row(
          children: [
            Icon(
              icon,
              color: BaseAppColors.darkerGrey,
            ),
            const SizedBox(
              width: BaseAppSizes.spaceBtwItems,
            ),
            Text(
              hintText,
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        ),
      ),
    );
  }
}
