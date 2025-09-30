import 'package:easy_stepper/easy_stepper.dart';
import 'package:edutainstem/core/gen/colors.gen.dart';
import 'package:edutainstem/core/helpers/room_helpers.dart';
import 'package:edutainstem/domain/models/steps/step_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppEasyStepper extends StatefulWidget {
  final List<StepModel> steps;
  final int reachedStep;
  final double? lineLength;

  const AppEasyStepper({
    required this.steps,
    required this.reachedStep,
    this.lineLength,
    super.key,
  });

  @override
  State<AppEasyStepper> createState() => _AppEasyStepperState();
}

class _AppEasyStepperState extends State<AppEasyStepper> {
  // int activeStep = 0;
  // int activeStep2 = 1;
  // int reachedStep = 1;
  // int upperBound = 5;
  // double progress = 0.2;
  Set<int> reachedSteps = <int>{};

  @override
  Widget build(BuildContext context) {
    return EasyStepper(
      activeStep: widget.reachedStep,
      maxReachedStep: widget.reachedStep,
      lineStyle: LineStyle(
        lineLength: widget.lineLength ?? 16.w,
        lineSpace: 0,
        lineType: LineType.normal,
        unreachedLineColor: AppColors.gray.withOpacity(0.5),
        finishedLineColor: AppColors.primary,
        activeLineColor: AppColors.gray.withOpacity(0.5),
      ),
      activeStepBorderColor: AppColors.primary,
      activeStepIconColor: AppColors.primary,
      activeStepTextColor: AppColors.primary,
      activeStepBackgroundColor: AppColors.primary.shade50,
      activeStepBorderType: BorderType.normal,
      unreachedStepBackgroundColor: AppColors.gray.shade100,
      unreachedStepBorderColor: AppColors.gray.shade100,
      unreachedStepBorderType: BorderType.normal,
      defaultStepBorderType: BorderType.normal,
      finishedStepBackgroundColor: AppColors.white,
      finishedStepBorderColor: AppColors.primary,
      finishedStepBorderType: BorderType.normal,
      borderThickness: 2.r,
      internalPadding: 1.r,
      showLoadingAnimation: false,
      stepRadius: 16.r,
      steps: widget.steps.generateSteps(
        reachedStep: widget.reachedStep,
        reachedSteps: reachedSteps,
      ),
      /* [
        EasyStep(
          icon: const Icon(Icons.add_ic_call_outlined),
          finishIcon: const Icon(CupertinoIcons.check_mark),
          enabled: _allowTabStepping(0, StepEnabling.sequential),
          customStep: Text(
            '1',
            style: AppTextStyles.getStyle(
              AppTextStyle.bodySmall,
              // modifier: (base) => base.copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          customTitle: Text(
            'Details',
            textAlign: TextAlign.center,
            style: AppTextStyles.getStyle(
              AppTextStyle.overline,
              modifier: (base) => base.copyWith(letterSpacing: 0.1.sp),
            ),
          ),
        ),
        EasyStep(
          icon: const Icon(CupertinoIcons.info),
          title: 'Duration',
          enabled: _allowTabStepping(1, StepEnabling.sequential),
        ),
        EasyStep(
          icon: const Icon(CupertinoIcons.cart_fill_badge_plus),
          title: 'Tags',
          enabled: _allowTabStepping(2, StepEnabling.sequential),
        ),
      ], */
      // onStepReached: (index) => setState(() {
      //   activeStep2 = index;
      // }),
      enableStepTapping: false,
    );
  }

  /* bool _allowTabStepping(int index, StepEnabling enabling) {
    return enabling == StepEnabling.sequential
        ? index <= reachedStep
        : reachedSteps.contains(index);
  }

  /// Returns the next button.
  Widget _nextStep(StepEnabling enabling) {
    return IconButton(
      onPressed: () {
        if (activeStep2 < upperBound) {
          setState(() {
            if (enabling == StepEnabling.sequential) {
              ++activeStep2;
              if (reachedStep < activeStep2) {
                reachedStep = activeStep2;
              }
            } else {
              activeStep2 = reachedSteps.firstWhere(
                (element) => element > activeStep2,
              );
            }
          });
        }
      },
      icon: const Icon(Icons.arrow_forward_ios),
    );
  }

  /// Returns the previous button.
  Widget _previousStep(StepEnabling enabling) {
    return IconButton(
      onPressed: () {
        if (activeStep2 > 0) {
          setState(
            () => enabling == StepEnabling.sequential
                ? --activeStep2
                : activeStep2 = reachedSteps.lastWhere(
                    (element) => element < activeStep2,
                  ),
          );
        }
      },
      icon: const Icon(Icons.arrow_back_ios),
    );
  } */
}
