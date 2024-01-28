import 'package:apni_dukaan/utils/constants/image_strings.dart';
import 'package:apni_dukaan/utils/constants/sizes.dart';
import 'package:apni_dukaan/utils/constants/text_strings.dart';
import 'package:apni_dukaan/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class LoginHeaderSection extends StatelessWidget {
  const LoginHeaderSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = BaseAppHelperFunctions.isDarkMode(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          image: AssetImage(
              isDark ? BaseAppImages.lightAppLogo : BaseAppImages.darkAppLogo),
          height: 150,
        ),
        Text(
          BasicTexts.loginTitle,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(
          height: BaseAppSizes.sm,
        ),
        Text(
          BasicTexts.loginSubTitle,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}
