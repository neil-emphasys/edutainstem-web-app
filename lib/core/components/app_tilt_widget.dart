import 'dart:math';

import 'package:flutter/material.dart';
import 'package:motion/motion.dart';

class AppTiltWidget extends StatefulWidget {
  final Widget child;

  const AppTiltWidget({super.key, required this.child});

  @override
  State<AppTiltWidget> createState() => _AppTiltWidgetState();
}

class _AppTiltWidgetState extends State<AppTiltWidget> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      child: isHovered
          ? Motion.only(
              controller: MotionController(damping: 0.1, maxAngle: pi / 5),
              child: widget.child,
            )
          : widget.child,
    );
  }
}
