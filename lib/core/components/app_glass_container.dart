import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:glass_kit/glass_kit.dart';

class AppGlassContainer extends StatelessWidget {
  const AppGlassContainer({
    required this.child,
    this.height,
    this.width,
    this.shape,
    this.margin,
    this.padding,
    super.key,
  });

  final Widget child;
  final double? height;
  final double? width;
  final BoxShape? shape;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return GlassContainer.frostedGlass(
      frostedOpacity: 1,
      height: height,
      width: width,
      shape: shape ?? BoxShape.rectangle,
      padding: padding ?? EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.w),
      margin: margin,
      borderColor: Colors.transparent,
      borderRadius: (shape != null && shape == BoxShape.circle)
          ? null
          : BorderRadius.circular(8.r),
      // frostedOpacity: 0,
      blur: 50,
      elevation: 100,
      child: child,
    ) /* BlurryContainer.square(
      dimension: 200,
      blur: 1,
      elevation: 1,
      color: Colors.transparent,
      padding: EdgeInsets.all(16.r),
      borderRadius: const BorderRadius.all(Radius.circular(20)),
      shadowColor: AppColors.gray.withAlpha(15),
      child: child,
    ) */;
  }
}
