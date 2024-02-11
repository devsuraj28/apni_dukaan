import 'package:apni_dukaan/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:apni_dukaan/common/widgets/custom_shapes/containers/searchbar_container.dart';
import 'package:apni_dukaan/common/widgets/texts/custom_section_heading.dart';
import 'package:apni_dukaan/utils/constants/colors.dart';
import 'package:apni_dukaan/utils/constants/image_strings.dart';
import 'package:apni_dukaan/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'widgets/home_appbar.dart';
import 'widgets/home_categories.dart';
import 'widgets/home_promo_slider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          ///--------Header with Primary Color Background and Clipper Path Class for Custom Path Shape...------
          ADPrimaryHeaderContainer(
            child: Column(
              children: [
                ///Custom AppBar
                ADHomeAppBar(),

                SizedBox(
                  height: BaseAppSizes.spaceBtwSections / 2,
                ),

                ///Search Bar
                ADSearchBar(
                  hintText: 'Search in Store',
                ),

                SizedBox(
                  height: BaseAppSizes.spaceBtwSections,
                ),

                ///Categories
                Padding(
                  padding: EdgeInsets.only(left: BaseAppSizes.defaultSpace),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomSectionHeading(
                        title: 'Popular Categories',
                        showActionButton: false,
                        textColor: BaseAppColors.white,
                      ),

                      SizedBox(
                        height: BaseAppSizes.spaceBtwItems,
                      ),

                      ///Categories List
                      ADHomeCategories()
                    ],
                  ),
                ),

                SizedBox(
                  height: BaseAppSizes.spaceBtwSections * 1.5,
                ),
              ],
            ),
          ),

          ///---Body Section-----------
          ///Promotion Slider
          Padding(
            padding: EdgeInsets.all(BaseAppSizes.defaultSpace),
            child: Column(
              children: [
                ///Promotion Banners Slider
                ADPromoSlider(
                  banners: [
                    BaseAppImages.promoBanner1,
                    BaseAppImages.promoBanner2,
                    BaseAppImages.promoBanner3
                  ],
                ),

                SizedBox(
                  height: BaseAppSizes.spaceBtwSections,
                ),

                CustomSectionHeading(
                  title: 'Popular Products',
                  showActionButton: true,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
