import 'package:apni_dukaan/common/widgets/appbar/custom_appbar.dart';
import 'package:apni_dukaan/common/widgets/appbar/custom_tabbar.dart';
import 'package:apni_dukaan/common/widgets/brands/custom_brand_cards.dart';
import 'package:apni_dukaan/common/widgets/custom_shapes/containers/searchbar_container.dart';
import 'package:apni_dukaan/common/widgets/layout/grid_layout.dart';
import 'package:apni_dukaan/common/widgets/products/carts/custom_cart_counter_icon.dart';
import 'package:apni_dukaan/common/widgets/texts/custom_section_heading.dart';
import 'package:apni_dukaan/utils/constants/colors.dart';
import 'package:apni_dukaan/utils/constants/sizes.dart';
import 'package:apni_dukaan/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import 'widgets/categories_tab.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: ADCustomAppBar(
            title: Text(
              'Store',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            actions: [
              ADCartCounterIcon(onPressed: () {}),
            ]),
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: true,
                floating: true,
                expandedHeight: 430,
                backgroundColor: BaseAppHelperFunctions.isDarkMode(context)
                    ? BaseAppColors.dark
                    : BaseAppColors.white,
                flexibleSpace: Padding(
                  padding: const EdgeInsets.all(BaseAppSizes.defaultSpace),
                  child: ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      const SizedBox(
                        height: BaseAppSizes.spaceBtwItems,
                      ),

                      ///Space Bar
                      const ADSearchBar(
                          padding: EdgeInsets.zero,
                          hintText: 'Search in Store',
                          showBackGround: false),
                      const SizedBox(
                        height: BaseAppSizes.spaceBtwSections,
                      ),

                      ///Featured Brands
                      CustomSectionHeading(
                        title: 'Featured Brands',
                        // showActionButton: true,
                        onPressed: () {},
                      ),
                      const SizedBox(
                        height: BaseAppSizes.spaceBtwItems / 1.5,
                      ),

                      ///Brands Card
                      ADGridLayout(
                        itemCount: 4,
                        mainAxisExtent: 80,
                        itemBuilder: (p0, p1) {
                          return const ADBrandCard();
                        },
                      )
                    ],
                  ),
                ),
                bottom: const ADCategoriesTabBar(tabs: [
                  Tab(
                    child: Text('Sports'),
                  ),
                  Tab(
                    child: Text('Furniture'),
                  ),
                  Tab(
                    child: Text('Electronics'),
                  ),
                  Tab(
                    child: Text('Clothes'),
                  ),
                  Tab(
                    child: Text('Cosmetics'),
                  )
                ]),
              ),
            ];
          },
          body: const TabBarView(
            children: [
              CategoriesTab(),
              CategoriesTab(),
              CategoriesTab(),
              CategoriesTab(),
              CategoriesTab(),
            ],
          ),
        ),
      ),
    );
  }
}


