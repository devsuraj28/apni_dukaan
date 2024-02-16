import 'package:apni_dukaan/common/widgets/appbar/custom_appbar.dart';
import 'package:apni_dukaan/common/widgets/products/carts/cart_item.dart';
import 'package:apni_dukaan/common/widgets/products/carts/product_quantity_add_remove_buttons.dart';
import 'package:apni_dukaan/common/widgets/texts/custom_product_price_text.dart';
import 'package:apni_dukaan/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ADCustomAppBar(
        showBackArrow: true,
        title: Text(
          'Cart',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(BaseAppSizes.defaultSpace),
        child: ElevatedButton(
          onPressed: () {},
          child: const Text('Checkout \$ 280.0'),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(BaseAppSizes.defaultSpace),
        child: ListView.separated(
          shrinkWrap: true,
          separatorBuilder: (_, __) =>
              const SizedBox(height: BaseAppSizes.spaceBtwItems),
          itemCount: 10,
          itemBuilder: (_, index) => const Column(
            children: [
              ADCartItem(),
              SizedBox(height: BaseAppSizes.spaceBtwItems),

              ///Add Remove Buttons
              Row(
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
        ),
      ),
    );
  }
}
