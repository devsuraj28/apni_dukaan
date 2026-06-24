import 'package:apni_dukaan/common/widgets/chip/choice_chip.dart';
import 'package:apni_dukaan/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:apni_dukaan/common/widgets/texts/custom_product_price_text.dart';
import 'package:apni_dukaan/common/widgets/texts/custom_product_title_text.dart';
import 'package:apni_dukaan/common/widgets/texts/custom_section_heading.dart';
import 'package:apni_dukaan/utils/constants/colors.dart';
import 'package:apni_dukaan/utils/constants/sizes.dart';
import 'package:apni_dukaan/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class ProductAttributes extends StatelessWidget {
  const ProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = BaseAppHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        ///Selected Attribute Pricing & Description
        ADRoundedContainer(
          padding: const EdgeInsets.all(BaseAppSizes.md),
          backgroundColor:
              isDark ? BaseAppColors.darkerGrey : BaseAppColors.grey,
          child: Column(
            children: [
              ///Title, Price & Stock Status
              Row(
                children: [
                  const CustomSectionHeading(
                    title: 'Variations',
                    showActionButton: false,
                  ),
                  const SizedBox(
                    width: BaseAppSizes.spaceBtwItems,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ///Pricing
                      Row(
                        children: [
                          const ADProductTitleText(
                            title: 'Price :    ',
                            smallSize: true,
                          ),

                          ///Actual Price
                          Text(
                            '\$25',
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .apply(decoration: TextDecoration.lineThrough),
                          ),
                          const SizedBox(
                            width: BaseAppSizes.spaceBtwItems,
                          ),

                          ///Sale Price
                          const ADProductPriceText(price: '20'),
                        ],
                      ),

                      ///Stocking
                      Row(
                        children: [
                          const ADProductTitleText(
                            title: 'Status :  ',
                            smallSize: true,
                          ),
                          Text(
                            'In Stock',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),

              ///Variation Description
              const ADProductTitleText(
                title:
                    "This is the description of Product and it can go up to max 4 lines",
                smallSize: true,
                maxLines: 4,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: BaseAppSizes.spaceBtwItems,
        ),

        ///Attributes
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomSectionHeading(title: 'Colors'),
            const SizedBox(height: BaseAppSizes.spaceBtwItems / 2),
            Wrap(
              spacing: 8,
              children: [
                ADChoiceChip(
                    text: "Green", selected: false, onSelected: (value) {}),
                ADChoiceChip(
                    text: "Blue", selected: true, onSelected: (value) {}),
                ADChoiceChip(
                    text: "Yellow", selected: false, onSelected: (value) {}),
              ],
            )
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomSectionHeading(title: 'Size'),
            const SizedBox(height: BaseAppSizes.spaceBtwItems / 2),
            Wrap(
              spacing: 8,
              children: [
                ADChoiceChip(
                    text: "EU 34", selected: true, onSelected: (value) {}),
                ADChoiceChip(
                    text: "EU 36", selected: false, onSelected: (value) {}),
                ADChoiceChip(
                    text: "EU 38", selected: false, onSelected: (value) {}),
              ],
            )
          ],
        )
      ],
    );
  }
}
