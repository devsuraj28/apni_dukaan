import 'package:apni_dukaan/common/widgets/appbar/custom_appbar.dart';
import 'package:apni_dukaan/common/widgets/brands/custom_brand_cards.dart';
import 'package:apni_dukaan/common/widgets/products/sortable/sortable_products.dart';
import 'package:apni_dukaan/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class BrandProducts extends StatelessWidget {
  const BrandProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: ADCustomAppBar(
        title: Text('Nike'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(BaseAppSizes.defaultSpace),
          child: Column(
            children: [
              ///Brand Details
              ADBrandCard(showBorder: true),
              SizedBox(height: BaseAppSizes.spaceBtwSections),
              ADSortableProducts(),
            ],
          ),
        ),
      ),
    );
  }
}
