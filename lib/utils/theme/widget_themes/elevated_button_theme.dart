    import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/sizes.dart';


/* -- Light & Dark Elevated Button Themes -- */
class BaseAppElevatedButtonTheme {
  BaseAppElevatedButtonTheme._(); //To avoid creating instances


  /* -- Light Theme -- */
  static final lightElevatedButtonTheme  = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: BaseAppColors.light,
      backgroundColor: BaseAppColors.primary,
      disabledForegroundColor: BaseAppColors.darkGrey,
      disabledBackgroundColor: BaseAppColors.buttonDisabled,
      side: const BorderSide(color: BaseAppColors.primary),
      padding: const EdgeInsets.symmetric(vertical: BaseAppSizes.buttonHeight),
      textStyle: const TextStyle(fontSize: 16, color: BaseAppColors.textWhite, fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(BaseAppSizes.buttonRadius)),
    ),
  );

  /* -- Dark Theme -- */
  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: BaseAppColors.light,
      backgroundColor: BaseAppColors.primary,
      disabledForegroundColor: BaseAppColors.darkGrey,
      disabledBackgroundColor: BaseAppColors.darkerGrey,
      side: const BorderSide(color: BaseAppColors.primary),
      padding: const EdgeInsets.symmetric(vertical: BaseAppSizes.buttonHeight),
      textStyle: const TextStyle(fontSize: 16, color: BaseAppColors.textWhite, fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(BaseAppSizes.buttonRadius)),
    ),
  );
}
