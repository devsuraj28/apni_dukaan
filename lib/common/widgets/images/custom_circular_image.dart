import 'package:apni_dukaan/utils/constants/colors.dart';
import 'package:apni_dukaan/utils/constants/sizes.dart';
import 'package:apni_dukaan/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class ADCircularImage extends StatelessWidget {
  const ADCircularImage({
    super.key,
    this.width = 56,
    this.height = 56,
    required this.imageUrl,
    this.backgroundColor,
    this.boxFit = BoxFit.contain,
    this.padding = BaseAppSizes.sm,
    this.isNetworkImage = false,
    this.onTap, this.overlay,
  });

  final double width, height,padding;
  final String imageUrl;
  final Color? backgroundColor;
  final Color? overlay;
  final BoxFit? boxFit;

  final bool isNetworkImage;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        padding: EdgeInsets.all(padding),
        decoration: BoxDecoration(
          color: backgroundColor ?? (BaseAppHelperFunctions.isDarkMode(context) ? BaseAppColors.black : BaseAppColors.white),
          borderRadius: BorderRadius.circular(100),
        ),
        child: Center(
          child: Image(
              image: isNetworkImage
                  ? NetworkImage(imageUrl)
                  : AssetImage(imageUrl) as ImageProvider,
              fit: boxFit),
        ),
      ),
    );
  }
}
