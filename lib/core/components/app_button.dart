/* import 'package:auto_size_text/auto_size_text.dart';
import 'package:edutainstem/core/gen/colors.gen.dart';
import 'package:edutainstem/styles/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mesh_gradient/mesh_gradient.dart';

final _textStyle = AppTextStyles.getStyle(AppTextStyle.bodySmall).copyWith(
  color: AppColors.white,
  letterSpacing: 0.8.sp,
  fontWeight: FontWeight.bold,
);

class AppButton extends StatelessWidget {
  const AppButton({
    required this.title,
    this.onPressed,
    this.height,
    this.width,
    this.backgroundColor = AppColors.primary,
    this.foregroundColor = AppColors.white,
    this.radius,
    this.padding,
    this.textStyle,
    this.hasIcon = false,
    this.buttonIconSpacing,
    this.icon,
    this.visualDensity,
    this.buttonStyle,
    this.useAnimatedGradient = false,
    this.wrapButtonContent = false,
    this.fitContent = false,
    super.key,
  });

  final String title;
  final Function()? onPressed;
  final double? height;
  final double? width;
  final Color backgroundColor;
  final Color foregroundColor;
  final BorderRadiusGeometry? radius;
  final EdgeInsetsGeometry? padding;
  final TextStyle? textStyle;
  final bool hasIcon;
  final double? buttonIconSpacing;
  final Widget? icon;
  final VisualDensity? visualDensity;
  final ButtonStyle? buttonStyle;
  final bool useAnimatedGradient;
  final bool wrapButtonContent;
  final bool fitContent;

  static TextStyle get getDefaultTextStyle => _textStyle;

  factory AppButton.text({
    required String title,
    Function()? onPressed,
    double? height,
    double? width,
    Color backgroundColor = AppColors.primary,
    Color foregroundColor = AppColors.white,
    BorderRadiusGeometry? radius,
    EdgeInsetsGeometry? padding,
    TextStyle? textStyle,
    bool hasIcon = false,
    double? buttonIconSpacing,
    Widget? icon,
    VisualDensity? visualDensity,
    ButtonStyle? buttonStyle,
    bool useAnimatedGradient = false,
  }) {
    return AppButton(
      title: title,
      onPressed: onPressed,
      height: height,
      width: width,
      radius: radius,
      padding: padding,
      textStyle:
          textStyle ?? _textStyle.copyWith(color: AppColors.gray.shade100),
      backgroundColor: Colors.transparent,
      foregroundColor: AppColors.primary,
      hasIcon: hasIcon,
      buttonIconSpacing: buttonIconSpacing,
      icon: icon,
      visualDensity: visualDensity,
      /* buttonStyle: TextButton.styleFrom(
        side: const BorderSide(color: AppColors.primary),
        shape: RoundedRectangleBorder(
          borderRadius: radius ?? BorderRadius.circular(40.r),
        ),
        padding:
            padding ?? EdgeInsets.symmetric(horizontal: 6.w, vertical: 6.w),
      ), */
    );
  }

  @override
  Widget build(BuildContext context) {
    final defaultTextStyle = _textStyle;

    final BorderRadiusGeometry effectiveRadius =
        radius ?? BorderRadius.circular(40.r);

    final alpha = 50;

    final contents = [
      if (hasIcon)
        Row(
          children: [
            icon ??
                const Icon(
                  Icons.chevron_right_rounded,
                  size: 28,
                  color: AppColors.secondary,
                ),
            SizedBox(width: buttonIconSpacing ?? 0.w),
          ],
        ),
      if (title.isNotEmpty)
        AutoSizeText(
          maxLines: 2,
          wrapWords: false,
          title.toUpperCase(),
          textAlign: TextAlign.center,
          style: textStyle ?? defaultTextStyle,
        ),
    ];

    final buttonContent = TextButton(
      onPressed: onPressed,
      style:
          buttonStyle ??
          TextButton.styleFrom(
            elevation: 0,
            visualDensity: visualDensity,
            backgroundColor: useAnimatedGradient
                ? Colors.transparent
                : backgroundColor /* ?? AppColors.gray.shade50 */,
            foregroundColor: foregroundColor,
            shadowColor: Colors.transparent,
            shape: RoundedRectangleBorder(borderRadius: effectiveRadius),
            padding:
                padding ?? EdgeInsets.symmetric(horizontal: 6.w, vertical: 6.w),
          ),
      child: wrapButtonContent
          ? Wrap(
              // mainAxisSize: MainAxisSize.max,
              // mainAxisAlignment: MainAxisAlignment.center,
              alignment: WrapAlignment.center,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: contents,
            )
          : Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: contents,
            ),
    );

    if (!useAnimatedGradient) {
      return SizedBox(
        height: height,
        width: width ?? ((fitContent) ? null : double.infinity),
        child: buttonContent,
      );
    }

    return SizedBox(
      height: height,
      width: width ?? ((fitContent) ? null : double.infinity),
      child: ClipRRect(
        borderRadius: effectiveRadius,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned.fill(
              child: AnimatedMeshGradient(
                colors: [
                  const Color(0XFF189DCF).withAlpha(alpha),
                  const Color(0XFFDE2C60).withAlpha(alpha),
                  const Color(0XFFEB7A36).withAlpha(alpha),
                  const Color(0XFFD8C74A).withAlpha(alpha),
                ],
                options: AnimatedMeshGradientOptions(speed: 0.01),
              ),
            ),
            buttonContent,
          ],
        ),
      ),
    );
  }
}
 */

