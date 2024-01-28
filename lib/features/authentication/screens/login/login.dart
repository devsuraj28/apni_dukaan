import 'package:apni_dukaan/common/styles/headerSectionPadding.dart';
import 'package:apni_dukaan/common/widgets/login_register/custom_divider_section.dart';
import 'package:apni_dukaan/common/widgets/login_register/custom_social_icons_section.dart';
import 'package:apni_dukaan/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../utils/constants/text_strings.dart';
import 'widgets/login_form.dart';
import 'widgets/login_header.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: HeaderSectionPadding.headerSectionPadding,
          child: Column(
            children: [
              ///Header Section
              const LoginHeaderSection(),

              ///Form Section
              const LoginFormSection(),

              ///Divider Section
              CustomDividerSection(
                centerText: BasicTexts.orSignInWith.capitalize!,
              ),

              const SizedBox(
                height: BaseAppSizes.spaceBtwSections,
              ),

              ///Social Icons Section
              const CustomSocialIconSection(),
            ],
          ),
        ),
      ),
    );
  }
}
