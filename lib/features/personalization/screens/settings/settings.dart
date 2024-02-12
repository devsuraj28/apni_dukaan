import 'package:apni_dukaan/common/widgets/appbar/custom_appbar.dart';
import 'package:apni_dukaan/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:apni_dukaan/common/widgets/listtile/settings_menu_tile.dart';
import 'package:apni_dukaan/common/widgets/listtile/user_profile_tile.dart';
import 'package:apni_dukaan/common/widgets/texts/custom_section_heading.dart';
import 'package:apni_dukaan/features/personalization/screens/profile/profile.dart';
import 'package:apni_dukaan/utils/constants/colors.dart';
import 'package:apni_dukaan/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ///--Header
            ADPrimaryHeaderContainer(
              child: Column(
                children: [
                  ///AppBar
                  ADCustomAppBar(
                    title: Text(
                      'Account',
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .apply(color: BaseAppColors.white),
                    ),
                  ),

                  ///User Profile Card
                  UserProfileTile(
                      onPressed: () => Get.to(() => const ProfileScreen())),
                  const SizedBox(
                    height: BaseAppSizes.spaceBtwSections,
                  ),
                ],
              ),
            ),

            ///--Body

            Padding(
              padding: const EdgeInsets.all(BaseAppSizes.defaultSpace),
              child: Column(
                children: [
                  ///Account Settings
                  const CustomSectionHeading(
                    title: 'Account Settings',
                    showActionButton: false,
                  ),
                  const SizedBox(
                    height: BaseAppSizes.spaceBtwItems,
                  ),

                  SettingsMenuTile(
                      title: "My Address",
                      subTitle: "Set shopping delivery address",
                      icon: Iconsax.safe_home,
                      onTap: () {}),

                  SettingsMenuTile(
                      title: "My Cart",
                      subTitle: "Add, remove products and move to checkout",
                      icon: Iconsax.shopping_cart,
                      onTap: () {}),

                  SettingsMenuTile(
                      title: "My Orders",
                      subTitle: "In-progress and completed orders",
                      icon: Iconsax.bag_tick,
                      onTap: () {}),

                  SettingsMenuTile(
                      title: "Bank Accounts",
                      subTitle: "Withdraw balance to add in Bank Account",
                      icon: Iconsax.bank,
                      onTap: () {}),

                  SettingsMenuTile(
                      title: "My Coupons",
                      subTitle: "List of all the discounted Coupons",
                      icon: Iconsax.discount_shape,
                      onTap: () {}),

                  SettingsMenuTile(
                      title: "Notifications",
                      subTitle: "Set any kind of notification messages",
                      icon: Iconsax.notification,
                      onTap: () {}),

                  SettingsMenuTile(
                      title: "Account Privacy",
                      subTitle: "Manage data usage and connected accounts",
                      icon: Iconsax.security_card,
                      onTap: () {}),

                  const SizedBox(
                    height: BaseAppSizes.spaceBtwSections,
                  ),

                  ///App Settings
                  const CustomSectionHeading(
                    title: 'App Settings',
                    showActionButton: false,
                  ),
                  const SizedBox(
                    height: BaseAppSizes.spaceBtwItems,
                  ),

                  SettingsMenuTile(
                      title: "Geolocation",
                      subTitle: "Set recommendation based on location",
                      icon: Iconsax.location,
                      trailing: Switch(
                        value: true,
                        onChanged: (value) {},
                      ),
                      onTap: () {}),

                  SettingsMenuTile(
                      title: "Safe Mode",
                      subTitle: "Search result is safe fo all ages",
                      icon: Iconsax.security_user,
                      trailing: Switch(
                        value: false,
                        onChanged: (value) {},
                      ),
                      onTap: () {}),

                  SettingsMenuTile(
                      title: "HD Image Quality",
                      subTitle: "Set image quality to be seen",
                      icon: Iconsax.image,
                      trailing: Switch(
                        value: false,
                        onChanged: (value) {},
                      ),
                      onTap: () {}),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