import 'package:auto_size_text/auto_size_text.dart';
import 'package:edutainstem/core/gen/colors.gen.dart';
import 'package:edutainstem/styles/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mesh_gradient/mesh_gradient.dart';

final _textStyle = AppTextStyles.getStyle(AppTextStyle.buttonText).copyWith(
  fontSize: 2.5.sp,
  color: AppColors.white,
  letterSpacing: 0.8.sp,
  // fontWeight: FontWeight.bold,
);

class AppButton extends StatelessWidget {
  const AppButton({
    required this.title,
    this.onPressed,
    this.height,
    this.width,
    this.backgroundColor = AppColors.primary,
    this.foregroundColor = AppColors.white,
    this.radius,
    this.padding,
    this.textStyle,
    this.hasIcon = false,
    this.buttonIconSpacing,
    this.icon,
    this.visualDensity,
    this.buttonStyle,
    this.useAnimatedGradient = false,
    this.wrapButtonContent = false,
    this.fitContent = false,
    super.key,
  });

  final String title;
  final Function()? onPressed;
  final double? height;
  final double? width;
  final Color backgroundColor;
  final Color foregroundColor;
  final BorderRadiusGeometry? radius;
  final EdgeInsetsGeometry? padding;
  final TextStyle? textStyle;
  final bool hasIcon;
  final double? buttonIconSpacing;
  final Widget? icon;
  final VisualDensity? visualDensity;
  final ButtonStyle? buttonStyle;
  final bool useAnimatedGradient;
  final bool wrapButtonContent;
  final bool fitContent;

  static TextStyle get getDefaultTextStyle => _textStyle;

  factory AppButton.text({
    required String title,
    Function()? onPressed,
    double? height,
    double? width,
    Color backgroundColor = AppColors.primary,
    Color foregroundColor = AppColors.white,
    BorderRadiusGeometry? radius,
    EdgeInsetsGeometry? padding,
    TextStyle? textStyle,
    bool hasIcon = false,
    double? buttonIconSpacing,
    Widget? icon,
    VisualDensity? visualDensity,
    ButtonStyle? buttonStyle,
    bool useAnimatedGradient = false,
  }) {
    return AppButton(
      title: title,
      onPressed: onPressed,
      height: height,
      width: width,
      radius: radius,
      padding: padding,
      textStyle:
          textStyle ?? _textStyle.copyWith(color: AppColors.gray.shade100),
      backgroundColor: Colors.transparent,
      foregroundColor: AppColors.primary,
      hasIcon: hasIcon,
      buttonIconSpacing: buttonIconSpacing,
      icon: icon,
      visualDensity: visualDensity,
    );
  }

