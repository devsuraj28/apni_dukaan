import 'package:apni_dukaan/common/widgets/appbar/custom_appbar.dart';
import 'package:apni_dukaan/common/widgets/icons/custom_circular_icon.dart';
import 'package:apni_dukaan/common/widgets/layout/grid_layout.dart';
import 'package:apni_dukaan/common/widgets/products/product_cards/product_vertical_cards.dart';
import 'package:apni_dukaan/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class WishListScreen extends StatelessWidget {
  const WishListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ADCustomAppBar(
        title: Text(
          'Wishlist',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [
          ADCircularIcon(
            icon: Iconsax.add,
            onPressed: () {},
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(BaseAppSizes.defaultSpace),
          child: Column(
            children: [
              ADGridLayout(
                itemCount: 4,
                itemBuilder: (p0, p1) => const ADProductVerticalCards(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
