import 'package:apni_dukaan/features/shop/screens/products/widget/bottom_add_to_cart.dart';
import 'package:apni_dukaan/features/shop/screens/products/widget/product_attributes.dart';
import 'package:apni_dukaan/features/shop/screens/products/widget/product_meta_data.dart';
import 'package:apni_dukaan/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';
import '../../../../common/widgets/texts/custom_section_heading.dart';
import 'widget/product_detail_image_slider.dart';
import 'widget/ratings_and_share.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ///Add to Cart Button
      bottomNavigationBar: const ADBottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ///Product Image Slider
            const ProductDetailImageSlider(),

            ///Product Description
            Padding(
              padding: const EdgeInsets.only(
                  left: BaseAppSizes.defaultSpace,
                  right: BaseAppSizes.defaultSpace,
                  bottom: BaseAppSizes.defaultSpace),
              child: Column(
                children: [
                  ///Ratings & Share
                  const RatingsAndShare(),

                  ///Price, title , Stock & Brand
                  const ProductMetaData(),

                  ///Attributes
                  const ProductAttributes(),
                  const SizedBox(
                    height: BaseAppSizes.spaceBtwSections,
                  ),

                  ///Checkout Button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text('Checkout'),
                    ),
                  ),
                  const SizedBox(
                    height: BaseAppSizes.spaceBtwSections,
                  ),

                  ///Description
                  const CustomSectionHeading(
                    title: 'Description',
                    showActionButton: false,
                  ),
                  const SizedBox(
                    height: BaseAppSizes.spaceBtwItems,
                  ),
                  const ReadMoreText(
                    "This is a product description of Green Nike Air Shoes. There are more things that can be added but i am going to add only this one.",
                    trimCollapsedText: "Show More",
                    trimExpandedText: "Less",
                    trimMode: TrimMode.Line,
                    trimLines: 2,
                    moreStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                    lessStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                  ),

                  ///Reviews
                  const Divider(),
                  const SizedBox(
                    height: BaseAppSizes.spaceBtwItems,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const CustomSectionHeading(
                        title: 'Reviews(199)',
                        showActionButton: false,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Iconsax.arrow_right_3,
                          size: 18,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: BaseAppSizes.spaceBtwSections,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
