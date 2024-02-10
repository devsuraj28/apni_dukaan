import 'package:apni_dukaan/common/widgets/appbar/custom_appbar.dart';
import 'package:apni_dukaan/common/widgets/images/custom_circular_image.dart';
import 'package:apni_dukaan/common/widgets/texts/custom_section_heading.dart';
import 'package:apni_dukaan/utils/constants/image_strings.dart';
import 'package:apni_dukaan/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import 'widget/profile_menu.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const ADCustomAppBar(
        showBackArrow: true,
        title: Text('Profile'),
      ),

      ///Body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(BaseAppSizes.defaultSpace),
          child: SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                ///Profile Picture
                const ADCircularImage(
                  imageUrl: BaseAppImages.user,
                  width: 80,
                  height: 80,
                ),
                TextButton(
                    onPressed: () {},
                    child: const Text("Change profile picture")),

                ///Details
                const SizedBox(
                  height: BaseAppSizes.spaceBtwItems / 2,
                ),
                const Divider(),
                const SizedBox(
                  height: BaseAppSizes.spaceBtwItems,
                ),

                ///Heading Profile Info
                const CustomSectionHeading(
                  title: 'Profile Information',
                  showActionButton: false,
                ),

                const SizedBox(
                  height: BaseAppSizes.spaceBtwItems,
                ),

                ProfileMenu(
                  title: 'Name',
                  value: "Developer Suraj",
                  onTap: () {},
                ),

                ProfileMenu(
                  title: 'Username',
                  value: "devsuraj28",
                  onTap: () {},
                ),

                const SizedBox(
                  height: BaseAppSizes.spaceBtwItems,
                ),
                const Divider(),
                const SizedBox(
                  height: BaseAppSizes.spaceBtwItems,
                ),

                ///Heading Personal Info
                const CustomSectionHeading(
                  title: 'Personal Information',
                  showActionButton: false,
                ),

                const SizedBox(
                  height: BaseAppSizes.spaceBtwItems,
                ),

                ProfileMenu(
                  title: 'User ID',
                  value: "12345",
                  onTap: () {},
                  icon: Iconsax.copy,
                ),

                ProfileMenu(
                  title: 'Email',
                  value: "er.surajcse@gmail.com",
                  onTap: () {},
                ),
                ProfileMenu(
                  title: 'Phone Number',
                  value: "(+91) 9871886509",
                  onTap: () {},
                ),

                ProfileMenu(
                  title: 'Gender',
                  value: "Male",
                  onTap: () {},
                ),
                ProfileMenu(
                  title: 'Date of Birth',
                  value: "28 Aug, 2000",
                  onTap: () {},
                ),

                const SizedBox(
                  height: BaseAppSizes.spaceBtwItems,
                ),

                Center(
                  child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Close Account',
                        style: TextStyle(color: Colors.red),
                      )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
