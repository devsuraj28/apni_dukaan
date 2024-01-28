import 'package:flutter/material.dart';
import '../../constants/colors.dart';

class BaseAppChipTheme {
  BaseAppChipTheme._();

  static ChipThemeData lightChipTheme = ChipThemeData(
    disabledColor: BaseAppColors.grey.withOpacity(0.4),
    labelStyle: const TextStyle(color: BaseAppColors.black),
    selectedColor: BaseAppColors.primary,
    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
    checkmarkColor: BaseAppColors.white,
  );

  static ChipThemeData darkChipTheme = const ChipThemeData(
    disabledColor: BaseAppColors.darkerGrey,
    labelStyle: TextStyle(color: BaseAppColors.white),
    selectedColor: BaseAppColors.primary,
    padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
    checkmarkColor: BaseAppColors.white,
  );
}
