import 'package:apni_dukaan/utils/constants/colors.dart';
import 'package:apni_dukaan/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class CustomDividerSection extends StatelessWidget {
  const CustomDividerSection({
    super.key,
    required this.centerText,
  });

  final String centerText;

  @override
  Widget build(BuildContext context) {
    final isDark = BaseAppHelperFunctions.isDarkMode(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: Divider(
            color: isDark ? BaseAppColors.darkerGrey : BaseAppColors.grey,
            thickness: 0.5,
            indent: 50,
            endIndent: 5,
          ),
        ),
        Text(
          centerText,
          style: Theme.of(context).textTheme.labelMedium,
        ),
        Flexible(
          child: Divider(
            color: isDark ? BaseAppColors.darkerGrey : BaseAppColors.grey,
            thickness: 0.5,
            indent: 5,
            endIndent: 50,
          ),
        ),
      ],
    );
  }
}
