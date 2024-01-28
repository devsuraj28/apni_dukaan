import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/sizes.dart';

class BaseAppBarTheme {
  BaseAppBarTheme._();

  static const lightAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme:
        IconThemeData(color: BaseAppColors.black, size: BaseAppSizes.iconMd),
    actionsIconTheme:
        IconThemeData(color: BaseAppColors.black, size: BaseAppSizes.iconMd),
    titleTextStyle: TextStyle(
        fontSize: 18.0,
        fontWeight: FontWeight.w600,
        color: BaseAppColors.black),
  );

  static const darkAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme:
        IconThemeData(color: BaseAppColors.black, size: BaseAppSizes.iconMd),
    actionsIconTheme:
        IconThemeData(color: BaseAppColors.white, size: BaseAppSizes.iconMd),
    titleTextStyle: TextStyle(
        fontSize: 18.0,
        fontWeight: FontWeight.w600,
        color: BaseAppColors.white),
  );
}
