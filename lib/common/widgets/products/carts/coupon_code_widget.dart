import 'package:apni_dukaan/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:apni_dukaan/utils/constants/colors.dart';
import 'package:apni_dukaan/utils/constants/sizes.dart';
import 'package:apni_dukaan/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class CouponCard extends StatelessWidget {
  const CouponCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = BaseAppHelperFunctions.isDarkMode(context);
    return ADRoundedContainer(
      showBorder: true,
      backgroundColor: isDark ? BaseAppColors.dark : BaseAppColors.white,
      padding: const EdgeInsets.only(
          left: BaseAppSizes.md,
          right: BaseAppSizes.sm,
          top: BaseAppSizes.sm,
          bottom: BaseAppSizes.sm),
      child: Row(
        children: [
          Flexible(
            child: TextFormField(
              decoration: const InputDecoration(
                hintText: "Have a Coupon? Enter here",
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
              ),
            ),
          ),

          ///Apply Button
          SizedBox(
            width: 80,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: isDark
                      ? BaseAppColors.white.withOpacity(0.5)
                      : BaseAppColors.dark.withOpacity(0.5),
                  side: BorderSide(
                    color: Colors.grey.withOpacity(0.1),
                  ),
                  backgroundColor: Colors.grey.withOpacity(0.2),
                ),
                onPressed: () {},
                child: const Text("Apply")),
          )
        ],
      ),
    );
  }
}
