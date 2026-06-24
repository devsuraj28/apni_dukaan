import 'package:apni_dukaan/common/widgets/layout/grid_layout.dart';
import 'package:apni_dukaan/common/widgets/products/product_cards/product_vertical_cards.dart';
import 'package:apni_dukaan/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ADSortableProducts extends StatelessWidget {
  const ADSortableProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ///Dropdown
        DropdownButtonFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.sort),
            ),
            items: const [
              "Name",
              "Higher Price",
              "Lower Price",
              "Sale",
              "Newest",
              "Popularity"
            ]
                .map((option) =>
                    DropdownMenuItem(value: option, child: Text(option)))
                .toList(),
            onChanged: (value) {}),
        const SizedBox(height: BaseAppSizes.spaceBtwSections),

        ///Product
        ADGridLayout(
            itemCount: 4,
            itemBuilder: (_, index) => const ADProductVerticalCards()),
      ],
    );
  }
}
