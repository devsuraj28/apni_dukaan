import 'package:apni_dukaan/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class ADGridLayout extends StatelessWidget {
  const ADGridLayout({
    super.key,
    required this.itemCount,
    this.mainAxisExtent = 288,
    required this.itemBuilder,
  });

  final int itemCount;
  final double mainAxisExtent;
  final Widget? Function(BuildContext, int) itemBuilder;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: BaseAppSizes.gridViewSpacing,
          mainAxisSpacing: BaseAppSizes.gridViewSpacing,
          mainAxisExtent: mainAxisExtent),
      itemCount: itemCount,
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: itemBuilder,
    );
  }
}
