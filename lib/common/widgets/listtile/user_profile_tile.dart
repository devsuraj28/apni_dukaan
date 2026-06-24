import 'package:apni_dukaan/utils/constants/colors.dart';
import 'package:apni_dukaan/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../images/custom_circular_image.dart';

class UserProfileTile extends StatelessWidget {
  const UserProfileTile({
    super.key, this.onPressed,
  });

  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const ADCircularImage(
        imageUrl: BaseAppImages.user,
        padding: 0,
        width: 50,
        height: 50,
      ),
      title: Text(
        'Developer Suraj',
        style: Theme.of(context)
            .textTheme
            .headlineSmall!
            .apply(color: BaseAppColors.white),
      ),
      subtitle: Text(
        'er.surajcse@gmail.com',
        style: Theme.of(context)
            .textTheme
            .bodyMedium!
            .apply(color: BaseAppColors.white),
      ),
      trailing: IconButton(
        onPressed: onPressed,
        icon: const Icon(
          Iconsax.edit,
          color: BaseAppColors.white,
        ),
      ),
    );
  }
}
