import 'package:choice/choice.dart';
import 'package:edutainstem/application/lessons/lesson_upload_bloc/lesson_upload_bloc.dart';
import 'package:edutainstem/core/components/app_bar_chart.dart';
import 'package:edutainstem/core/components/app_button.dart';
import 'package:edutainstem/core/components/app_easy_stepper.dart';
import 'package:edutainstem/core/components/app_step_animated_container.dart';
import 'package:edutainstem/core/components/app_table.dart';
import 'package:edutainstem/core/components/app_text_form_field.dart';
import 'package:edutainstem/core/components/app_time_picker_dialog.dart';
import 'package:edutainstem/core/gen/assets.gen.dart';
import 'package:edutainstem/core/gen/colors.gen.dart';
import 'package:edutainstem/domain/models/assessments/assessments_model.dart';
import 'package:edutainstem/domain/models/rooms/room_model.dart';
import 'package:edutainstem/domain/models/steps/step_model.dart';
import 'package:edutainstem/styles/app_text_styles.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:go_router/go_router.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:uuid/v8.dart';

class LessonUploadDialogWidget extends StatefulWidget {
  const LessonUploadDialogWidget({super.key});

  @override
  State<LessonUploadDialogWidget> createState() =>
      _LessonUploadDialogWidgetState();
}

class _LessonUploadDialogWidgetState extends State<LessonUploadDialogWidget> {
  final blocInstance = LessonUploadBloc();

