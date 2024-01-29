import 'package:apni_dukaan/utils/constants/colors.dart';
import 'package:apni_dukaan/utils/constants/sizes.dart';
import 'package:apni_dukaan/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class ADVerticalImageText extends StatelessWidget {
  const ADVerticalImageText({
    super.key,
    required this.image,
    required this.text,
    this.backgroundColor,
    this.textColor = BaseAppColors.white,
    this.onTap,
  });

  final String image, text;
  final Color? backgroundColor;
  final Color textColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final isDark = BaseAppHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: BaseAppSizes.spaceBtwItems),
        child: Column(
          children: [
            ///Circular Icon
            Container(
              width: 56,
              height: 56,
              padding: const EdgeInsets.all(BaseAppSizes.sm),
              decoration: BoxDecoration(
                color: backgroundColor ??
                    (isDark ? BaseAppColors.black : BaseAppColors.white),
                borderRadius: BorderRadius.circular(100),
              ),
              child: Center(
                child: Image(
                  image: AssetImage(image),
                  color:  isDark ? BaseAppColors.white : BaseAppColors.black,
                  fit: BoxFit.cover,
                ),
              ),
            ),

            const SizedBox(
              height: BaseAppSizes.spaceBtwItems / 2,
            ),

            ///Text
            SizedBox(
              width: 55,
              child: Text(
                text,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .apply(color: textColor),
              ),
            )
          ],
        ),
      ),
    );
  }
}
