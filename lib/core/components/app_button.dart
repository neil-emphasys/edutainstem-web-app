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
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
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
            Text(
              title.toUpperCase(),
              textAlign: TextAlign.center,
              style: textStyle ?? defaultTextStyle,
            ),
        ],
      ),
    );

    if (!useAnimatedGradient) {
      return SizedBox(
        height: height,
        width: width ?? double.infinity,
        child: buttonContent,
      );
    }

    return SizedBox(
      height: height,
      width: width ?? double.infinity,
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
