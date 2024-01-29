import 'package:apni_dukaan/common/widgets/custom_shapes/curved_shapes/curved_edges_widget.dart';
import 'package:apni_dukaan/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'circular_container.dart';

class ADPrimaryHeaderContainer extends StatelessWidget {
  const ADPrimaryHeaderContainer({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ADCurvedEdgesWidget(
      child: Container(
        color: BaseAppColors.primary,
        child: SizedBox(
          height: 380,

          ///If [Size.isFinite error occurred..] try to add some Widget like Container()...
          child: Stack(
            children: [
              ///Background Custom Shapes..
              Positioned(
                top: -100,
                right: -150,
                child: ADCircularContainer(
                  backGroundColor: BaseAppColors.textWhite.withOpacity(0.1),
                ),
              ),
              Positioned(
                top: 100,
                right: -200,
                child: ADCircularContainer(
                  backGroundColor: BaseAppColors.textWhite.withOpacity(0.1),
                ),
              ),
              child,
            ],
          ),
        ),
      ),
    );
  }
}
