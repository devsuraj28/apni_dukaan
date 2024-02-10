import 'package:apni_dukaan/utils/constants/sizes.dart';
import 'package:apni_dukaan/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ADCustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ADCustomAppBar({
    super.key,
    this.showBackArrow = false,
    this.title,
    this.leadingIcon,
    this.leadingOnPressed,
    this.actions,
  });

  final bool showBackArrow;
  final Widget? title;
  final IconData? leadingIcon;
  final VoidCallback? leadingOnPressed;
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: BaseAppSizes.md),
      child: AppBar(
        automaticallyImplyLeading: false,
        leading: showBackArrow
            ? IconButton(
                icon: const Icon(Iconsax.arrow_left),
                onPressed: () => Get.back())
            : leadingIcon != null
                ? IconButton(
                    icon: Icon(leadingIcon),
                    onPressed: leadingOnPressed,
                  )
                : null,
        title: title,
        actions: actions,
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(TDeviceUtils.getAppBarHeight());
}
