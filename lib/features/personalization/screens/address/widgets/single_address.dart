import 'package:apni_dukaan/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:apni_dukaan/utils/constants/colors.dart';
import 'package:apni_dukaan/utils/constants/sizes.dart';
import 'package:apni_dukaan/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ADSingleAddress extends StatelessWidget {
  const ADSingleAddress({
    super.key,
    required this.selectedAddress,
  });

  final bool selectedAddress;

  @override
  Widget build(BuildContext context) {
    final isDark = BaseAppHelperFunctions.isDarkMode(context);
    return ADRoundedContainer(
      padding: const EdgeInsets.all(BaseAppSizes.md),
      width: double.infinity,
      showBorder: true,
      backgroundColor: selectedAddress
          ? BaseAppColors.primary.withOpacity(0.5)
          : Colors.transparent,
      borderColor: selectedAddress
          ? Colors.transparent
          : isDark
              ? BaseAppColors.darkerGrey
              : BaseAppColors.grey,
      margin: const EdgeInsets.only(bottom: BaseAppSizes.spaceBtwItems),
      child: Stack(
        children: [
          Positioned(
            right: 5,
            top: 0,
            child: Icon(
              selectedAddress ? Iconsax.tick_circle5 : null,
              color: selectedAddress
                  ? isDark
                      ? BaseAppColors.light
                      : BaseAppColors.dark
                  : null,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Suraj Sharma',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: Theme.of(context).textTheme.titleLarge),
              const SizedBox(height: BaseAppSizes.sm / 2),
              const Text('+91 9999999999',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1
                 ),
              const SizedBox(height: BaseAppSizes.sm / 2),
              const Text('Block H, Gali No. 16 House No. 576/B Sangam Vihar, New Delhi 110080',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  softWrap: true),
              const SizedBox(height: BaseAppSizes.sm / 2),
            ],
          )
        ],
      ),
    );
  }
}