  @override
  Widget build(BuildContext context) {
    final defaultTextStyle = _textStyle;
    final BorderRadiusGeometry effectiveRadius =
        radius ?? BorderRadius.circular(40.r);
    final alpha = 50;

    final contents = [
      if (hasIcon)
        Row(
          mainAxisSize: MainAxisSize.min, // ★ keep compact
          children: [
            icon ??
                const Icon(
                  Icons.chevron_right_rounded,
                  size: 28,
                  color: AppColors.secondary,
                ),
            SizedBox(width: buttonIconSpacing ?? 0.w),
          ],
        ),
      if (title.isNotEmpty)
        AutoSizeText(
          maxLines: 2,
          wrapWords: false,
          title.toUpperCase(),
          textAlign: TextAlign.center,
          style: textStyle ?? defaultTextStyle,
        ),
    ];

    final buttonContent = TextButton(
      onPressed: onPressed,
      style:
          (buttonStyle ??
                  TextButton.styleFrom(
                    elevation: 0,
                    visualDensity: visualDensity,
                    backgroundColor: useAnimatedGradient
                        ? Colors.transparent
                        : backgroundColor,
                    foregroundColor: foregroundColor,
                    shadowColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      borderRadius: effectiveRadius,
                    ),
                    padding:
                        padding ??
                        EdgeInsets.symmetric(horizontal: 6.w, vertical: 6.w),

                    // ★ Make the button itself shrink-wrap if fitContent
                    minimumSize: fitContent ? Size.zero : null,
                    tapTargetSize: fitContent
                        ? MaterialTapTargetSize.shrinkWrap
                        : MaterialTapTargetSize.padded,
                    disabledBackgroundColor: AppColors.gray,
                  ))
              // ★ Ensure styleFrom isn’t overridden by a fixedSize from external ButtonStyle
              .merge(
                ButtonStyle(
                  minimumSize: fitContent
                      ? const WidgetStatePropertyAll<Size>(Size.zero)
                      : null,
                  tapTargetSize: fitContent
                      ? MaterialTapTargetSize.shrinkWrap
                      : null,
                ),
              ),
      child: wrapButtonContent
          ? Wrap(
              alignment: WrapAlignment.center,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: contents,
            )
          : Row(
              mainAxisSize: MainAxisSize.min, // ★ critical for shrink
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: contents,
            ),
    );

    // ★ Helper to wrap child so parent also shrink-wraps when fitContent=true
    Widget wrapSized(Widget child) {
      if (fitContent) {
        // If a fixed height is requested, keep height but let width hug content.
        if (height != null) {
          return ConstrainedBox(
            constraints: BoxConstraints.tightFor(height: height),
            child: Align(
              alignment: Alignment.centerLeft,
              widthFactor: 1, // makes width = child width
              child: child,
            ),
          );
        }
        // No fixed height: fully hug child
        return Align(
          alignment: Alignment.centerLeft,
          widthFactor: 1,
          child: child,
        );
      }

      // Default: expand horizontally unless width explicitly provided
      return SizedBox(
        height: height,
        width: width ?? double.infinity,
        child: child,
      );
    }

    if (!useAnimatedGradient) {
      return wrapSized(buttonContent);
    }

    // Animated gradient variant
    return wrapSized(
      SizedBox(
        width: double.infinity,
        child: ClipRRect(
          borderRadius: effectiveRadius,
          child: Stack(
            alignment: Alignment.center,
            children: [
              // The gradient fills whatever size wrapSized decided
              Positioned.fill(
                child: AnimatedMeshGradient(
                  colors: [
                    const Color(0XFF189DCF).withAlpha(alpha),
                    const Color(0XFFDE2C60).withAlpha(alpha),
                    const Color(0XFFEB7A36).withAlpha(alpha),
                    const Color(0XFFD8C74A).withAlpha(alpha),
                  ],
                  options: AnimatedMeshGradientOptions(speed: 0.01),
                ),
              ),
              buttonContent,
            ],
          ),
        ),
      ),
    );
  }
}
