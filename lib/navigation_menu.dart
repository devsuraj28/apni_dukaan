import 'package:apni_dukaan/features/personalization/screens/settings/settings.dart';
import 'package:apni_dukaan/features/shop/screens/home/home.dart';
import 'package:apni_dukaan/features/shop/screens/store/store.dart';
import 'package:apni_dukaan/features/shop/screens/wishlist/wishlist.dart';
import 'package:apni_dukaan/utils/constants/colors.dart';
import 'package:apni_dukaan/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = BaseAppHelperFunctions.isDarkMode(context);
    final navigationController = Get.put(NavigationController());
    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          elevation: 0,
          height: 80,
          backgroundColor: isDark ? BaseAppColors.black : BaseAppColors.white,
          indicatorColor: isDark
              ? BaseAppColors.white.withOpacity(0.1)
              : BaseAppColors.black.withOpacity(0.1),
          selectedIndex: navigationController.selectedIndex.value,
          onDestinationSelected: (index) =>
              navigationController.updateNavigationIndex(index),
          destinations: const [
            NavigationDestination(icon: Icon(Iconsax.home), label: "Home"),
            NavigationDestination(icon: Icon(Iconsax.shop), label: "Store"),
            NavigationDestination(icon: Icon(Iconsax.heart), label: "Wishlist"),
            NavigationDestination(icon: Icon(Iconsax.user), label: "Profile"),
          ],
        ),
      ),
      body: Obx(() => navigationController
          .screens[navigationController.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  static NavigationController get instance => Get.find();

  ///Variable
  RxInt selectedIndex = 0.obs;

  final screens = [
    const HomeScreen(),
    const StoreScreen(),
    const WishListScreen(),
    const SettingsScreen(),
  ];

  ///update Navigation Index
  void updateNavigationIndex(int index) => selectedIndex.value = index;
}
