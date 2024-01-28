import 'package:apni_dukaan/utils/theme/widget_themes/appbar_theme.dart';
import 'package:apni_dukaan/utils/theme/widget_themes/bottom_sheet_theme.dart';
import 'package:apni_dukaan/utils/theme/widget_themes/checkbox_theme.dart';
import 'package:apni_dukaan/utils/theme/widget_themes/chip_theme.dart';
import 'package:apni_dukaan/utils/theme/widget_themes/elevated_button_theme.dart';
import 'package:apni_dukaan/utils/theme/widget_themes/outlined_button_theme.dart';
import 'package:apni_dukaan/utils/theme/widget_themes/text_field_theme.dart';
import 'package:apni_dukaan/utils/theme/widget_themes/text_theme.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';

class BaseAppTheme {
  BaseAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    disabledColor: BaseAppColors.grey,
    brightness: Brightness.light,
    primaryColor: BaseAppColors.primary,
    textTheme: BaseAppTextTheme.lightTextTheme,
    chipTheme: BaseAppChipTheme.lightChipTheme,
    scaffoldBackgroundColor: BaseAppColors.white,
    appBarTheme: BaseAppBarTheme.lightAppBarTheme,
    checkboxTheme: BaseAppCheckboxTheme.lightCheckboxTheme,
    bottomSheetTheme: BaseAppBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: BaseAppElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: BaseAppOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: BaseAppTextFormFieldTheme.lightInputDecorationTheme,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    disabledColor: BaseAppColors.grey,
    brightness: Brightness.dark,
    primaryColor: BaseAppColors.primary,
    textTheme: BaseAppTextTheme.darkTextTheme,
    chipTheme: BaseAppChipTheme.darkChipTheme,
    scaffoldBackgroundColor: BaseAppColors.black,
    appBarTheme: BaseAppBarTheme.darkAppBarTheme,
    checkboxTheme: BaseAppCheckboxTheme.darkCheckboxTheme,
    bottomSheetTheme: BaseAppBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: BaseAppElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: BaseAppOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: BaseAppTextFormFieldTheme.darkInputDecorationTheme,
  );
}
