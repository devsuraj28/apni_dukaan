import 'package:apni_dukaan/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:iconsax/iconsax.dart';

class ADRatingBarIndicator extends StatelessWidget {
  const ADRatingBarIndicator({super.key, required this.rating});

  final double rating;

  @override
  Widget build(BuildContext context) {
    return RatingBarIndicator(
      itemSize: 18,
      itemCount: 5,
      rating: rating,
      unratedColor: BaseAppColors.grey,
      itemBuilder: (context, index) =>
          const Icon(Iconsax.star1, color: BaseAppColors.primary),
    );
  }
}
