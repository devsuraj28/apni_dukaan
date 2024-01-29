import 'package:apni_dukaan/common/widgets/appbar/custom_appbar.dart';
import 'package:apni_dukaan/utils/constants/colors.dart';
import 'package:apni_dukaan/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

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
        Stack(
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Iconsax.shopping_bag,
                color: BaseAppColors.white,
              ),
            ),
            Positioned(
              right: 0,
              child: Container(
                width: 18,
                height: 18,
                decoration: BoxDecoration(
                  color: BaseAppColors.black,
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Center(
                  child: Text(
                    "5",
                    style: Theme.of(context)
                        .textTheme
                        .labelLarge!
                        .apply(
                        color: BaseAppColors.white,
                        fontSizeFactor: 0.8),
                  ),
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}