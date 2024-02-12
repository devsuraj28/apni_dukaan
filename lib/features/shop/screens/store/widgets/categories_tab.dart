import 'package:apni_dukaan/common/widgets/brands/custom_brand_show_case.dart';
import 'package:apni_dukaan/common/widgets/layout/grid_layout.dart';
import 'package:apni_dukaan/common/widgets/products/product_cards/product_vertical_cards.dart';
import 'package:apni_dukaan/common/widgets/texts/custom_section_heading.dart';
import 'package:apni_dukaan/utils/constants/image_strings.dart';
import 'package:apni_dukaan/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class CategoriesTab extends StatelessWidget {
  const CategoriesTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.all(BaseAppSizes.defaultSpace),
          child: Column(
            children: [
              ///Brands
              const BrandShowCase(
                images: [
                  BaseAppImages.productImage1,
                  BaseAppImages.productImage2,
                  BaseAppImages.productImage3
                ],
              ),
              const SizedBox(
                height: BaseAppSizes.spaceBtwItems,
              ),

              ///Products
              CustomSectionHeading(
                title: "You might like",
                onPressed: () {},
              ),
              const SizedBox(
                height: BaseAppSizes.spaceBtwItems,
              ),
              ADGridLayout(itemCount: 4, itemBuilder: (_, index) => const ADProductVerticalCards(),),
              const SizedBox(
                height: BaseAppSizes.spaceBtwSections,
              ),
            ],
          ),
        ),
      ]
    );
  }
}
