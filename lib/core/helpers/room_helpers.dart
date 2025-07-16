import 'package:easy_stepper/easy_stepper.dart';
import 'package:edutainstem/core/gen/assets.gen.dart';
import 'package:edutainstem/domain/models/steps/step_model.dart';
import 'package:edutainstem/styles/app_text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

extension StepModelListHelper on List<StepModel> {
  List<EasyStep> generateSteps({
    required int reachedStep,
    required Set<int> reachedSteps,
  }) {
    return List<EasyStep>.generate(
      length,
      (index) => EasyStep(
        enabled: _isStepEnabled(index: index, reachedStep: reachedStep),
        customStep: _isStepFinished(index: index, reachedStep: reachedStep)
            ? Image.asset(
                Assets.icons.png.checkMark.path,
                width: 3.sp,
                fit: BoxFit.contain,
              )
            : Text(
                '${index + 1}',
                style: AppTextStyles.getStyle(
                  AppTextStyle.bodySmall,
                  // modifier: (base) => base.copyWith(fontWeight: FontWeight.bold),
                ),
              ),
        customTitle: Text(
          this[index].title,
          textAlign: TextAlign.center,
          style: AppTextStyles.getStyle(
            AppTextStyle.overline,
            modifier: (base) => base.copyWith(letterSpacing: 0.1.sp),
          ),
        ),
      ),
    );
  }
}

bool _isStepEnabled({required int index, required int reachedStep}) {
  return index <= reachedStep;
}

bool _isStepFinished({required int index, required int reachedStep}) {
  return index < reachedStep;
}
