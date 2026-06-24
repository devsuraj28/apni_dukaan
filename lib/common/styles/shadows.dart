import 'package:apni_dukaan/utils/constants/colors.dart';
import 'package:flutter/cupertino.dart';

class ADShadowStyles {
  static final verticalProductShadow = BoxShadow(
    color: BaseAppColors.darkerGrey.withOpacity(0.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset: const Offset(0, 2),
  );

  static final horizontalProductShadow = BoxShadow(
    color: BaseAppColors.darkerGrey.withOpacity(0.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset: const Offset(0, 2),
  );
}
