import 'package:apni_dukaan/common/widgets/texts/custom_section_heading.dart';
import 'package:apni_dukaan/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class BillingAddressSection extends StatelessWidget {
  const BillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomSectionHeading(
          title: "Shipping Address",
          buttonTitle: "Change",
          onPressed: () {},
        ),
        Text('Developer Suraj', style: Theme.of(context).textTheme.bodyLarge),
        const SizedBox(height: BaseAppSizes.spaceBtwItems / 2),
        Row(
          children: [
            const Icon(Icons.phone, color: Colors.grey, size: 16),
            const SizedBox(width: BaseAppSizes.spaceBtwItems),
            Text('+91-9999999999',
                style: Theme.of(context).textTheme.bodyLarge),
          ],
        ),
        const SizedBox(height: BaseAppSizes.spaceBtwItems / 2),
        Row(
          children: [
            const Icon(Icons.location_history, color: Colors.grey, size: 16),
            const SizedBox(width: BaseAppSizes.spaceBtwItems),
            Expanded(
              child: Text('Sangam Vihar New Delhi',
                  style: Theme.of(context).textTheme.bodyMedium,
                  softWrap: true),
            ),
          ],
        ),

      ],
    );
  }
}
