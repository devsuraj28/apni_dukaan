import 'package:apni_dukaan/common/widgets/products/carts/cart_item.dart';
import 'package:apni_dukaan/common/widgets/products/carts/product_quantity_add_remove_buttons.dart';
import 'package:apni_dukaan/common/widgets/texts/custom_product_price_text.dart';
import 'package:apni_dukaan/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class ADCartItems extends StatelessWidget {
  const ADCartItems({
    super.key,
    this.showAddRemoveButton = true,
  });

  final bool showAddRemoveButton;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      separatorBuilder: (_, __) =>
          const SizedBox(height: BaseAppSizes.spaceBtwItems),
      itemCount: 2,
      itemBuilder: (_, index) => Column(
        children: [
          const ADCartItem(),

          if (showAddRemoveButton)
            const SizedBox(height: BaseAppSizes.spaceBtwItems),

          ///Add Remove Buttons
          if (showAddRemoveButton)
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 70,
                    ),
                    ADProductQuantityAddRemoveButtons(),
                  ],
                ),
                ADProductPriceText(price: '70'),
              ],
            )
        ],
      ),
    );
  }
}
