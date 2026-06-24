import 'package:apni_dukaan/utils/constants/colors.dart';
import 'package:apni_dukaan/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class ADOverallProductRatings extends StatelessWidget {
  const ADOverallProductRatings({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: Text(
            '4.8',
            style: Theme.of(context).textTheme.displayLarge,
          ),
        ),
        const Expanded(
          flex: 7,
          child: Column(
            children: [
              ADRatingProgressIndicator(
                text: '5',
                value: 1.0,
              ),
              ADRatingProgressIndicator(
                text: '4',
                value: 0.7,
              ),
              ADRatingProgressIndicator(
                text: '3',
                value: 0.5,
              ),
              ADRatingProgressIndicator(
                text: '2',
                value: 0.3,
              ),
              ADRatingProgressIndicator(
                text: '1',
                value: 0.15,
              ),
            ],
          ),
        )
      ],
    );
  }
}

class ADRatingProgressIndicator extends StatelessWidget {
  const ADRatingProgressIndicator({
    super.key,
    required this.text,
    required this.value,
  });

  final String text;
  final double value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Text(
            text,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
        Expanded(
          flex: 15,
          child: SizedBox(
            width: TDeviceUtils.getScreenWidth(context) * 0.5,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(7),
              child: LinearProgressIndicator(
                value: value,
                minHeight: 10,
                backgroundColor: BaseAppColors.grey,
                valueColor: const AlwaysStoppedAnimation(BaseAppColors.primary),
              ),
            ),
          ),
        )
      ],
    );
  }
}
