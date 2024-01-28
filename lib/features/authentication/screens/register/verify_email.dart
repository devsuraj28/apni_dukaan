import 'package:apni_dukaan/common/widgets/success_screens/success_screen.dart';
import 'package:apni_dukaan/features/authentication/screens/login/login.dart';
import 'package:apni_dukaan/utils/constants/image_strings.dart';
import 'package:apni_dukaan/utils/constants/sizes.dart';
import 'package:apni_dukaan/utils/constants/text_strings.dart';
import 'package:apni_dukaan/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerifyEmail extends StatelessWidget {
  const VerifyEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => Get.offAll(() => const LoginScreen()),
            icon: const Icon(CupertinoIcons.clear),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(BaseAppSizes.defaultSpace),
          child: Column(
            children: [
              ///Image
              Image(
                width: BaseAppHelperFunctions.screenWidth() * 0.6,
                image:
                    const AssetImage(BaseAppImages.deliveredEmailIllustration),
              ),
              const SizedBox(
                height: BaseAppSizes.spaceBtwSections,
              ),

              ///Title & Sub-title
              Text(
                BasicTexts.confirmEmail,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: BaseAppSizes.spaceBtwItems,
              ),
              Text(
                "support@baseApp.com",
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: BaseAppSizes.spaceBtwItems,
              ),
              Text(
                BasicTexts.confirmEmailSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: BaseAppSizes.spaceBtwSections,
              ),

              ///Buttons
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Get.to(
                    () => SuccessScreen(
                      image: BaseAppImages.staticSuccessIllustration,
                      title: BasicTexts.yourAccountCreatedTitle,
                      subTitle: BasicTexts.yourAccountCreatedSubTitle,
                      onPressed: () => Get.to(() => const LoginScreen()),
                    ),
                  ),
                  child: const Text(
                    BasicTexts.tContinue,
                  ),
                ),
              ),
              const SizedBox(
                height: BaseAppSizes.spaceBtwItems,
              ),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    BasicTexts.resendEmail,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
