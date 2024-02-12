import 'package:apni_dukaan/utils/constants/colors.dart';
import 'package:apni_dukaan/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class ADRoundedContainer extends StatelessWidget {
  const ADRoundedContainer(
      {super.key,
      this.width,
      this.height,
      this.child,
      this.margin,
      this.padding,
      this.showBorder = false,
      this.radius = BaseAppSizes.cardRadiusLg,
      this.borderColor = BaseAppColors.borderPrimary,
      this.backgroundColor = BaseAppColors.white});

  final double? width;
  final double? height;
  final double radius;
  final Widget? child;
  final bool showBorder;
  final Color borderColor;
  final Color backgroundColor;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      margin: margin,
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: backgroundColor,
        border: showBorder ? Border.all(color: borderColor) : null,
      ),
      child: child,
    );
  }
}
