import 'package:apni_dukaan/common/widgets/appbar/custom_appbar.dart';
import 'package:apni_dukaan/common/widgets/images/custom_rounded_images.dart';
import 'package:apni_dukaan/common/widgets/products/product_cards/product_horizontal_cards.dart';
import 'package:apni_dukaan/common/widgets/texts/custom_section_heading.dart';
import 'package:apni_dukaan/utils/constants/image_strings.dart';
import 'package:apni_dukaan/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const ADCustomAppBar(
        showBackArrow: true,
        title: Text("Sports"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(BaseAppSizes.defaultSpace),
          child: Column(
            children: [
              ///Banner
              const ADRoundedImage(
                imageUrl: BaseAppImages.promoBanner3,
                width: double.infinity,
                height: null,
                applyImageRadius: true,
              ),
              const SizedBox(height: BaseAppSizes.spaceBtwSections),

              ///Sub-Categories
              Column(
                children: [
                  ///Heading
                  CustomSectionHeading(
                    title: 'Sports Shirts',
                    onPressed: () {},
                  ),
                  const SizedBox(height: BaseAppSizes.spaceBtwItems / 2),

                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                      itemCount: 4,
                      separatorBuilder: (_, __) =>
                          const SizedBox(width: BaseAppSizes.spaceBtwItems),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (_, index) =>
                          const ADProductHorizontalCard(),
                    ),
                  ),
                  const SizedBox(height: BaseAppSizes.spaceBtwSections),

                  ///Heading
                  CustomSectionHeading(
                    title: 'Sports Shoes',
                    onPressed: () {},
                  ),
                  const SizedBox(height: BaseAppSizes.spaceBtwItems / 2),

                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                      itemCount: 4,
                      separatorBuilder: (_, __) =>
                          const SizedBox(width: BaseAppSizes.spaceBtwItems),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (_, index) =>
                          const ADProductHorizontalCard(),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
