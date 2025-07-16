import 'package:edutainstem/core/components/app_glass_container.dart';
import 'package:edutainstem/core/gen/colors.gen.dart';
import 'package:edutainstem/styles/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LessonUploadDialogWidget extends StatelessWidget {
  const LessonUploadDialogWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        elevation: 0,
        backgroundColor: Colors.transparent,
        child: AppGlassContainer(
          // color: Colors.red,
          width: 0.3.sw,
          padding: EdgeInsets.all(16.r),
          child: ListView(
            shrinkWrap: true,
            // mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Upload Lesson'.toUpperCase(),
                style: AppTextStyles.getStyle(
                  AppTextStyle.headline6,
                  modifier: (base) => base.copyWith(
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.5.sp,
                  ),
                ),
              ),
              SizedBox(height: 2.w),
              const Divider(color: AppColors.white),
              SizedBox(height: 2.w),
            ],
          ),
        ),
      ),
    );
  }
}
