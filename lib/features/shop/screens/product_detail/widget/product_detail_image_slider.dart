import 'package:apni_dukaan/common/widgets/appbar/custom_appbar.dart';
import 'package:apni_dukaan/common/widgets/custom_shapes/curved_shapes/curved_edges_widget.dart';
import 'package:apni_dukaan/common/widgets/icons/custom_circular_icon.dart';
import 'package:apni_dukaan/common/widgets/images/custom_rounded_images.dart';
import 'package:apni_dukaan/utils/constants/colors.dart';
import 'package:apni_dukaan/utils/constants/image_strings.dart';
import 'package:apni_dukaan/utils/constants/sizes.dart';
import 'package:apni_dukaan/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProductDetailImageSlider extends StatelessWidget {
  const ProductDetailImageSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = BaseAppHelperFunctions.isDarkMode(context);
    return ADCurvedEdgesWidget(
      child: Container(
        color: isDark ? BaseAppColors.darkerGrey : BaseAppColors.light,
        child: Stack(
          children: [
            ///Main Large Product Image
            const SizedBox(
              height: 400,
              child: Padding(
                padding: EdgeInsets.all(BaseAppSizes.productImageRadius * 2),
                child: Center(
                  child: Image(
                    image: AssetImage(BaseAppImages.productImage1),
                  ),
                ),
              ),
            ),

            ///Image Slider
            Positioned(
              left: BaseAppSizes.defaultSpace,
              right: 0,
              bottom: 30,
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                    shrinkWrap: true,
                    physics: const AlwaysScrollableScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (_, index) => ADRoundedImage(
                          padding: const EdgeInsets.all(BaseAppSizes.sm),
                          border: Border.all(color: BaseAppColors.primary),
                          backgroundColor:
                              isDark ? BaseAppColors.dark : BaseAppColors.white,
                          width: 80,
                          imageUrl: BaseAppImages.productImage1,
                        ),
                    separatorBuilder: (_, __) =>
                        const SizedBox(width: BaseAppSizes.spaceBtwItems),
                    itemCount: 4),
              ),
            ),

            ///AppBar
            ADCustomAppBar(
              showBackArrow: true,
              actions: [
                ADCircularIcon(
                  icon: Iconsax.heart5,
                  color: Colors.red,
                  onPressed: () {},
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
