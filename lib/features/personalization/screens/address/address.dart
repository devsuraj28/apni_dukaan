import 'package:apni_dukaan/common/widgets/appbar/custom_appbar.dart';
import 'package:apni_dukaan/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:apni_dukaan/features/personalization/screens/address/add_new_address.dart';
import 'package:apni_dukaan/utils/constants/colors.dart';
import 'package:apni_dukaan/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import 'widgets/single_address.dart';

class UserAddressScreen extends StatelessWidget {
  const UserAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.to(() => const AddNewAddressScreen()),
        backgroundColor: BaseAppColors.primary,
        child: const Icon(Iconsax.add, color: BaseAppColors.white),
      ),
      appBar: ADCustomAppBar(
        showBackArrow: true,
        title: Text(
          'Addresses',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(BaseAppSizes.defaultSpace),
          child: Column(
            children: [
              ADSingleAddress(selectedAddress: false),
              ADSingleAddress(selectedAddress: true),
              ADSingleAddress(selectedAddress: false),
              ADSingleAddress(selectedAddress: false),
              ADSingleAddress(selectedAddress: false),
            ],
          ),
        ),
      ),
    );
  }
}
