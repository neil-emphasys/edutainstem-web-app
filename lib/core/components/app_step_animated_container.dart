import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class AppStepAnimatedContent extends StatelessWidget {
  final bool isGoingForward;
  final Widget child;
  final dynamic childKey;

  const AppStepAnimatedContent({
    super.key,
    required this.isGoingForward,
    required this.child,
    this.childKey,
  });

  @override
  Widget build(BuildContext context) {
    return isGoingForward
        ? SlideInRight(
            key: childKey ?? UniqueKey(),
            from: 15,
            duration: const Duration(milliseconds: 500),
            child: FadeIn(key: childKey ?? UniqueKey(), child: child),
          )
        : SlideInLeft(
            key: childKey ?? UniqueKey(),
            from: 15,
            duration: const Duration(milliseconds: 500),
            child: FadeIn(key: childKey ?? UniqueKey(), child: child),
          );

    /* return AnimatedSwitcher(
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
    ); */
  }
}
