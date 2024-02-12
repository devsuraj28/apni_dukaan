import 'dart:io';

import 'package:apni_dukaan/common/widgets/texts/custom_brand_title_text.dart';
import 'package:apni_dukaan/utils/constants/colors.dart';
import 'package:apni_dukaan/utils/constants/enums.dart';
import 'package:apni_dukaan/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ADBrandTitleTextsWithVerifyIcon extends StatelessWidget {
  const ADBrandTitleTextsWithVerifyIcon({
    super.key,
    required this.title,
    this.maxLines = 1,
    this.textColor,
    this.iconColor = BaseAppColors.primary,
    this.textAlign = TextAlign.center,
    this.brandTextSizes = TextSizes.small,
  });

  final String title;
  final int maxLines;
  final Color? textColor, iconColor;
  final TextAlign? textAlign;
  final TextSizes brandTextSizes;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: ADBrandTitleText(
            title: title,
            maxLines: ProcessInfo.maxRss,
            color: textColor,
            textAlign: textAlign,
            brandTextSize: brandTextSizes,
          ),
        ),
        const SizedBox(
          width: BaseAppSizes.xs,
        ),
        Icon(
          Iconsax.verify5,
          color: iconColor,
          size: BaseAppSizes.iconXs,
        )
      ],
    );
  }
}
