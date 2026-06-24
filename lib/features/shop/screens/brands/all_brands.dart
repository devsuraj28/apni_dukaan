import 'package:apni_dukaan/common/widgets/appbar/custom_appbar.dart';
import 'package:apni_dukaan/common/widgets/brands/custom_brand_cards.dart';
import 'package:apni_dukaan/common/widgets/layout/grid_layout.dart';
import 'package:apni_dukaan/common/widgets/texts/custom_section_heading.dart';
import 'package:apni_dukaan/features/shop/screens/brands/brand_products.dart';
import 'package:apni_dukaan/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AllBrandsScreen extends StatelessWidget {
  const AllBrandsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const ADCustomAppBar(
        title: Text('Brand'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(BaseAppSizes.defaultSpace),
          child: Column(
            children: [
              ///Heading
              const CustomSectionHeading(
                  title: 'Brands', showActionButton: false),
              const SizedBox(height: BaseAppSizes.spaceBtwItems),

              ///Brands
              ADGridLayout(
                mainAxisExtent: 80,
                itemCount: 10,
                itemBuilder: (_, index) => ADBrandCard(
                    showBorder: true,
                    onTap: () => Get.to(() => const BrandProducts())),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
