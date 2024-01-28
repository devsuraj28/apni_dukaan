import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/sizes.dart';

/* -- Light & Dark Outlined Button Themes -- */
class BaseAppOutlinedButtonTheme {
  BaseAppOutlinedButtonTheme._(); //To avoid creating instances


  /* -- Light Theme -- */
  static final lightOutlinedButtonTheme  = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: BaseAppColors.dark,
      side: const BorderSide(color: BaseAppColors.borderPrimary),
      textStyle: const TextStyle(fontSize: 16, color: BaseAppColors.black, fontWeight: FontWeight.w600),
      padding: const EdgeInsets.symmetric(vertical: BaseAppSizes.buttonHeight, horizontal: 20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(BaseAppSizes.buttonRadius)),
    ),
  );

  /* -- Dark Theme -- */
  static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: BaseAppColors.light,
      side: const BorderSide(color: BaseAppColors.borderPrimary),
      textStyle: const TextStyle(fontSize: 16, color: BaseAppColors.textWhite, fontWeight: FontWeight.w600),
      padding: const EdgeInsets.symmetric(vertical: BaseAppSizes.buttonHeight, horizontal: 20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(BaseAppSizes.buttonRadius)),
    ),
  );
}
