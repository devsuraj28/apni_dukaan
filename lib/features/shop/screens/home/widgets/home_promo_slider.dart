import 'package:apni_dukaan/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:apni_dukaan/common/widgets/images/custom_rounded_images.dart';
import 'package:apni_dukaan/features/shop/controllers/home_controller.dart';
import 'package:apni_dukaan/utils/constants/colors.dart';
import 'package:apni_dukaan/utils/constants/sizes.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ADPromoSlider extends StatelessWidget {
  const ADPromoSlider({
    super.key,
    required this.banners,
  });

  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final homeController = Get.put(HomeController());

    return Column(
      children: [
        CarouselSlider(
          items: banners
              .map(
                (bannerImageUrl) => ADRoundedImage(
                  imageUrl: bannerImageUrl,
                ),
              )
              .toList(),
          options: CarouselOptions(
            viewportFraction: 1,
            onPageChanged: (index, _) =>
                homeController.updatePageIndicator(index),
          ),
        ),
        const SizedBox(
          height: BaseAppSizes.spaceBtwItems,
        ),
        Center(
          child: Obx(
            () => Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                for (int i = 0; i < banners.length; i++)
                  ADCircularContainer(
                    height: 4,
                    width: 20,
                    margin: const EdgeInsets.only(right: 10),
                    backGroundColor:
                        homeController.carouselCurrentIndex.value == i
                            ? BaseAppColors.primary
                            : BaseAppColors.grey,
                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
