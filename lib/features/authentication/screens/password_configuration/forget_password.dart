import 'package:apni_dukaan/features/authentication/screens/password_configuration/reset_password.dart';
import 'package:flutter/material.dart';
import 'package:apni_dukaan/utils/constants/sizes.dart';
import 'package:apni_dukaan/utils/constants/text_strings.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(BaseAppSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ///Heading
              Text(
                BasicTexts.forgetPasswordTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: BaseAppSizes.spaceBtwItems,
              ),
              Text(
                BasicTexts.forgetPasswordSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
              ),
              const SizedBox(
                height: BaseAppSizes.spaceBtwSections * 2,
              ),

              ///TextFields
              TextFormField(
                decoration: const InputDecoration(
                  label: Text(BasicTexts.email),
                  prefixIcon: Icon(Iconsax.direct),
                ),
              ),

              const SizedBox(
                height: BaseAppSizes.spaceBtwSections,
              ),

              ///Buttons
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Get.off(() => const ResetPasswordScreen()),
                  child: const Text(
                    BasicTexts.submit,
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
