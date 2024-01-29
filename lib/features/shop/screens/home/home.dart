import 'package:apni_dukaan/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:apni_dukaan/common/widgets/custom_shapes/containers/searchbar_container.dart';
import 'package:apni_dukaan/common/widgets/texts/custom_section_heading.dart';
import 'package:apni_dukaan/utils/constants/colors.dart';
import 'package:apni_dukaan/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import 'widgets/home_appbar.dart';
import 'widgets/home_categories.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          ///Header with Primary Color Background and Clipper Path Class for Custom Path Shape...
          ADPrimaryHeaderContainer(
            child: Column(
              children: [
                ///Custom AppBar
                ADHomeAppBar(),

                SizedBox(
                  height: BaseAppSizes.spaceBtwSections,
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
