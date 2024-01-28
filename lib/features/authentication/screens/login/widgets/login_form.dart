import 'package:apni_dukaan/features/authentication/screens/password_configuration/forget_password.dart';
import 'package:apni_dukaan/features/authentication/screens/register/register.dart';
import 'package:apni_dukaan/navigation_menu.dart';
import 'package:apni_dukaan/utils/constants/sizes.dart';
import 'package:apni_dukaan/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class LoginFormSection extends StatelessWidget {
  const LoginFormSection({
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
            TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.direct_right),
                  labelText: BasicTexts.email),
            ),
            const SizedBox(
              height: BaseAppSizes.spaceBtwInputFields,
            ),
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                labelText: BasicTexts.password,
                suffixIcon: Icon(Iconsax.eye_slash),
              ),
            ),
            const SizedBox(
              width: BaseAppSizes.spaceBtwInputFields / 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 24,
                      child: Checkbox(
                        value: true,
                        onChanged: (value) {},
                      ),
                    ),
                    const SizedBox(
                      width: BaseAppSizes.sm,
                    ),
                    const Text(
                      BasicTexts.rememberMe,
                    ),
                  ],
                ),
                TextButton(
                  onPressed: () => Get.to(() => const ForgetPasswordScreen()),
                  child: const Text(
                    BasicTexts.forgetPassword,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: BaseAppSizes.spaceBtwSections,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.to(
                  () => const NavigationMenu(),
                ),
                child: const Text(
                  BasicTexts.signIn,
                ),
              ),
            ),
            const SizedBox(
              height: BaseAppSizes.spaceBtwItems,
            ),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () => Get.to(
                  () => const RegisterScreen(),
                ),
                child: const Text(
                  BasicTexts.createAccount,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