  Widget buildStep(int currentStep) {
    switch (currentStep) {
      case 0:
        return const _FirstStepWidget();
      case 1:
        return const _SecondStepWidget();
      case 2:
        return const _ThirdStepWidget();
      case 3:
        return const _FourthStepWidget();
      default:
        return const SizedBox.shrink();
    }
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      blocInstance.add(const LessonUploadEvent.setInitialData(maxStep: 4));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          elevation: 0,
          backgroundColor: Colors.white,
          child: BlocBuilder<LessonUploadBloc, LessonUploadState>(
            bloc: blocInstance,
            builder: (context, state) {
              return state.maybeWhen(
                orElse: () => const SizedBox.shrink(),
                doneLoading: () => const _DoneLoadingStepWidget(),
                done: () => _RoomCodeWidget(blocInstance: blocInstance),
                closed: () => _SampleBarChartWidget(),
                initial: (data) => Container(
                  // color: Colors.red,
                  // constraints: BoxConstraints(minHeight: 0.6.sh),
                  width: 0.5.sw,
                  padding: EdgeInsets.symmetric(
                    vertical: 16.r,
                    horizontal: 20.r,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
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
                                'Upload a new lesson',
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
                            lineLength: 10.w,
                            steps: const [
                              StepModel(title: 'Details'),
                              StepModel(title: 'Duration'),
                              StepModel(title: 'Tags'),
                              StepModel(title: 'Content'),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 2.w),
                      Container(
                        width: 0.35.sw,
                        alignment: Alignment.centerLeft,
                        child: AppStepAnimatedContent(
                          isGoingForward: data.activeStep > data.previousStep,
                          child: buildStep(
                            data.activeStep,
                          ), // e.g. Step 1, 2, 3 widget
                        ),
                      ),
                      SizedBox(height: 80.h),
                      Row(
                        children: [
                          const Spacer(),
                          if (data.activeStep > 0) ...[
                            AppButton.text(
                              width: 40.w,
                              title: 'Back',
                              onPressed: () => blocInstance.add(
                                const LessonUploadEvent.previousStep(),
                              ),
                              backgroundColor: Colors.transparent,
                            ),
                            SizedBox(width: 8.w),
                          ],
                          AppButton(
                            width: 56.w,
                            title: (data.activeStep >= 3) ? 'Done' : 'Next',
                            onPressed: () => blocInstance.add(
                              const LessonUploadEvent.nextStep(),
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
          'Step 1/4',
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
          'Can you tell us about this new lesson?',
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
          'Please provide the lesson’s title and a short description below.',
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
          isFieldTitleSeparated: true,
        ),
        SizedBox(height: 24.h),
        AppTextFormField(
          fieldTitle: 'Description'.toUpperCase(),
          fieldType: AppTextFormFieldType.filled,
          isFieldTitleSeparated: true,
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

  String? subjectSelected;
  String? topicSelected;
  String? subtopicSelected;

  Widget openFilterDialog({
    required String title,
    required List<String> options,
    required String? selected,
    required void Function(String?) onChanged,
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
          width: 80.w,
          child: PromptedChoice<String>.single(
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
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 8.r,
                          vertical: 8.r,
                        ),
                        child: AppButton(
                          wrapButtonContent: true,
                          title: 'Add/Remove ${title}s',
                          onPressed: () => openModal(),
                        ),
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

  void onSubjectApply(String? selected) {
    if (selected == null) return;
    setState(() {
      subjectSelected = selected;
    });
  }

  void onTopicApply(String? selected) {
    if (selected == null) return;
    setState(() {
      topicSelected = selected;
    });
  }

  void onSubtopicApply(String? selected) {
    if (selected == null) return;
    setState(() {
      subtopicSelected = selected;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Step 3/4',
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
          'Which subject and topic does this lesson belong to?',
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
          'Please select the subject first, then choose the related topic that best fits this lesson.',
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
        /* SizedBox(height: 24.h),
        openFilterDialog(
          title: 'Subtopic',
          options: subtopicOptions,
          selected: subtopicSelected,
          onChanged: onSubtopicApply,
          selectedColor: AppColors.navajoOrange,
        ), */
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
          'Step 2/4',
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
          'How long will this lesson take?',
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
          'Please enter the expected duration of the lesson in hours and minutes.',
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
                isFieldTitleSeparated: true,
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
                isFieldTitleSeparated: true,
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

class _FourthStepWidget extends StatefulWidget {
  const _FourthStepWidget({super.key});

  @override
  State<_FourthStepWidget> createState() => _FourthStepWidgetState();
}

class _FourthStepWidgetState extends State<_FourthStepWidget> {
  // List<LessonSlidesModel> slides = [LessonSlidesModel.initial()];
  List<ExpandableController> controllers = [
    ExpandableController(initialExpanded: true),
  ];

  void _expandAtIndex(int index) {
    for (int i = 0; i < controllers.length; i++) {
      if (i == index) {
        controllers[i].expanded = true;
      } else {
        controllers[i].expanded = false;
      }
    }
  }

  void _addSlide() {
    // slides.add(LessonSlidesModel.initial());
    controllers.add(ExpandableController());
    _expandAtIndex(controllers.length - 1);
    setState(() {});
  }

  void _removeSlide(int index) {
    // if (index < 0 || index >= slides.length) return;

    // Remove the slide and its controller
    // slides.removeAt(index);
    controllers.removeAt(index);

    // If there are still slides, expand the previous one (or first if index was 0)
    if (controllers.isNotEmpty) {
      final newIndex = (index - 1).clamp(0, controllers.length - 1);
      _expandAtIndex(newIndex);
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Step 4/4',
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
          'Please add the contents for this lesson.',
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
          'Please provide the header, subheader, and content for each slide. The slides will be displayed one by one during the lesson.',
          style: AppTextStyles.getStyle(
            AppTextStyle.overline,
            modifier: (base) => base.copyWith(
              // fontWeight: FontWeight.bold,
              letterSpacing: 0.3.sp,
            ),
          ),
        ),
        SizedBox(height: 24.h),

        /* for (final LessonSlidesModel i in slides) ...[
          Container(
            padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 6.w),
            decoration: BoxDecoration(
              color: AppColors.diamondBlue.shade50,
              borderRadius: BorderRadius.all(Radius.circular(8.r)),
            ),
            child: ExpandablePanel(
              controller: controllers[slides.indexOf(i)],
              header: Padding(
                padding: EdgeInsets.only(bottom: 8.h),
                child: Text(
                  'Slide #${slides.indexOf(i) + 1}',
                  style: AppTextStyles.getStyle(
                    AppTextStyle.subtitle2,
                    modifier: (base) => base.copyWith(
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.3.sp,
                      color: AppColors.primary,
                    ),
                  ),
                ),
              ),
              collapsed: const SizedBox.shrink(),
              expanded: Column(
                children: [
                  AppTextFormField(
                    fieldTitle: 'Header'.toUpperCase(),
                    fieldType: AppTextFormFieldType.filled,
                    isFieldTitleSeparated: true,
                  ),
                  SizedBox(height: 24.h),
                  AppTextFormField(
                    fieldTitle: 'Subheader'.toUpperCase(),
                    fieldType: AppTextFormFieldType.filled,
                    isFieldTitleSeparated: true,
                  ),
                  SizedBox(height: 24.h),
                  AppTextFormField(
                    fieldTitle: 'Content'.toUpperCase(),
                    fieldType: AppTextFormFieldType.filled,
                    isFieldTitleSeparated: true,
                    isMultiline: true,
                  ),
                ],
              ),
              theme: const ExpandableThemeData(
                headerAlignment: ExpandablePanelHeaderAlignment.center,
                iconColor: AppColors.primary,
              ),
            ),
          ),
          if (slides.last != i) SizedBox(height: 8.h),
        ], */
        SizedBox(height: 16.h),
        AppButton(
          title: 'Add Slide',
          hasIcon: true,
          icon: const Icon(Icons.add),
          buttonIconSpacing: 2.w,
          onPressed: () => _addSlide(),
        ),
      ],
    );
  }
}

class _DoneLoadingStepWidget extends StatelessWidget {
  const _DoneLoadingStepWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Container(
        // width: 0.5.sw,
        padding: const EdgeInsets.all(40),
        child: Column(
          children: [
            const SpinKitFoldingCube(color: AppColors.primary, size: 50.0),
            SizedBox(height: 40.h),
            Text(
              'Creating Room . . .',
              style: AppTextStyles.getStyle(
                AppTextStyle.bodyNormal,
                modifier: (base) => base.copyWith(
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.3.sp,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _RoomCodeWidget extends StatelessWidget {
  const _RoomCodeWidget({required this.blocInstance, super.key});

  final LessonUploadBloc blocInstance;

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.red,
      // constraints: BoxConstraints(minHeight: 0.6.sh),
      width: 0.5.sw,
      padding: EdgeInsets.symmetric(vertical: 16.r, horizontal: 20.r),
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
                    icon: Image.asset(Assets.icons.png.goBack.path, width: 4.w),
                  ),
                  SizedBox(width: 4.w),
                  Text(
                    'Join Room',
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
              Text(
                '0',
                style: AppTextStyles.getStyle(
                  AppTextStyle.bodySmall,
                  modifier: (base) => base.copyWith(
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.3.sp,
                    color: AppColors.primary,
                  ),
                ),
              ),
              Text(
                ' Students Joined',
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
          SizedBox(height: 40.h),
          SizedBox(
            width: 160.w,
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        'Join Via Code',
                        style: AppTextStyles.getStyle(
                          AppTextStyle.subtitle1,
                          modifier: (base) => base.copyWith(
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0.3.sp,
                          ),
                        ),
                      ),
                      SizedBox(height: 16.h),
                      Container(
                        width: 60.sp,
                        height: 80.sp,
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(16.r),
                        decoration: BoxDecoration(
                          color: AppColors.gray.shade50,
                          borderRadius: BorderRadius.all(Radius.circular(16.r)),
                        ),
                        child: Text(
                          '123ABC',
                          style: AppTextStyles.getStyle(
                            AppTextStyle.headline3,
                            modifier: (base) => base.copyWith(
                              fontWeight: FontWeight.bold,
                              letterSpacing: 0.3.sp,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        'Join Via QR Code',
                        style: AppTextStyles.getStyle(
                          AppTextStyle.subtitle1,
                          modifier: (base) => base.copyWith(
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0.3.sp,
                          ),
                        ),
                      ),
                      SizedBox(height: 16.h),
                      Container(
                        width: 60.sp,
                        height: 80.sp,
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(16.r),
                        decoration: BoxDecoration(
                          color: AppColors.gray.shade50,
                          borderRadius: BorderRadius.all(Radius.circular(16.r)),
                        ),
                        child: QrImageView(
                          data: const UuidV8().generate(),
                          version: QrVersions.auto,
                          size: 200.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: 40.h),
          SizedBox(
            width: 160.w,
            child: ExpandablePanel(
              header: Padding(
                padding: EdgeInsets.only(bottom: 8.h),
                child: Text(
                  'See students who joined',
                  style: AppTextStyles.getStyle(
                    AppTextStyle.bodySmall,
                    modifier: (base) => base.copyWith(
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.3.sp,
                      color: AppColors.primary,
                    ),
                  ),
                ),
              ),
              collapsed: const SizedBox.shrink(),
              expanded: const AppTable(
                columns: 2,
                data: [
                  'Ethan Carter',
                  'Sophia Ramirez',
                  'Liam Anderson',
                  'Olivia Bennett',
                  'Noah Sullivan',
                  'Ava Mitchell',
                  'Mason Torres',
                  'Isabella Clarke',
                  'Lucas Hayes',
                  'Mia Foster',
                ],
              ),
              theme: const ExpandableThemeData(
                headerAlignment: ExpandablePanelHeaderAlignment.center,
                iconColor: AppColors.primary,
              ),
            ),
          ),
          SizedBox(height: 60.h),
          AppButton(
            title: 'Close Room and Start SEE Assessment',
            backgroundColor: AppColors.red,
            onPressed: () => blocInstance.add(const LessonUploadEvent.close()),
          ),
        ],
      ),
    );
  }
}

class _SampleBarChartWidget extends StatelessWidget {
  _SampleBarChartWidget({super.key});

  final seeSamplePolls = <PollChoiceGroup>[
    // Multiple Choice
    const PollChoiceGroup(
      question:
          'You notice a classmate struggling with a task. What would you most likely do?',
      type: QuestionTypesEnum.multipleChoice,
      choices: [
        PollChoice(label: 'Offer immediate help', count: 25),
        PollChoice(label: 'Wait until they ask for help', count: 18),
        PollChoice(label: 'Inform the teacher', count: 10),
        PollChoice(label: 'Do nothing', count: 5),
      ],
    ),

    // True or False
    const PollChoiceGroup(
      question: 'It is important to listen carefully when others are speaking.',
      type: QuestionTypesEnum.trueOrFalse,
      choices: [
        PollChoice(label: 'True', count: 45),
        PollChoice(label: 'False', count: 8),
      ],
    ),

    // Likert Scale (5-point)
    const PollChoiceGroup(
      question: 'I feel confident expressing my ideas in a group discussion.',
      type: QuestionTypesEnum.likertScale,
      choices: [
        PollChoice(label: 'Strongly Disagree', count: 6),
        PollChoice(label: 'Disagree', count: 12),
        PollChoice(label: 'Neutral', count: 18),
        PollChoice(label: 'Agree', count: 24),
        PollChoice(label: 'Strongly Agree', count: 20),
      ],
    ),

    // Multiple Choice
    const PollChoiceGroup(
      question:
          'If a conflict happens between two classmates, what is the best first step?',
      type: QuestionTypesEnum.multipleChoice,
      choices: [
        PollChoice(label: 'Ignore it', count: 7),
        PollChoice(label: 'Talk calmly to both sides', count: 32),
        PollChoice(label: 'Report to the teacher immediately', count: 22),
        PollChoice(label: 'Take sides with your friend', count: 9),
      ],
    ),

    // Likert Scale
    const PollChoiceGroup(
      question: 'I try to understand how others feel before reacting.',
      type: QuestionTypesEnum.likertScale,
      choices: [
        PollChoice(label: 'Strongly Disagree', count: 5),
        PollChoice(label: 'Disagree', count: 9),
        PollChoice(label: 'Neutral', count: 15),
        PollChoice(label: 'Agree', count: 27),
        PollChoice(label: 'Strongly Agree', count: 30),
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.red,
      // constraints: BoxConstraints(minHeight: 0.6.sh),
      width: 0.5.sw,
      padding: EdgeInsets.symmetric(vertical: 16.r, horizontal: 20.r),
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
                    icon: Image.asset(Assets.icons.png.goBack.path, width: 4.w),
                  ),
                  SizedBox(width: 4.w),
                  Text(
                    'SEE Assessment Statistics',
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
            ],
          ),
          SizedBox(height: 40.h),
          PollWidget(questions: seeSamplePolls, room: RoomModel.initial()),
        ],
      ),
    );
  }
}
