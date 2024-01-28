import 'package:apni_dukaan/utils/constants/colors.dart';
import 'package:apni_dukaan/utils/constants/sizes.dart';
import 'package:apni_dukaan/utils/constants/text_strings.dart';
import 'package:apni_dukaan/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = BaseAppHelperFunctions.isDarkMode(context);
    return Row(
      children: [
        SizedBox(
          width: 24,
          height: 24,
          child: Checkbox(value: true, onChanged: (value) {}),
        ),
        const SizedBox(
          width: BaseAppSizes.spaceBtwItems,
        ),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                  text: '${BasicTexts.iAgreeTo} ',
                  style: Theme.of(context).textTheme.bodySmall),
              TextSpan(
                text: '${BasicTexts.privacyPolicy} ',
                style: Theme.of(context).textTheme.bodyMedium!.apply(
                    decoration: TextDecoration.underline,
                    decorationColor:
                        isDark ? BaseAppColors.white : BaseAppColors.primary,
                    color:
                        isDark ? BaseAppColors.white : BaseAppColors.primary),
              ),
              TextSpan(
                  text: ' ${BasicTexts.and} ',
                  style: Theme.of(context).textTheme.bodySmall),
              TextSpan(
                text: '${BasicTexts.termsOfUse} ',
                style: Theme.of(context).textTheme.bodyMedium!.apply(
                    decoration: TextDecoration.underline,
                    decorationColor:
                        isDark ? BaseAppColors.white : BaseAppColors.primary,
                    color:
                        isDark ? BaseAppColors.white : BaseAppColors.primary),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
