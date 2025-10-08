import 'package:edutainstem/core/components/app_button.dart';
import 'package:edutainstem/core/constants/constants.dart';
import 'package:edutainstem/core/gen/assets.gen.dart';
import 'package:edutainstem/core/gen/colors.gen.dart';
import 'package:edutainstem/styles/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:giffy_dialog/giffy_dialog.dart';
import 'package:go_router/go_router.dart';

class DialogService {
  Future<void> showGiffyDialog(
    BuildContext context, {
    required GiffyDialogType type,
    String title = '',
    String content = '',
    List<Widget> actions = const [],
    String? customAnimationAssetPath,
    bool isDismissible = false,
  }) async {
    // Determine the correct dialog type
    Widget dialog;

    final titleStyle = AppTextStyles.getStyle(
      AppTextStyle.bodyNormal,
      modifier: (base) => base.copyWith(
        fontSize: 12.sp,
        fontWeight: FontWeight.bold,
        letterSpacing: 0.5.sp,
        color: Colors.black,
      ),
    );

    final contentStyle = AppTextStyles.getStyle(AppTextStyle.bodySmall);

    Image imageWidget(String url) {
      return Image.network(url, height: 200, fit: BoxFit.cover);
    }

    Text titleWidget(String title) {
      return Text(title, style: titleStyle);
    }

    Text contentWidget(String content) {
      return Text(content, style: contentStyle);
    }

    switch (type) {
      case GiffyDialogType.question:
        dialog = GiffyBottomSheet.lottie(
          LottieBuilder.asset(Assets.lottie.question.path, fit: BoxFit.cover),
          giffyBuilder: (context, giffy) {
            return Container(
              height: 200.h,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.r),
                color: AppColors.primary.withAlpha(150),
                // boxShadow: AppConstants.defaultBoxShadow,
                border: AppConstants.defaultBorder,
              ),
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: SizedBox(height: 150.h, child: giffy),
              ),
            );
          },
          title: (title.isNotEmpty) ? titleWidget(title) : null,
          content: (content.isNotEmpty) ? contentWidget(content) : null,
          actions: (actions.isNotEmpty) ? actions : null,
        );
        break;
      case GiffyDialogType.info:
        dialog = GiffyBottomSheet.lottie(
          LottieBuilder.asset(
            customAnimationAssetPath ?? Assets.lottie.info.path,
            fit: BoxFit.cover,
          ),
          giffyBuilder: (context, giffy) {
            return Container(
              width: double.infinity,
              height: 200.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.r),
                color: AppColors.primary.withAlpha(150),
                // boxShadow: AppConstants.defaultBoxShadow,
                border: AppConstants.defaultBorder,
              ),
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: SizedBox(height: 170.h, child: giffy),
              ),
            );
          },
          title: (title.isNotEmpty) ? titleWidget(title) : null,
          content: (content.isNotEmpty) ? contentWidget(content) : null,
          actions: (actions.isNotEmpty) ? actions : null,
        );
        break;
      case GiffyDialogType.success:
        dialog = GiffyBottomSheet.lottie(
          LottieBuilder.asset(Assets.lottie.success.path, fit: BoxFit.cover),
          giffyBuilder: (context, giffy) {
            return Container(
              width: double.infinity,
              height: 200.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.r),
                color: AppColors.primary.withAlpha(150),
                // boxShadow: AppConstants.defaultBoxShadow,
                border: AppConstants.defaultBorder,
              ),
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: SizedBox(height: 190.h, child: giffy),
              ),
            );
          },
          title: (title.isNotEmpty) ? titleWidget(title) : null,
          content: (content.isNotEmpty) ? contentWidget(content) : null,
          actions: (actions.isNotEmpty) ? actions : null,
        );
        break;
      case GiffyDialogType.loading:
        dialog = GiffyBottomSheet.lottie(
          LottieBuilder.asset(Assets.lottie.loading.path, fit: BoxFit.cover),
          giffyBuilder: (context, giffy) {
            return Container(
              width: double.infinity,
              height: 200.h,
              padding: EdgeInsets.only(bottom: 30.h),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.r),
                color: AppColors.primary.withAlpha(150),
                // boxShadow: AppConstants.defaultBoxShadow,
                border: AppConstants.defaultBorder,
              ),
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: SizedBox(height: 170.h, child: giffy),
              ),
            );
          },
          title: (title.isNotEmpty) ? titleWidget(title) : null,
          content: (content.isNotEmpty) ? contentWidget(content) : null,
          actions: (actions.isNotEmpty) ? actions : null,
        );
        break;
      case GiffyDialogType.error:
        dialog = GiffyBottomSheet.lottie(
          LottieBuilder.asset(Assets.lottie.error.path, fit: BoxFit.cover),
          giffyBuilder: (context, giffy) {
            return Container(
              width: double.infinity,
              height: 160.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.r),
                color: AppColors.orange,
                // boxShadow: AppConstants.defaultBoxShadow,
                border: AppConstants.defaultBorder,
              ),
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: SizedBox(height: 100.h, child: giffy),
              ),
            );
          },
          title: (title.isNotEmpty) ? titleWidget(title) : null,
          content: (content.isNotEmpty) ? contentWidget(content) : null,
          // actions: (actions.isNotEmpty) ? actions : null,
          actions: [AppButton(title: 'Okay', onPressed: () => context.pop())],
          actionsPadding: EdgeInsets.only(
            left: 24.h,
            right: 24.h,
            bottom: 24.h,
            top: 24.h,
          ),
        );
        break;
    }

    // Show the dialog
    await showModalBottomSheet(
      context: context,
      clipBehavior: Clip.antiAlias,
      isScrollControlled: true,
      isDismissible: isDismissible,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16.r)),
      ),
      builder: (BuildContext context) =>
          SizedBox(width: double.infinity, child: dialog),
    );
  }
}

enum GiffyDialogType { question, info, success, loading, error }
