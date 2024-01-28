import 'package:apni_dukaan/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/device/device_utility.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class OnBoardingCircleButton extends StatelessWidget {
  const OnBoardingCircleButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = BaseAppHelperFunctions.isDarkMode(context);

    return Positioned(
      bottom: TDeviceUtils.getBottomNavigationBarHeight(),
      right: BaseAppSizes.defaultSpace,
      child: ElevatedButton(
        onPressed: () => OnBoardingController.instance.nextPage(),
        style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),
          backgroundColor: isDark ? BaseAppColors.primary : BaseAppColors.dark,
        ),
        child: const Icon(Iconsax.arrow_right_3),
      ),
    );
  }
}
