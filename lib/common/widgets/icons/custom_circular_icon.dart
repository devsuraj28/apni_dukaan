import 'package:apni_dukaan/utils/constants/colors.dart';
import 'package:apni_dukaan/utils/constants/sizes.dart';
import 'package:apni_dukaan/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class ADCircularIcon extends StatelessWidget {
  const ADCircularIcon({
    super.key,
    this.width,
    this.height,
    this.size = BaseAppSizes.lg,
    required this.icon,
    this.color,
    this.backGroundColor,
    required this.onPressed,
  });


  final double? width, height, size;
  final IconData icon;
  final Color? color;
  final Color? backGroundColor;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: backGroundColor ??
            (BaseAppHelperFunctions.isDarkMode(context)
                ? BaseAppColors.black.withOpacity(0.9)
                : BaseAppColors.white.withOpacity(0.9)),
        borderRadius: BorderRadius.circular(100),
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(
          icon,
          color: color,
          size: size,
        ),
      ),
    );
  }
}
