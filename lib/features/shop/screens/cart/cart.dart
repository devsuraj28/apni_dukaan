import 'package:apni_dukaan/common/widgets/appbar/custom_appbar.dart';
import 'package:apni_dukaan/features/shop/screens/checkout/checkout.dart';
import 'package:apni_dukaan/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'widget/cart_items.dart';

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
          onPressed: () => Get.to(
            () => const CheckoutScreen(),
          ),
          child: const Text('Checkout \$ 280.0'),
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(BaseAppSizes.defaultSpace),
        child: ADCartItems(),
      ),
    );
  }
}
