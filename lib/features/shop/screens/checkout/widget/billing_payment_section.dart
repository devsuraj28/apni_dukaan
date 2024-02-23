import 'package:apni_dukaan/common/styles/headerSectionPadding.dart';
import 'package:apni_dukaan/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:apni_dukaan/common/widgets/texts/custom_section_heading.dart';
import 'package:apni_dukaan/utils/constants/colors.dart';
import 'package:apni_dukaan/utils/constants/image_strings.dart';
import 'package:apni_dukaan/utils/constants/sizes.dart';
import 'package:apni_dukaan/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class BillingPaymentSection extends StatelessWidget {
  const BillingPaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = BaseAppHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        CustomSectionHeading(
          title: "Payment Method",
          buttonTitle: "Change",
          onPressed: () {},
        ),
        const SizedBox(
          height: BaseAppSizes.spaceBtwItems / 2,
        ),
        Row(
          children: [
            ADRoundedContainer(
              width: 60,
              height: 35,
              backgroundColor:
              isDark ? BaseAppColors.light : BaseAppColors.white,
              padding: const EdgeInsets.all(BaseAppSizes.sm),
              child: const Image(
                  image: AssetImage(BaseAppImages.paypal), fit: BoxFit.contain),
            ),
            const SizedBox(
              width: BaseAppSizes.spaceBtwItems / 2,
            ),
            Text('PayPal', style: Theme.of(context).textTheme.bodyLarge)
          ],
        )
      ],
    );
  }
}
