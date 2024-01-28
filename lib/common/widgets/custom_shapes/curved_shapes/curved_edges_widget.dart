import 'package:flutter/material.dart';

import 'curved_edges.dart';

class ADCurvedEdgesWidget extends StatelessWidget {
  const ADCurvedEdgesWidget({
    super.key,
    this.child,
  });

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: ADCurvedEdges(),
      child: child,
    );
  }
}