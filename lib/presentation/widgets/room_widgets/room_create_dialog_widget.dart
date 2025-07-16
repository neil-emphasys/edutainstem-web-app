import 'package:edutainstem/application/rooms/room_create_bloc/room_create_bloc.dart';
import 'package:edutainstem/core/components/app_button.dart';
import 'package:edutainstem/core/components/app_easy_stepper.dart';
import 'package:edutainstem/core/components/app_step_animated_container.dart';
import 'package:edutainstem/core/components/app_text_form_field.dart';
import 'package:edutainstem/core/gen/assets.gen.dart';
import 'package:edutainstem/domain/models/steps/step_model.dart';
import 'package:edutainstem/styles/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class RoomCreateDialogWidget extends StatelessWidget {
  const RoomCreateDialogWidget({super.key});

  Widget buildStep(int currentStep) {
    switch (currentStep) {
      case 0:
        return const _FirstStepWidget();
      case 1:
        return const _SecondStepWidget();
      case 2:
        return const _ThirdStepWidget();
      default:
        return const SizedBox.shrink();
    }
  }

  @override
  Widget build(BuildContext context) {
    final blocInstance = RoomCreateBloc();

    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      elevation: 0,
      backgroundColor: Colors.white,
      child: BlocBuilder<RoomCreateBloc, RoomCreateState>(
        bloc: blocInstance,
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () => const SizedBox.shrink(),
            initial: (data) => Container(
              // color: Colors.red,
              // constraints: BoxConstraints(minHeight: 0.6.sh),
              width: 0.5.sw,
              padding: EdgeInsets.symmetric(vertical: 16.r, horizontal: 20.r),
              child: ListView(
                shrinkWrap: true,

                // mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          IconButton(
                            onPressed: () => context.pop(),
                            icon: Image.asset(
                              Assets.icons.png.goBack.path,
                              width: 4.w,
                            ),
                          ),
                          SizedBox(width: 4.w),
                          Text(
                            'Create a Room',
                            style: AppTextStyles.getStyle(
                              AppTextStyle.bodySmall,
                              modifier: (base) => base.copyWith(
                                fontWeight: FontWeight.bold,
                                letterSpacing: 0.3.sp,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      AppEasyStepper(
                        reachedStep: data.activeStep,
                        steps: const [
                          StepModel(title: 'Details'),
                          StepModel(title: 'Duration'),
                          StepModel(title: 'Tags'),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 2.w),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: SizedBox(
                      width: 0.35.sw,
                      child: StepAnimatedContent(
                        isGoingForward:
                            state.data.activeStep > state.data.previousStep,
                        child: buildStep(
                          state.data.activeStep,
                        ), // e.g. Step 1, 2, 3 widget
                      ),
                    ),
                  ),
                  SizedBox(height: 80.h),
                  Row(
                    children: [
                      const Spacer(),
                      if (state.data.activeStep > 0) ...[
                        AppButton.text(
                          width: 40.w,
                          title: 'Back',
                          onPressed: () => blocInstance.add(
                            const RoomCreateEvent.previousStep(),
                          ),
                          backgroundColor: Colors.transparent,
                        ),
                        SizedBox(width: 8.w),
                      ],
                      AppButton(
                        width: 56.w,
                        title: 'Next',
                        onPressed: () =>
                            blocInstance.add(const RoomCreateEvent.nextStep()),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class _FirstStepWidget extends StatelessWidget {
  const _FirstStepWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Step 1/3',
          style: AppTextStyles.getStyle(
            AppTextStyle.bodySmall,
            modifier: (base) => base.copyWith(
              // fontWeight: FontWeight.bold,
              letterSpacing: 0.3.sp,
            ),
          ),
        ),
        SizedBox(height: 4.h),
        Text(
          'Can you tell us what this room is all about?',
          style: AppTextStyles.getStyle(
            AppTextStyle.bodyNormal,
            modifier: (base) => base.copyWith(
              fontWeight: FontWeight.bold,
              letterSpacing: 0.3.sp,
            ),
          ),
        ),
        SizedBox(height: 2.h),
        Text(
          'Please fill in the details of this room below.',
          style: AppTextStyles.getStyle(
            AppTextStyle.overline,
            modifier: (base) => base.copyWith(
              // fontWeight: FontWeight.bold,
              letterSpacing: 0.3.sp,
            ),
          ),
        ),
        SizedBox(height: 24.h),
        AppTextFormField(
          fieldTitle: 'Title'.toUpperCase(),
          fieldType: AppTextFormFieldType.filled,
          isFieldTitleSeperated: true,
        ),
        SizedBox(height: 24.h),
        AppTextFormField(
          fieldTitle: 'Description'.toUpperCase(),
          fieldType: AppTextFormFieldType.filled,
          isFieldTitleSeperated: true,
          isMultiline: true,
        ),
      ],
    );
  }
}

class _ThirdStepWidget extends StatelessWidget {
  const _ThirdStepWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Step 3/3',
          style: AppTextStyles.getStyle(
            AppTextStyle.bodySmall,
            modifier: (base) => base.copyWith(
              // fontWeight: FontWeight.bold,
              letterSpacing: 0.3.sp,
            ),
          ),
        ),
        SizedBox(height: 4.h),
        Text(
          'Select the tags that we should consider of?',
          style: AppTextStyles.getStyle(
            AppTextStyle.bodyNormal,
            modifier: (base) => base.copyWith(
              fontWeight: FontWeight.bold,
              letterSpacing: 0.3.sp,
            ),
          ),
        ),
        SizedBox(height: 2.h),
        Text(
          'Please fill in the details of this room below.',
          style: AppTextStyles.getStyle(
            AppTextStyle.overline,
            modifier: (base) => base.copyWith(
              // fontWeight: FontWeight.bold,
              letterSpacing: 0.3.sp,
            ),
          ),
        ),
        SizedBox(height: 24.h),
        AppTextFormField(
          fieldTitle: 'Title'.toUpperCase(),
          fieldType: AppTextFormFieldType.filled,
          isFieldTitleSeperated: true,
        ),
        SizedBox(height: 24.h),
        AppTextFormField(
          fieldTitle: 'Description'.toUpperCase(),
          fieldType: AppTextFormFieldType.filled,
          isFieldTitleSeperated: true,
          isMultiline: true,
        ),
      ],
    );
  }
}

class _SecondStepWidget extends StatelessWidget {
  const _SecondStepWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Step 2/3',
          style: AppTextStyles.getStyle(
            AppTextStyle.bodySmall,
            modifier: (base) => base.copyWith(
              // fontWeight: FontWeight.bold,
              letterSpacing: 0.3.sp,
            ),
          ),
        ),
        SizedBox(height: 4.h),
        Text(
          'Can you approximately tell us how long the lesson should last?',
          style: AppTextStyles.getStyle(
            AppTextStyle.bodyNormal,
            modifier: (base) => base.copyWith(
              fontWeight: FontWeight.bold,
              letterSpacing: 0.3.sp,
            ),
          ),
        ),
        SizedBox(height: 2.h),
        Text(
          'This will help us narrow down the set of topics to the duration of the course.',
          style: AppTextStyles.getStyle(
            AppTextStyle.overline,
            modifier: (base) => base.copyWith(
              // fontWeight: FontWeight.bold,
              letterSpacing: 0.3.sp,
            ),
          ),
        ),
        SizedBox(height: 24.h),
        AppTextFormField(
          fieldTitle: 'Title'.toUpperCase(),
          fieldType: AppTextFormFieldType.filled,
          isFieldTitleSeperated: true,
        ),
        SizedBox(height: 24.h),
        AppTextFormField(
          fieldTitle: 'Description'.toUpperCase(),
          fieldType: AppTextFormFieldType.filled,
          isFieldTitleSeperated: true,
          isMultiline: true,
        ),
      ],
    );
  }
}
