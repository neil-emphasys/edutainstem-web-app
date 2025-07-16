import 'package:edutainstem/core/components/app_button.dart';
import 'package:edutainstem/core/components/app_glass_container.dart';
import 'package:edutainstem/core/components/app_tilt_widget.dart';
import 'package:edutainstem/core/gen/colors.gen.dart';
import 'package:edutainstem/presentation/widgets/lesson_widgets/lesson_upload_dialog_widget.dart';
import 'package:edutainstem/styles/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LessonsScreen extends StatelessWidget {
  static const String routeName = '/main-dashboard/lessons';

  const LessonsScreen({super.key});

  void _showUploadNewLessonDialog(BuildContext context) {
    showDialog(
      context: context,
      // barrierDismissible: false, // dialog can't be dismissed by tapping outside
      builder: (BuildContext context) {
        return const LessonUploadDialogWidget();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 16.w, bottom: 8.w),
      child: Column(
        // padding: EdgeInsets.symmetric(vertical: 16.w),
        children: [
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Lesson Actions',
                  style: AppTextStyles.getStyle(
                    AppTextStyle.bodySmall,
                    modifier: (base) => base.copyWith(
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.5.sp,
                    ),
                  ),
                ),
                SizedBox(height: 2.w),
                const Divider(color: AppColors.white),
                SizedBox(height: 2.w),
                Expanded(
                  child: Row(
                    children: [
                      AppTiltWidget(
                        child: AppGlassContainer(
                          width: 40.w,
                          child: Padding(
                            padding: EdgeInsets.only(top: 2.w),
                            child: Column(
                              children: [
                                Text(
                                  'Upload A New Lesson'.toUpperCase(),
                                  textAlign: TextAlign.center,
                                  style: AppTextStyles.getStyle(
                                    AppTextStyle.bodySmall,
                                    modifier: (base) => base.copyWith(
                                      color: AppColors.primary,
                                      letterSpacing: 0.5.sp,
                                    ),
                                  ),
                                ),
                                const Spacer(),
                                AppButton(
                                  title: 'Upload',
                                  useAnimatedGradient: false,
                                  hasIcon: false,
                                  onPressed: () =>
                                      _showUploadNewLessonDialog(context),
                                  buttonStyle: TextButton.styleFrom(
                                    elevation: 0,
                                    visualDensity: VisualDensity.compact,
                                    backgroundColor: AppColors.primary,
                                    foregroundColor: AppColors.primary,
                                    shadowColor: Colors.transparent,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(40.r),
                                    ),
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 0.w,
                                      vertical: 3.w,
                                    ),
                                  ),
                                  textStyle:
                                      AppTextStyles.getStyle(
                                        AppTextStyle.overline,
                                      ).copyWith(
                                        color: AppColors.white,
                                        letterSpacing: 0.6.sp,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 8.w),
                      AppTiltWidget(
                        child: AppGlassContainer(
                          width: 40.w,
                          child: Padding(
                            padding: EdgeInsets.only(top: 2.w),
                            child: Column(
                              children: [
                                Text(
                                  'Tagging / Categorization'.toUpperCase(),
                                  textAlign: TextAlign.center,
                                  style: AppTextStyles.getStyle(
                                    AppTextStyle.bodySmall,
                                    modifier: (base) => base.copyWith(
                                      color: AppColors.primary,
                                      letterSpacing: 0.5.sp,
                                    ),
                                  ),
                                ),
                                const Spacer(),
                                AppButton(
                                  title: 'Show Tags',
                                  useAnimatedGradient: false,
                                  hasIcon: false,
                                  onPressed: () {},
                                  buttonStyle: TextButton.styleFrom(
                                    elevation: 0,
                                    visualDensity: VisualDensity.compact,
                                    backgroundColor: AppColors.primary,
                                    foregroundColor: AppColors.primary,
                                    shadowColor: Colors.transparent,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(40.r),
                                    ),
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 0.w,
                                      vertical: 3.w,
                                    ),
                                  ),
                                  textStyle:
                                      AppTextStyles.getStyle(
                                        AppTextStyle.overline,
                                      ).copyWith(
                                        color: AppColors.white,
                                        letterSpacing: 0.6.sp,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Spacer(flex: 3),
          /* SizedBox(height: 10.w),
          Expanded(
            flex: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Created Rooms',
                  style: AppTextStyles.getStyle(
                    AppTextStyle.bodySmall,
                    modifier: (base) => base.copyWith(
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.5.sp,
                    ),
                  ),
                ),
                SizedBox(height: 2.w),
                const Divider(color: AppColors.white),
                SizedBox(height: 2.w),
                Expanded(child: RoomTableWidget()),
              ],
            ),
          ),*/
        ],
      ),
    );
  }
}
