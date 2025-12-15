// toastification_service.dart
import 'package:edutainstem/styles/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:toastification/toastification.dart';

class ToastificationService {
  ToastificationService._();
  static final ToastificationService I = ToastificationService._();

  // Keep track of last “tag” to avoid duplicates if desired
  String? _lastTag;
  DateTime? _lastShownAt;

  /// Call this if you want to prevent rapid duplicate toasts with the same tag
  bool _shouldSkip(String? tag, Duration dedupe) {
    if (tag == null) return false;
    final now = DateTime.now();
    final wasRecent =
        _lastTag == tag &&
        _lastShownAt != null &&
        now.difference(_lastShownAt!) < dedupe;
    if (!wasRecent) {
      _lastTag = tag;
      _lastShownAt = now;
    }
    return wasRecent;
  }

  /// The underlying show method
  ToastificationItem show({
    String? title,
    String? description,
    ToastificationType type = ToastificationType.info,
    ToastificationStyle style = ToastificationStyle.minimal,
    AlignmentGeometry alignment = Alignment.topRight,
    Duration autoClose = const Duration(milliseconds: 2600),
    bool showProgressBar = false,
    EdgeInsets margin = const EdgeInsets.symmetric(
      horizontal: 16,
      vertical: 12,
    ),
    EdgeInsets padding = const EdgeInsets.symmetric(
      horizontal: 14,
      vertical: 12,
    ),
    double borderRadius = 14,
    IconData? icon,
    Color? backgroundColor,
    Color? foregroundColor,
    String? tag,
    Duration dedupeWindow = const Duration(milliseconds: 900),
    BuildContext? context,
  }) {
    /* if (_shouldSkip(tag, dedupeWindow)) {
      // Return a dummy, no-op item to keep call-sites simple.
      return ToastificationItem();
    } */

    final ctx = context;
    assert(
      ctx != null,
      'ToastificationService: No context available. Provide a context or set navigatorKey on MaterialApp.',
    );

    return toastification.show(
      context: ctx,
      type: type,
      style: style,
      title: title != null
          ? Text(
              title,
              style: AppTextStyles.getStyle(
                AppTextStyle.subtitle2,
                modifier: (base) => base.copyWith(
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.3.sp,
                ),
              ),
            )
          : null,
      description: description != null
          ? Text(
              description,
              style: AppTextStyles.getStyle(
                AppTextStyle.bodySmall,
                modifier: (base) => base.copyWith(letterSpacing: 0.3.sp),
              ),
            )
          : null,
      autoCloseDuration: autoClose,
      showProgressBar: showProgressBar,
      alignment: alignment,
      margin: margin,
      padding: padding,
      borderRadius: BorderRadius.circular(borderRadius),
      primaryColor: backgroundColor,
      foregroundColor: foregroundColor,
      animationDuration: Durations.medium1,
      icon: icon != null ? Icon(icon) : null,
      // You can add animationBuilder/closeButtonBuilder here if you like.
    );
  }

  // --- Convenience helpers --------------------------------------------------

  ToastificationItem success(
    String message, {
    String? title,
    String? tag,
    Duration autoClose = const Duration(milliseconds: 2400),
    BuildContext? context,
  }) {
    return show(
      title: title,
      description: message,
      type: ToastificationType.success,
      style: ToastificationStyle.fillColored,
      autoClose: autoClose,
      tag: tag,
      context: context,
      icon: Icons.check_circle_rounded,
    );
  }

  ToastificationItem error(
    String message, {
    String? title,
    String? tag,
    Duration autoClose = const Duration(milliseconds: 3200),
    BuildContext? context,
  }) {
    return show(
      title: title ?? 'Something went wrong',
      description: message,
      type: ToastificationType.error,
      style: ToastificationStyle.flatColored,
      autoClose: autoClose,
      tag: tag,
      context: context,
      icon: Icons.error_rounded,
    );
  }

  ToastificationItem warning(
    String message, {
    String? title,
    String? tag,
    Duration autoClose = const Duration(milliseconds: 3000),
    BuildContext? context,
  }) {
    return show(
      title: title ?? 'Heads up',
      description: message,
      type: ToastificationType.warning,
      style: ToastificationStyle.flat,
      autoClose: autoClose,
      tag: tag,
      context: context,
      icon: Icons.warning_amber_rounded,
    );
  }

  ToastificationItem info(
    String message, {
    String? title,
    String? tag,
    Duration autoClose = const Duration(milliseconds: 2600),
    BuildContext? context,
  }) {
    return show(
      title: title,
      description: message,
      type: ToastificationType.info,
      style: ToastificationStyle.minimal,
      autoClose: autoClose,
      tag: tag,
      context: context,
      icon: Icons.info_rounded,
    );
  }

  /* /// Returns the toast item; call `close()` later when your async task finishes.
  ToastificationItem loading(
    String message, {
    String? title,
    String? tag,
    BuildContext? context,
  }) {
    return show(
      title: title ?? 'Please wait…',
      description: message,
      type: ToastificationType.custom('loading', color, icon),
      style: ToastificationStyle.fillColored,
      autoClose: const Duration(days: 1), // essentially persistent
      tag: tag,
      context: context,
      showProgressBar: true,
      icon: Icons.hourglass_top_rounded,
    );
  } */
}
