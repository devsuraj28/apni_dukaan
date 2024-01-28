import 'package:apni_dukaan/common/styles/headerSectionPadding.dart';
import 'package:apni_dukaan/utils/constants/text_strings.dart';
import 'package:apni_dukaan/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import '../../../utils/constants/sizes.dart';

class SuccessScreen extends StatelessWidget {
  final String image, title, subTitle;
  final VoidCallback onPressed;

  const SuccessScreen(
      {super.key,
      required this.image,
      required this.title,
      required this.subTitle,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: HeaderSectionPadding.headerSectionPadding * 2,
          child: Column(children: [
            ///Image
            Image(
              width: BaseAppHelperFunctions.screenWidth() * 0.6,
              image: AssetImage(image),
            ),
            const SizedBox(
              height: BaseAppSizes.spaceBtwSections,
            ),

            ///Title & Sub-title
            Text(
              title,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: BaseAppSizes.spaceBtwItems,
            ),
            Text(
              subTitle,
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
                onPressed: onPressed,
                child: const Text(
                  BasicTexts.tContinue,
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
