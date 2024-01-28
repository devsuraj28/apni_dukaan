import 'package:apni_dukaan/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/device/device_utility.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class OnBoardingSmoothPageIndicator extends StatelessWidget {
  const OnBoardingSmoothPageIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final onBoardingController = OnBoardingController.instance;
    final isDark = BaseAppHelperFunctions.isDarkMode(context);

    return Positioned(
      bottom: TDeviceUtils.getBottomNavigationBarHeight() + 25,
      left: BaseAppSizes.defaultSpace,
      child: SmoothPageIndicator(
        controller: onBoardingController.pageController,
        onDotClicked: (index) => onBoardingController.dotNavigationClicked,
        count: 3,
        effect: ExpandingDotsEffect(
            activeDotColor: isDark ? BaseAppColors.light : BaseAppColors.dark,
            dotHeight: 6),
      ),
    );
  }
}
