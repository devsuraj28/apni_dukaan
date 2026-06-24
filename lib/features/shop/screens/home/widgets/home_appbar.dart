import 'package:apni_dukaan/common/widgets/appbar/custom_appbar.dart';
import 'package:apni_dukaan/common/widgets/products/carts/custom_cart_counter_icon.dart';
import 'package:apni_dukaan/features/shop/screens/cart/cart.dart';
import 'package:apni_dukaan/utils/constants/colors.dart';
import 'package:apni_dukaan/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ADHomeAppBar extends StatelessWidget {
  const ADHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ADCustomAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            BasicTexts.homeAppbarTitle,
            style: Theme.of(context)
                .textTheme
                .labelMedium!
                .apply(color: BaseAppColors.grey),
          ),
          Text(
            BasicTexts.homeAppbarSubTitle,
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .apply(color: BaseAppColors.white),
          ),
        ],
      ),
      actions: [
        ADCartCounterIcon(
          onPressed: () => Get.to(() => const CartScreen()),
        )
      ],
    );
  }
}
