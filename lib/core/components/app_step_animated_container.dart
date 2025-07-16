import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class StepAnimatedContent extends StatelessWidget {
  final bool isGoingForward;
  final Widget child;

  const StepAnimatedContent({
    super.key,
    required this.isGoingForward,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 100),
      transitionBuilder: (child, animation) {
        return FadeTransition(
          opacity: animation,
          child: isGoingForward
              ? SlideInRight(
                  key: const ValueKey('right'),
                  from: 10,
                  duration: const Duration(milliseconds: 300),
                  child: child,
                )
              : SlideInLeft(
                  key: const ValueKey('left'),
                  from: 10,
                  duration: const Duration(milliseconds: 300),
                  child: child,
                ),
        );
      },
      child: child,
    );
  }
}
