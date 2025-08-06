import 'package:choice/choice.dart';
import 'package:edutainstem/application/rooms/room_create_bloc/room_create_bloc.dart';
import 'package:edutainstem/core/components/app_button.dart';
import 'package:edutainstem/core/components/app_easy_stepper.dart';
import 'package:edutainstem/core/components/app_step_animated_container.dart';
import 'package:edutainstem/core/components/app_text_form_field.dart';
import 'package:edutainstem/core/components/app_time_picker_dialog.dart';
import 'package:edutainstem/core/gen/assets.gen.dart';
import 'package:edutainstem/core/gen/colors.gen.dart';
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

    return Center(
      child: SingleChildScrollView(
        child: Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
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
                  padding: EdgeInsets.symmetric(
                    vertical: 16.r,
                    horizontal: 20.r,
                  ),
                  child: Column(
                    // shrinkWrap: true,

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
                          child: AppStepAnimatedContent(
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
                            title: (state.data.activeStep >= 2)
                                ? 'Done'
                                : 'Next',
                            onPressed: () => blocInstance.add(
                              const RoomCreateEvent.nextStep(),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
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

class _ThirdStepWidget extends StatefulWidget {
  const _ThirdStepWidget({super.key});

  @override
  State<_ThirdStepWidget> createState() => _ThirdStepWidgetState();
}

class _ThirdStepWidgetState extends State<_ThirdStepWidget> {
  List<String> subjectOptions = ['Subject 1', 'Subject 2', 'Subject 3'];
  List<String> topicOptions = ['Topic 1', 'Topic 2', 'Topic 3'];
  List<String> subtopicOptions = ['Subtopic 1', 'Subtopic 2', 'Subtopic 3'];

  List<String> subjectSelected = [
    // 'Subject 1',
    // 'Subject 2',
    // 'Subject 3',
    // 'Subject 4',
    // 'Subject 5',
    // 'Subject 6',
    // 'Subject 7',
    // 'Subject 8',
    // 'Subject 9',
    // 'Subject 10',
    // 'Subject 12',
    // 'Subject 12',
    // 'Subject 13',
    // 'Subject 14',
    // 'Subject 15',
  ];
  List<String> topicSelected = [];
  List<String> subtopicSelected = [];

  Widget openFilterDialog({
    required String title,
    required List<String> options,
    required List<String> selected,
    required void Function(List<String>?) onChanged,
    bool isSingleSelection = true,
    Color selectedColor = AppColors.primary,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          maxLines: 1,
          style: AppTextStyles.getStyle(
            AppTextStyle.subtitle2,
          ).copyWith(fontWeight: FontWeight.w300, letterSpacing: 0.5.sp),
        ),
        SizedBox(height: 8.h),
        SizedBox(
          height: 200.h,
          child: PromptedChoice<String>.multiple(
            // title: 'Category',
            clearable: true,
            confirmation: true,
            searchable: true,
            value: selected,
            onChanged: onChanged,
            itemCount: options.length,
            // itemSkip: (state, i) =>
            //     !ChoiceSearch.match(options[i], state.search?.value),
            itemBuilder: (state, i) {
              return ChoiceChip(
                selected: state.selected(options[i]),
                onSelected: state.onSelected(options[i]),
                selectedColor: AppColors.primaryAccent.shade100,
                label: ChoiceText(
                  options[i],
                  highlight: state.search?.value,
                  style: AppTextStyles.getStyle(
                    AppTextStyle.overline,
                    modifier: (base) => base.copyWith(
                      // fontWeight: FontWeight.bold,
                      letterSpacing: 0.3.sp,
                    ),
                  ),
                ),
              );
            },
            listBuilder: ChoiceList.createWrapped(
              padding: EdgeInsets.all(16.r),
              spacing: 10,
              runSpacing: 10,
            ),
            modalHeaderBuilder: ChoiceModal.createHeader(
              automaticallyImplyLeading: false,
              title: Text(
                'Select $title/s',
                style: AppTextStyles.getStyle(
                  AppTextStyle.subtitle2,
                  modifier: (base) => base.copyWith(
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.3.sp,
                  ),
                ),
              ),
              actionsBuilder: [
                ChoiceModal.createConfirmButton(),
                ChoiceModal.createSpacer(width: 10),
              ],
            ),
            promptDelegate: ChoicePrompt.delegatePopupDialog(
              constraints: const BoxConstraints(maxWidth: 400),
            ),
            // anchorBuilder: ChoiceAnchor.create(),
            anchorBuilder: (state, openModal) {
              final asd = state.value;

              return IntrinsicHeight(
                child: Container(
                  padding: EdgeInsets.all(16.r),
                  decoration: BoxDecoration(
                    color: AppColors.gray.shade50,
                    borderRadius: BorderRadius.all(Radius.circular(16.r)),
                  ),
                  child: Column(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 8.h),
                          child: SingleChildScrollView(
                            child: Wrap(
                              alignment: WrapAlignment.start,
                              crossAxisAlignment: WrapCrossAlignment.start,
                              runAlignment: WrapAlignment.start,
                              runSpacing: 4.sp,
                              spacing: 4.sp,
                              children: [
                                for (final String i in asd) ...[
                                  Chip(
                                    label: Text(
                                      i,
                                      style: AppTextStyles.getStyle(
                                        AppTextStyle.overline,
                                        modifier: (base) => base.copyWith(
                                          // fontWeight: FontWeight.bold,
                                          letterSpacing: 0.3.sp,
                                        ),
                                      ),
                                    ),
                                    side: BorderSide.none,
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide.none,
                                      borderRadius: BorderRadius.circular(
                                        16.r,
                                      ), // Adjust this value as needed
                                    ),
                                    backgroundColor: selectedColor,
                                  ),
                                ],
                              ],
                            ),
                          ),
                        ),
                      ),
                      AppButton(
                        title: 'Add/Remove ${title}s',
                        onPressed: () => openModal(),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  void onSubjectApply(List<String>? list) {
    setState(() {
      subjectSelected = List.from(list ?? []);
    });
  }

  void onTopicApply(List<String>? list) {
    setState(() {
      topicSelected = List.from(list ?? []);
    });
  }

  void onSubtopicApply(List<String>? list) {
    setState(() {
      subtopicSelected = List.from(list ?? []);
    });
  }

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
        openFilterDialog(
          title: 'Subject',
          options: subjectOptions,
          selected: subjectSelected,
          onChanged: onSubjectApply,
          selectedColor: AppColors.diamondBlue,
        ),
        SizedBox(height: 24.h),
        openFilterDialog(
          title: 'Topic',
          options: topicOptions,
          selected: topicSelected,
          onChanged: onTopicApply,
          selectedColor: AppColors.shampooPink,
        ),
        SizedBox(height: 24.h),
        openFilterDialog(
          title: 'Subtopic',
          options: subtopicOptions,
          selected: subtopicSelected,
          onChanged: onSubtopicApply,
          selectedColor: AppColors.navajoOrange,
        ),
      ],
    );
  }
}

class _SecondStepWidget extends StatefulWidget {
  const _SecondStepWidget({super.key});

  @override
  State<_SecondStepWidget> createState() => _SecondStepWidgetState();
}

class _SecondStepWidgetState extends State<_SecondStepWidget> {
  // DateTime _dateTime = DateTime.now().copyWith(hour: 0, minute: 0);
  final TimeOfDay _time = const TimeOfDay(hour: 0, minute: 0);

  void _showHourDialog() {
    showDialog(
      context: context,
      builder: (context) =>
          AppTimePickerDialog(onPicked: (p0) {}, totalCount: 12),
    );
  }

  void _showMinuteDialog() {
    showDialog(
      context: context,
      builder: (context) =>
          AppTimePickerDialog(onPicked: (p0) {}, totalCount: 60, interval: 5),
    );
  }

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
        Row(
          children: [
            SizedBox(
              width: 40.w,
              child: AppTextFormField(
                fieldTitle: 'Hours'.toUpperCase(),
                fieldType: AppTextFormFieldType.filled,
                isFieldTitleSeperated: true,
                readOnly: true,
                onTap: _showHourDialog,
              ),
            ),
            SizedBox(width: 8.w),
            SizedBox(
              width: 40.w,
              child: AppTextFormField(
                fieldTitle: 'Minutes'.toUpperCase(),
                fieldType: AppTextFormFieldType.filled,
                isFieldTitleSeperated: true,
                readOnly: true,
                onTap: _showMinuteDialog,
              ),
            ),
            const Spacer(),
          ],
        ),
      ],
    );
  }
}
