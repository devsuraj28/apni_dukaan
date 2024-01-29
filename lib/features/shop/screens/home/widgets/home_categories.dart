import 'package:apni_dukaan/common/widgets/image_text_widget/vertical_image_texts.dart';
import 'package:apni_dukaan/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';

class ADHomeCategories extends StatelessWidget {
  const ADHomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (_, index) {
          return ADVerticalImageText(
            text: 'Shoes',
            image: BaseAppImages.shoeIcon,
            onTap: () {},
          );
        },
      ),
    );
  }
}
