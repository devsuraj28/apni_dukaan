import 'package:apni_dukaan/common/widgets/appbar/custom_appbar.dart';
import 'package:apni_dukaan/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:apni_dukaan/common/widgets/custom_shapes/containers/searchbar_container.dart';
import 'package:apni_dukaan/common/widgets/images/custom_circular_image.dart';
import 'package:apni_dukaan/common/widgets/layout/grid_layout.dart';
import 'package:apni_dukaan/common/widgets/products/carts/custom_cart_counter_icon.dart';
import 'package:apni_dukaan/common/widgets/texts/custom_brand_title_text_with_verified_icon.dart';
import 'package:apni_dukaan/common/widgets/texts/custom_section_heading.dart';
import 'package:apni_dukaan/utils/constants/colors.dart';
import 'package:apni_dukaan/utils/constants/enums.dart';
import 'package:apni_dukaan/utils/constants/image_strings.dart';
import 'package:apni_dukaan/utils/constants/sizes.dart';
import 'package:apni_dukaan/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              expandedHeight: 440,
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

                    ADGridLayout(itemCount: 4, mainAxisExtent : 80,itemBuilder: (p0, p1) {

                      return GestureDetector(
                        onTap: () {},
                        child: ADRoundedContainer(
                          padding: const EdgeInsets.all(BaseAppSizes.sm),
                          backgroundColor: Colors.transparent,
                          showBorder: true,
                          child: Row(
                            children: [
                              ///-> Icon
                              Flexible(
                                child: ADCircularImage(
                                  imageUrl: BaseAppImages.clothIcon,
                                  isNetworkImage: false,
                                  backgroundColor: Colors.transparent,
                                  overlay:
                                  BaseAppHelperFunctions.isDarkMode(context)
                                      ? BaseAppColors.white
                                      : BaseAppColors.dark,
                                ),
                              ),
                              const SizedBox(
                                width: BaseAppSizes.spaceBtwItems / 2,
                              ),

                              ///Text
                              Expanded(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const ADBrandTitleTextsWithVerifyIcon(
                                        title: 'Nike',
                                        brandTextSizes: TextSizes.large),
                                    Text(
                                      '256 Products',
                                      overflow: TextOverflow.ellipsis,
                                      style:
                                      Theme.of(context).textTheme.labelMedium,
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    },)
                  ],
                ),
              ),
            ),
          ];
        },
        body: const Padding(
          padding: EdgeInsets.all(BaseAppSizes.defaultSpace),
          child: Column(
            children: [
              ///Search Bar
            ],
          ),
        ),
      ),
    );
  }
}
