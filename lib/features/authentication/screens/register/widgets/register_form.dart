import 'package:apni_dukaan/features/authentication/screens/register/verify_email.dart';
import 'package:apni_dukaan/utils/constants/sizes.dart';
import 'package:apni_dukaan/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import 'terms_and_conditions.dart';

class RegistrationForm extends StatelessWidget {
  const RegistrationForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding:
            const EdgeInsets.symmetric(vertical: BaseAppSizes.spaceBtwSections),
        child: Column(
          children: [
            ///First & Last Name
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    decoration: const InputDecoration(
                      label: Text(BasicTexts.firstName),
                      prefixIcon: Icon(Iconsax.user),
                    ),
                  ),
                ),
                const SizedBox(
                  width: BaseAppSizes.spaceBtwInputFields,
                ),
                Expanded(
                  child: TextFormField(
                    decoration: const InputDecoration(
                      label: Text(BasicTexts.lastName),
                      prefixIcon: Icon(Iconsax.user),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: BaseAppSizes.spaceBtwInputFields,
            ),

            ///User Name
            TextFormField(
              decoration: const InputDecoration(
                label: Text(BasicTexts.username),
                prefixIcon: Icon(Iconsax.user_edit),
              ),
            ),
            const SizedBox(
              height: BaseAppSizes.spaceBtwInputFields,
            ),

            ///Email
            TextFormField(
              decoration: const InputDecoration(
                label: Text(BasicTexts.email),
                prefixIcon: Icon(Iconsax.direct),
              ),
            ),
            const SizedBox(
              height: BaseAppSizes.spaceBtwInputFields,
            ),

            ///Phone Number
            TextFormField(
              decoration: const InputDecoration(
                label: Text(BasicTexts.phoneNo),
                prefixIcon: Icon(Iconsax.call),
              ),
            ),
            const SizedBox(
              height: BaseAppSizes.spaceBtwInputFields,
            ),

            ///Password
            TextFormField(
              decoration: const InputDecoration(
                label: Text(BasicTexts.password),
                prefixIcon: Icon(Iconsax.password_check),
                suffixIcon: Icon(Iconsax.eye_slash),
              ),
            ),
            const SizedBox(
              height: BaseAppSizes.spaceBtwSections,
            ),

            ///Terms and Conditions
            const TermsAndConditions(),
            const SizedBox(
              height: BaseAppSizes.spaceBtwSections,
            ),

            ///Create Account
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.to(() => const VerifyEmail()),
                child: const Text(BasicTexts.createAccount),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
