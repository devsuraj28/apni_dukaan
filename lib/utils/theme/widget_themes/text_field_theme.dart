import 'package:flutter/material.dart';
import '../../constants/colors.dart';
import '../../constants/sizes.dart';


class BaseAppTextFormFieldTheme {
  BaseAppTextFormFieldTheme._();

  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: BaseAppColors.darkGrey,
    suffixIconColor: BaseAppColors.darkGrey,
    // constraints: const BoxConstraints.expand(height: BaseAppSizes.inputFieldHeight),
    labelStyle: const TextStyle().copyWith(fontSize: BaseAppSizes.fontSizeMd, color: BaseAppColors.black),
    hintStyle: const TextStyle().copyWith(fontSize: BaseAppSizes.fontSizeSm, color: BaseAppColors.black),
    errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
    floatingLabelStyle: const TextStyle().copyWith(color: BaseAppColors.black.withOpacity(0.8)),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(BaseAppSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: BaseAppColors.grey),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(BaseAppSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: BaseAppColors.grey),
    ),
    focusedBorder:const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(BaseAppSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: BaseAppColors.dark),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(BaseAppSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: BaseAppColors.warning),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(BaseAppSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 2, color: BaseAppColors.warning),
    ),
  );

  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 2,
    prefixIconColor: BaseAppColors.darkGrey,
    suffixIconColor: BaseAppColors.darkGrey,
    // constraints: const BoxConstraints.expand(height: BaseAppSizes.inputFieldHeight),
    labelStyle: const TextStyle().copyWith(fontSize: BaseAppSizes.fontSizeMd, color: BaseAppColors.white),
    hintStyle: const TextStyle().copyWith(fontSize: BaseAppSizes.fontSizeSm, color: BaseAppColors.white),
    floatingLabelStyle: const TextStyle().copyWith(color: BaseAppColors.white.withOpacity(0.8)),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(BaseAppSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: BaseAppColors.darkGrey),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(BaseAppSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: BaseAppColors.darkGrey),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(BaseAppSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: BaseAppColors.white),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(BaseAppSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: BaseAppColors.warning),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(BaseAppSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 2, color: BaseAppColors.warning),
    ),
  );
}
