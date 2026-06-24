import 'package:apni_dukaan/utils/constants/colors.dart';
import 'package:apni_dukaan/utils/device/device_utility.dart';
import 'package:apni_dukaan/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class ADCategoriesTabBar extends StatelessWidget
    implements PreferredSizeWidget {
  const ADCategoriesTabBar({
    super.key, required this.tabs,
  });

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final isDark = BaseAppHelperFunctions.isDarkMode(context);
    return Material(
      color: isDark ? BaseAppColors.black : BaseAppColors.white,
      child: TabBar(
          isScrollable: true,
          indicatorColor: BaseAppColors.primary,
          labelColor: isDark ? BaseAppColors.white : BaseAppColors.primary,
          unselectedLabelColor: BaseAppColors.darkerGrey,
          tabs: tabs),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(TDeviceUtils.getAppBarHeight());
}
