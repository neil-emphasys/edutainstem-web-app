// This switch is inspired by https://pub.dev/packages/load_switch

import 'dart:async';

import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppSwitch extends StatefulWidget {
  const AppSwitch({
    required this.currentValue,
    this.isLoading = false,
    this.onChanged,
    super.key,
  });

  final bool currentValue;
  final bool isLoading;
  final FutureOr<void> Function(bool)? onChanged;

  @override
  State<AppSwitch> createState() => _AppSwitchState();
}

class _AppSwitchState extends State<AppSwitch> {
  bool value = false;

  @override
  Widget build(BuildContext context) {
    final height = 20.h;
    const borderWidth = 5.0;
    return CustomAnimatedToggleSwitch<bool>(
      height: height,
      loading: widget.isLoading,
      indicatorSize: Size.square(height),
      current: widget.currentValue,
      values: const [false, true],
      onChanged: widget.onChanged,
      animationDuration: const Duration(milliseconds: 350),
      iconArrangement: IconArrangement.overlap,
      spacing: -16.0,
      wrapperBuilder: (context, global, child) => DecoratedBox(
        decoration: BoxDecoration(
          color: Color.lerp(
            Color.lerp(Colors.red, Colors.green, global.position),
            Colors.grey,
            global.loadingAnimationValue,
          ),
          borderRadius: BorderRadius.all(Radius.circular(height / 2)),
        ),
        child: child,
      ),
      foregroundIndicatorBuilder: (context, global) {
        return Stack(
          fit: StackFit.expand,
          children: [
            const Padding(
              padding: EdgeInsets.all(borderWidth),
              child: DecoratedBox(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(borderWidth / 2),
              child: CircularProgressIndicator(
                strokeWidth: borderWidth,
                color: Colors.blue.withValues(
                  alpha: global.loadingAnimationValue,
                ),
              ),
            ),
          ],
        );
      },
      iconBuilder: (context, local, global) => const SizedBox(),
    );
  }
}
