import 'package:apni_dukaan/common/widgets/login_register/custom_divider_section.dart';
import 'package:apni_dukaan/common/widgets/login_register/custom_social_icons_section.dart';
import 'package:apni_dukaan/utils/constants/sizes.dart';
import 'package:apni_dukaan/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'widgets/register_form.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(BaseAppSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ///Header Section
              Text(
                BasicTexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),

              ///Form Section
              const RegistrationForm(),

              ///Divider Section
              CustomDividerSection(
                centerText: BasicTexts.orSignUpWith.capitalize!,
              ),

              const SizedBox(
                height: BaseAppSizes.spaceBtwSections,
              ),

              ///Social Icon Section
              const CustomSocialIconSection()
            ],
          ),
        ),
      ),
    );
  }
}
