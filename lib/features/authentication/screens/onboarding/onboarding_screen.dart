import 'package:apni_dukaan/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:apni_dukaan/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../utils/constants/text_strings.dart';
import 'widgets/onboarding_circle_button.dart';
import 'widgets/onboarding_page.dart';
import 'widgets/onboarding_skip_button.dart';
import 'widgets/onboarding_smooth_page_indicator.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    ///Object of Onboarding Controller Class created using GetX
    final onBoardingController = Get.put(OnBoardingController());

    return Scaffold(
      body: Stack(
        children: [
          /// Horizontal Page Views
          PageView(
            controller: onBoardingController.pageController,
            onPageChanged: onBoardingController.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: BaseAppImages.onBoardingImage1,
                title: BasicTexts.onBoardingTitle1,
                subtitle: BasicTexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: BaseAppImages.onBoardingImage2,
                title: BasicTexts.onBoardingTitle2,
                subtitle: BasicTexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: BaseAppImages.onBoardingImage3,
                title: BasicTexts.onBoardingTitle3,
                subtitle: BasicTexts.onBoardingSubTitle3,
              )
            ],
          ),

          ///Skip Button
          const OnBoardingSkipButton(),

          ///Smooth Page Indicator
          const OnBoardingSmoothPageIndicator(),

          ///Circle Button
          const OnBoardingCircleButton()
        ],
      ),
    );
  }
}
