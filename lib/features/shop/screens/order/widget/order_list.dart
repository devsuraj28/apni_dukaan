import 'package:apni_dukaan/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:apni_dukaan/utils/constants/colors.dart';
import 'package:apni_dukaan/utils/constants/sizes.dart';
import 'package:apni_dukaan/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ADOrderListItems extends StatelessWidget {
  const ADOrderListItems({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = BaseAppHelperFunctions.isDarkMode(context);
    return ListView.separated(
      itemCount: 4,
      separatorBuilder: (_, __) =>
          const SizedBox(height: BaseAppSizes.spaceBtwItems),
      itemBuilder: (_, index) => ADRoundedContainer(
        showBorder: true,
        padding: const EdgeInsets.all(BaseAppSizes.md),
        backgroundColor: isDark ? BaseAppColors.dark : BaseAppColors.light,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ///Row 1
            Row(
              children: [
                ///1. Icon
                const Icon(Iconsax.ship),
                const SizedBox(width: BaseAppSizes.spaceBtwItems / 2),

                ///2 Status & Date
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Processing',
                        style: Theme.of(context).textTheme.bodyLarge!.apply(
                            color: BaseAppColors.primary, fontSizeDelta: 1),
                      ),
                      Text(
                        '23 Feb 2024',
                        style: Theme.of(context).textTheme.headlineSmall!,
                      )
                    ],
                  ),
                ),

                ///1. Icon
                const Icon(
                  Iconsax.arrow_right_34,
                  size: BaseAppSizes.iconSm,
                ),
              ],
            ),

            const SizedBox(height: BaseAppSizes.spaceBtwItems),

            ///Row 2
            Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      ///1. Icon
                      const Icon(Iconsax.tag),
                      const SizedBox(width: BaseAppSizes.spaceBtwItems / 2),

                      ///2 Status & Date
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Order',
                              style: Theme.of(context).textTheme.labelMedium,
                            ),
                            Text(
                              '[#254f8]',
                              style: Theme.of(context).textTheme.titleMedium,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      ///1. Icon
                      const Icon(Iconsax.calendar),
                      const SizedBox(width: BaseAppSizes.spaceBtwItems / 2),

                      ///2 Status & Date
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Shipping Date',
                              style: Theme.of(context).textTheme.labelMedium,
                            ),
                            Text(
                              '27 Feb 2024',
                              style: Theme.of(context).textTheme.titleMedium,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
