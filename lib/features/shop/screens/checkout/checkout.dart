import 'package:apni_dukaan/common/widgets/appbar/custom_appbar.dart';
import 'package:apni_dukaan/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:apni_dukaan/common/widgets/products/carts/coupon_code_widget.dart';
import 'package:apni_dukaan/common/widgets/success_screens/success_screen.dart';
import 'package:apni_dukaan/features/shop/screens/cart/widget/cart_items.dart';
import 'package:apni_dukaan/features/shop/screens/checkout/widget/billing_address_section.dart';
import 'package:apni_dukaan/features/shop/screens/checkout/widget/billing_payment_section.dart';
import 'package:apni_dukaan/navigation_menu.dart';
import 'package:apni_dukaan/utils/constants/colors.dart';
import 'package:apni_dukaan/utils/constants/image_strings.dart';
import 'package:apni_dukaan/utils/constants/sizes.dart';
import 'package:apni_dukaan/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'widget/billing_amount_section.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = BaseAppHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: ADCustomAppBar(
        showBackArrow: true,
        title: Text(
          'Cart',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(BaseAppSizes.defaultSpace),
          child: Column(
            children: [
              ///Cart Items with Add and Remove Buttons..
              const ADCartItems(showAddRemoveButton: false),
              const SizedBox(
                height: BaseAppSizes.spaceBtwSections,
              ),

              ///Coupon TextField
              const CouponCard(),
              const SizedBox(
                height: BaseAppSizes.spaceBtwSections,
              ),

              ///Billing Section
              ADRoundedContainer(
                padding: const EdgeInsets.all(BaseAppSizes.md),
                showBorder: true,
                backgroundColor:
                    isDark ? BaseAppColors.black : BaseAppColors.white,
                child: const Column(
                  children: [
                    ///Pricing
                    BillingAmountSection(),
                    SizedBox(
                      height: BaseAppSizes.spaceBtwItems,
                    ),

                    ///Divider
                    Divider(),
                    SizedBox(
                      height: BaseAppSizes.spaceBtwItems,
                    ),

                    ///Payment Methods
                    BillingPaymentSection(),
                    SizedBox(
                      height: BaseAppSizes.spaceBtwItems,
                    ),

                    ///Address
                    BillingAddressSection(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),

      ///Checkout Button
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(BaseAppSizes.defaultSpace),
        child: ElevatedButton(
          onPressed: () => Get.to(
            () => SuccessScreen(
              image: BaseAppImages.successfulPaymentIcon,
              title: 'Payment Success!',
              subTitle: 'Your item will be shipped soon!',
              onPressed: () => Get.offAll(() => const NavigationMenu()),
            ),
          ),
          child: const Text('Checkout \$ 280.0'),
        ),
      ),
    );
  }
}
