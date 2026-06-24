import 'package:apni_dukaan/common/widgets/images/custom_circular_image.dart';
import 'package:apni_dukaan/common/widgets/texts/custom_brand_title_text_with_verified_icon.dart';
import 'package:apni_dukaan/utils/constants/colors.dart';
import 'package:apni_dukaan/utils/constants/enums.dart';
import 'package:apni_dukaan/utils/constants/image_strings.dart';
import 'package:apni_dukaan/utils/constants/sizes.dart';
import 'package:apni_dukaan/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../custom_shapes/containers/rounded_container.dart';

class ADBrandCard extends StatelessWidget {
  const ADBrandCard({
    super.key,
    this.showBorder = true,
    this.onTap,
  });

  final bool showBorder;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: ADRoundedContainer(
        padding: const EdgeInsets.all(BaseAppSizes.sm),
        backgroundColor: Colors.transparent,
        showBorder: showBorder,
        child: Row(
          children: [
            ///-> Icon
            Flexible(
              child: ADCircularImage(
                imageUrl: BaseAppImages.clothIcon,
                isNetworkImage: false,
                backgroundColor: Colors.transparent,
                overlay: BaseAppHelperFunctions.isDarkMode(context)
                    ? BaseAppColors.white
                    : BaseAppColors.dark,
              ),
            ),
            const SizedBox(
              width: BaseAppSizes.spaceBtwItems / 2,
            ),

            ///Text
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const ADBrandTitleTextsWithVerifyIcon(
                      title: 'Nike', brandTextSizes: TextSizes.large),
                  Text(
                    '256 Products',
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.labelMedium,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
