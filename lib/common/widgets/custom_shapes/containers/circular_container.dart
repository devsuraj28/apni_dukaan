import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';

class ADCircularContainer extends StatelessWidget {
  const ADCircularContainer({
    super.key,
    this.width = 300,
    this.height = 300,
    this.backGroundColor = BaseAppColors.white,
    this.radius = 300,
    this.padding = 0,
    this.margin,
    this.child,
  });

  final double? width;
  final double? height;
  final Color backGroundColor;
  final double radius;
  final double padding;
  final EdgeInsets? margin;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      margin: margin,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: backGroundColor,
      ),
      child: child,
    );
  }
}
