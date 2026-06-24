import 'package:apni_dukaan/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:apni_dukaan/utils/constants/colors.dart';
import 'package:apni_dukaan/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class ADChoiceChip extends StatelessWidget {
  const ADChoiceChip({
    super.key,
    required this.text,
    required this.selected,
    this.onSelected,
  });

  final String text;
  final bool selected;
  final void Function(bool)? onSelected;

  @override
  Widget build(BuildContext context) {
    final isColor = BaseAppHelperFunctions.getColor(text);
    return Theme(
      data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
      child: ChoiceChip(
        label: isColor != null ? const SizedBox() : Text(text),
        selected: selected,
        onSelected: onSelected,
        labelStyle: TextStyle(color: selected ? BaseAppColors.white : null),
        avatar: isColor != null
            ? ADCircularContainer(
                backGroundColor: isColor, width: 50, height: 50)
            : null,
        shape: isColor != null ? const CircleBorder() : null,
        labelPadding: isColor != null ? const EdgeInsets.all(0) : null,
        padding: isColor != null ? const EdgeInsets.all(0) : null,
        backgroundColor: isColor,
      ),
    );
  }
}
