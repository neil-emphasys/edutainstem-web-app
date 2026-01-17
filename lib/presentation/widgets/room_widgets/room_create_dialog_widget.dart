import 'dart:async';

import 'package:choice/choice.dart';
import 'package:edutainstem/application/auth/bloc/firebase_auth_bloc.dart';
import 'package:edutainstem/application/rooms/room_bloc/room_bloc.dart';
import 'package:edutainstem/application/rooms/room_create_bloc/room_create_bloc.dart';
import 'package:edutainstem/core/components/app_button.dart';
import 'package:edutainstem/core/components/app_easy_stepper.dart';
import 'package:edutainstem/core/components/app_step_animated_container.dart';
import 'package:edutainstem/core/components/app_text_form_field.dart';
import 'package:edutainstem/core/components/app_time_picker_dialog.dart';
import 'package:edutainstem/core/enums/difficulty_enum.dart';
import 'package:edutainstem/core/gen/assets.gen.dart';
import 'package:edutainstem/core/gen/colors.gen.dart';
import 'package:edutainstem/core/services/loader_services.dart';
import 'package:edutainstem/core/services/validator_service.dart';
import 'package:edutainstem/data/sources/remote/room_data_source_impl.dart';
import 'package:edutainstem/domain/models/assessments/assessments_model.dart';
import 'package:edutainstem/domain/models/lessons/lesson_model.dart';
import 'package:edutainstem/domain/models/rooms/room_model.dart';
import 'package:edutainstem/domain/models/steps/step_model.dart';
import 'package:edutainstem/injection.dart';
import 'package:edutainstem/presentation/widgets/room_widgets/room_code_widget.dart';
import 'package:edutainstem/presentation/widgets/room_widgets/room_main_stat_wrapper_widget.dart';
import 'package:edutainstem/styles/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:go_router/go_router.dart';

class RoomCreateDialogWidget extends StatefulWidget {
  const RoomCreateDialogWidget({this.room, super.key});

  final RoomModel? room;

  @override
  State<RoomCreateDialogWidget> createState() => _RoomCreateDialogWidgetState();
}

class _RoomCreateDialogWidgetState extends State<RoomCreateDialogWidget> {
  final blocInstance = RoomCreateBloc(it());

  final List<GlobalKey<FormState>> formKeys = [
    GlobalKey<FormState>(),
    GlobalKey<FormState>(),
    GlobalKey<FormState>(),
    GlobalKey<FormState>(),
  ];

  final titleController = TextEditingController();
  final descriptionController = TextEditingController();
  final hoursController = TextEditingController();
  final minutesController = TextEditingController();
  // List<LessonModel> lessonsSelected = [];
  LessonModel? lessonsSelected;
  List<String> tagsSelected = [];

  Widget buildStep(int currentStep, {List<LessonModel> lessons = const []}) {
    switch (currentStep) {
      case 0:
        return _FirstStepWidget(
          formKey: formKeys[currentStep],
          titleController: titleController,
          descriptionController: descriptionController,
        );
      case 1:
        return _SecondStepWidget(
          formKey: formKeys[currentStep],
          hoursController: hoursController,
          minutesController: minutesController,
        );
      case 2:
        return _ThirdStepWidget(
          formKey: formKeys[currentStep],
          lessons: lessons,
          selected: tagsSelected,
          blocInstance: blocInstance,
          onChanged: (p0) {
            tagsSelected = p0;
            setState(() {});
          },
        );
      case 3:
        return _FourthStepWidget(
          formKey: formKeys[currentStep],
          lessons: lessons,
          selected: lessonsSelected,
          blocInstance: blocInstance,
          specializedTags: tagsSelected,
          onChanged: (p0) {
            lessonsSelected = p0 ?? LessonModel.initial();
            setState(() {});
          },
        );
      default:
        return const SizedBox.shrink();
    }
  }

  int totalMinutes(int hours, int minutes) {
    return Duration(hours: hours, minutes: minutes).inMinutes;
  }

  StreamSubscription<Map<DifficultyEnum, List<PollChoiceGroup>>>? _sub;

  @override
  void initState() {
    super.initState();

    // “Tap” the stream here
    _sub = RoomDataSourceImpl()
        .watchQuizStatistics(room: widget.room ?? RoomModel.initial())
        .listen(
          (value) {
            if (!mounted) return;
            // setState(() => _latest = value);
          },
          onError: (e, st) {
            // handle/log error
          },
          cancelOnError: false,
        );

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (widget.room != null) {
        blocInstance.add(RoomCreateEvent.setRoom(widget.room!));
      } else {
        blocInstance.add(const RoomCreateEvent.setInitialData(maxStep: 4));
      }
    });
  }

  @override
  void dispose() {
    _sub?.cancel(); // IMPORTANT to avoid leaks
    super.dispose();
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
          child: BlocConsumer<RoomCreateBloc, RoomCreateState>(
            listener: (context, state) {
              state.maybeWhen(
                orElse: () {},
                loading: (loaderString) =>
                    it<LoaderServices>().show(status: loaderString),
                done: (data, lessons) {
                  it<LoaderServices>().dismiss();
                },
                closed: (data, refetch, isDifficultyView) {
                  it<LoaderServices>().dismiss();

                  return (refetch)
                      ? context.read<RoomBloc>().add(const RoomEvent.getRooms())
                      : null;
                },
                created: (data, refetch) {
                  it<LoaderServices>().dismiss();

                  return (refetch)
                      ? context.read<RoomBloc>().add(const RoomEvent.getRooms())
                      : null;
                },
              );
            },
            bloc: blocInstance,
            buildWhen: (previous, current) => current.maybeWhen(
              orElse: () => true,
              loading: (loaderString) => false,
            ),
            builder: (context, state) {
              return state.maybeWhen(
                orElse: () => const SizedBox.shrink(),
                loading: (loaderString) => const CircularProgressIndicator(),
                doneLoading: () => const _DoneLoadingStepWidget(),
                // done: () => _RoomCodeWidget(blocInstance: blocInstance),
                created: (data, refetch) =>
                    RoomCodeWidget(blocInstance: blocInstance),
                // closed: (room, refetch) => _SampleBarChartWidget(
                closed: (room, refetch, isDifficultyView) =>
                    RoomMainStatWrapperWidget(
                      blocInstance: blocInstance,
                      room: room,
                    ),
                done: (data, lessons) => Container(
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
                              StepModel(title: 'Subjects'),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 2.w),
                      Container(
                        width: 0.35.sw,
                        alignment: Alignment.centerLeft,
                        child: AppStepAnimatedContent(
                          isGoingForward:
                              data.activeStep >
                              data.previousStep, // e.g. Step 1, 2, 3 widget
                          childKey: ValueKey(data.activeStep),
                          child: buildStep(data.activeStep, lessons: lessons),
                        ),
                      ),
                      SizedBox(height: 80.h),
                      Row(
                        children: [
                          const Spacer(),
                          if (data.activeStep > 0) ...[
                            AppButton.text(
                              width: 40.w,
                              title: 'Previous',
                              textStyle: AppButton.getDefaultTextStyle.copyWith(
                                color: AppColors.gray,
                              ),
                              onPressed: () => blocInstance.add(
                                const RoomCreateEvent.previousStep(),
                              ),
                              backgroundColor: Colors.transparent,
                            ),
                            SizedBox(width: 8.w),
                          ],
                          AppButton(
                            width: 56.w,
                            title: (data.activeStep >= data.maxStep - 1)
                                ? 'Done'
                                : 'Next',
                            onPressed:
                                ((data.activeStep >= data.maxStep - 1) &&
                                    lessonsSelected == null)
                                ? null
                                : () {
                                    if (formKeys[data.activeStep].currentState
                                            ?.validate() ??
                                        false) {
                                      if ((data.activeStep >=
                                          data.maxStep - 1)) {
                                        blocInstance.add(
                                          RoomCreateEvent.setPreferredLessons(
                                            // lessons: lessonsSelected
                                            //     .map((e) => e.id ?? '')
                                            //     .toList(),
                                            lessons: [
                                              lessonsSelected?.id ?? '',
                                            ],
                                          ),
                                        );

                                        blocInstance.add(
                                          const RoomCreateEvent.createRoom(),
                                        );
                                      } else {
                                        blocInstance.add(
                                          RoomCreateEvent.nextStep(
                                            title:
                                                (titleController
                                                    .text
                                                    .isNotEmpty)
                                                ? titleController.text
                                                : null,
                                            description:
                                                descriptionController.text,
                                            duration: totalMinutes(
                                              int.tryParse(
                                                    hoursController.text,
                                                  ) ??
                                                  0,
                                              int.tryParse(
                                                    minutesController.text,
                                                  ) ??
                                                  0,
                                            ),
                                            /* preferredLessons:
                                          (lessonsSelected.isEmpty)
                                          ? lessons
                                                .map((e) => e.id ?? '')
                                                .toList()
                                          : lessonsSelected
                                                .map((e) => e.id ?? '')
                                                .toList(), */
                                            preferredLessons: [
                                              lessonsSelected?.id ?? '',
                                            ],
                                          ),
                                        );
                                      }
                                    }
                                  },
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
  const _FirstStepWidget({
    required this.formKey,
    required this.titleController,
    required this.descriptionController,
    super.key,
  });

  final GlobalKey<FormState> formKey;
  final TextEditingController titleController;
  final TextEditingController descriptionController;

  @override
  Widget build(BuildContext context) {
    final v = it<ValidatorService>();

    return Form(
      key: formKey,
      child: Column(
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
            controller: titleController,
            fieldTitle: 'Title'.toUpperCase(),
            fieldType: AppTextFormFieldType.filled,
            isFieldTitleSeparated: true,
            validator: v.compose([v.required(fieldName: 'Title')]),
          ),
          SizedBox(height: 24.h),
          AppTextFormField(
            controller: descriptionController,
            fieldTitle: 'Description'.toUpperCase(),
            fieldType: AppTextFormFieldType.filled,
            isFieldTitleSeparated: true,
            isMultiline: true,
            validator: v.compose([v.required(fieldName: 'Description')]),
          ),
        ],
      ),
    );
  }
}

class _FourthStepWidget extends StatefulWidget {
  const _FourthStepWidget({
    required this.lessons,
    required this.selected,
    required this.onChanged,
    required this.formKey,
    required this.blocInstance,
    required this.specializedTags,
    super.key,
  });

  final GlobalKey<FormState> formKey;
  final List<LessonModel> lessons;
  // final List<LessonModel> selected;
  // final void Function(List<LessonModel>?) onChanged;
  final LessonModel? selected;
  final void Function(LessonModel?) onChanged;
  final RoomCreateBloc blocInstance;
  final List<String> specializedTags;

  @override
  State<_FourthStepWidget> createState() => _FourthStepWidgetState();
}

class _FourthStepWidgetState extends State<_FourthStepWidget> {
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

  String formatMinutes(int minutes) {
    if (minutes < 60) {
      return '$minutes minutes';
    }

    final hours = minutes ~/ 60;
    final remainingMinutes = minutes % 60;

    if (remainingMinutes == 0) {
      return hours == 1 ? '1 hour' : '$hours hours';
    }

    return hours == 1
        ? '1 hour, $remainingMinutes minutes'
        : '$hours hours, $remainingMinutes minutes';
  }

  Widget openFilterDialog({
    required String title,
    // required List<LessonModel> options,
    // required List<LessonModel> selected,
    // required void Function(List<LessonModel>?) onChanged,
    required List<LessonModel> options,
    required LessonModel? selected,
    required void Function(LessonModel?) onChanged,
    bool isSingleSelection = true,
    Color selectedColor = AppColors.primary,
    required List<String> specializedTags,
  }) {
    final v = it<ValidatorService>();

    final int? duration = widget.blocInstance.state.maybeWhen(
      orElse: () => null,
      done: (data, lessons) => data.data.duration,
    );

    /* final List<String> specializedTags = context
        .read<FirebaseAuthBloc>()
        .state
        .maybeWhen(
          orElse: () => <String>[],
          authenticated: (user, userModel, signInType) =>
              userModel?.specializedTags ?? [],
        ); */

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
        FormField(
          validator: (value) {
            return null;
          },
          builder: (field) {
            return Column(
              children: [
                SizedBox(
                  height: 200.h,
                  width: 120.w,
                  child: PromptedChoice<LessonModel>.single(
                    // title: 'Category',
                    clearable: true,
                    confirmation: true,
                    searchable: false,
                    value: selected,
                    onChanged: onChanged,
                    itemCount: options.length,
                    // ✅ ENABLE GROUPING (this is the missing piece)
                    itemGroup: (i) {
                      final tags = options[i].tags; // List<String>

                      final isSpecialized = tags.any(
                        (tag) => specializedTags.contains(tag),
                      );

                      return isSpecialized ? 'Recommended' : 'Others';
                    },

                    // ✅ header for each group (A, B, C…)
                    groupHeaderBuilder: (state, group) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(16.r, 12.r, 16.r, 2.r),
                            child: Text(
                              state.toUpperCase(),
                              style: AppTextStyles.getStyle(
                                AppTextStyle.subtitle2,
                                modifier: (b) => b.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.primary,
                                  letterSpacing: 0.25.sp,
                                ),
                              ),
                            ),
                          ),
                          if (state.toUpperCase() == 'RECOMMENDED') ...[
                            Padding(
                              padding: EdgeInsets.fromLTRB(
                                16.r,
                                4.r,
                                16.r,
                                2.r,
                              ),
                              child: Text(
                                '(Based on your tag preferences)',
                                style: AppTextStyles.getStyle(
                                  AppTextStyle.overline,
                                  modifier: (b) => b.copyWith(
                                    color: AppColors.gray,
                                    letterSpacing: 0.25.sp,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ],
                      );
                    },
                    groupItemBuilder: (header, body) {
                      return Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 16.r,
                          vertical: 8.r,
                        ),
                        child: Container(
                          padding: EdgeInsets.all(12.r),
                          decoration: BoxDecoration(
                            color: Colors.white70,
                            borderRadius: BorderRadius.circular(16.r),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.05),
                                blurRadius: 6,
                                offset: const Offset(0, 3),
                              ),
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ...[
                                DefaultTextStyle.merge(
                                  style: AppTextStyles.getStyle(
                                    AppTextStyle.overline,
                                    modifier: (base) => base.copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: AppColors.primary,
                                      letterSpacing: 0.3.sp,
                                    ),
                                  ),
                                  child: header,
                                ),
                                SizedBox(height: 8.h),
                              ],
                              body, // ✅ already built list
                            ],
                          ),
                        ),
                      );
                    },

                    /* groupBuilder: (itemBuilder, itemCount) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 16.r,
                              vertical: 8.r,
                            ),
                            child: Text(
                              'Available Lessons',
                              style: AppTextStyles.getStyle(
                                AppTextStyle.subtitle1,
                                modifier: (base) => base.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.red,
                                  letterSpacing: 0.3.sp,
                                ),
                              ),
                            ),
                          ),

                          Padding(
                            padding: EdgeInsets.all(16.r),
                            child: Wrap(
                              spacing: 10,
                              runSpacing: 10,
                              children: List.generate(
                                itemCount,
                                (index) =>
                                    itemBuilder(index), // ✅ CALL the builder
                              ),
                            ),
                          ),
                        ],
                      );
                    },
 */
                    // itemSkip: (state, i) =>
                    //     !ChoiceSearch.match(options[i], state.search?.value),
                    itemBuilder: (state, i) {
                      return ChoiceChip(
                        selected: state.selected(options[i]),
                        onSelected: state.onSelected(options[i]),
                        selectedColor: AppColors.primary.shade300,
                        elevation: 2,
                        checkmarkColor: state.selected(options[i])
                            ? AppColors.white
                            : AppColors.black,
                        padding: EdgeInsets.symmetric(
                          horizontal: 1.w,
                          vertical: 12.h,
                        ),
                        label: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ChoiceText(
                              options[i].title,
                              highlight: state.search?.value,
                              style: AppTextStyles.getStyle(
                                AppTextStyle.bodySmall,
                                modifier: (base) => base.copyWith(
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 0.3.sp,
                                  color: state.selected(options[i])
                                      ? AppColors.white
                                      : AppColors.black,
                                ),
                              ),
                            ),
                            SizedBox(height: 4.h),
                            Text(
                              'Duration: ${formatMinutes(options[i].durationMinutes)}',
                              style: AppTextStyles.getStyle(
                                AppTextStyle.overline,
                                modifier: (base) => base.copyWith(
                                  // fontWeight: FontWeight.bold,
                                  fontSize: 2.3.sp,
                                  letterSpacing: 0.3.sp,
                                  color: state.selected(options[i])
                                      ? AppColors.white
                                      : AppColors.tigerEyeOrange,
                                ),
                              ),
                            ),
                            Text(
                              options[i].tags.toString(),
                              style: AppTextStyles.getStyle(
                                AppTextStyle.overline,
                                modifier: (base) => base.copyWith(
                                  // fontWeight: FontWeight.bold,
                                  fontSize: 2.3.sp,
                                  letterSpacing: 0.3.sp,
                                  color: state.selected(options[i])
                                      ? AppColors.white
                                      : AppColors.gray.shade200,
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                    listBuilder: ChoiceList.createWrapped(
                      padding: EdgeInsets.all(16.r),
                      spacing: 10,
                      runSpacing: 10,
                    ),
                    modalHeaderBuilder: ChoiceModal.createHeader(
                      elevation: 2,
                      backgroundColor: AppColors.primary.shade50,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                      automaticallyImplyLeading: false,
                      title: Text(
                        'Select $title/s',
                        style: AppTextStyles.getStyle(
                          AppTextStyle.subtitle2,
                          modifier: (base) => base.copyWith(
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0.3.sp,
                            color: AppColors.primary,
                          ),
                        ),
                      ),
                      actionsBuilder: [
                        ChoiceModal.createConfirmButton(
                          color: AppColors.primary,
                        ),
                        ChoiceModal.createSpacer(width: 10),
                      ],
                    ),
                    promptDelegate: ChoicePrompt.delegatePopupDialog(
                      constraints: const BoxConstraints(maxWidth: 600),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.r),
                      ),
                      clipBehavior: Clip.antiAlias,
                    ),
                    // anchorBuilder: ChoiceAnchor.create(),
                    anchorBuilder: (state, openModal) {
                      final asd = state.value;

                      return IntrinsicHeight(
                        child: Container(
                          padding: EdgeInsets.all(16.r),
                          decoration: BoxDecoration(
                            color: AppColors.gray.shade50,
                            borderRadius: BorderRadius.all(
                              Radius.circular(16.r),
                            ),
                          ),
                          child: Column(
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsets.symmetric(vertical: 8.h),
                                  child: SingleChildScrollView(
                                    child: Wrap(
                                      alignment: WrapAlignment.start,
                                      crossAxisAlignment:
                                          WrapCrossAlignment.start,
                                      runAlignment: WrapAlignment.start,
                                      runSpacing: 4.sp,
                                      spacing: 4.sp,
                                      children: [
                                        for (final LessonModel i in asd) ...[
                                          Chip(
                                            padding: EdgeInsets.symmetric(
                                              horizontal: 2.w,
                                              vertical: 16.h,
                                            ),
                                            label: Text(
                                              i.title,
                                              style: AppTextStyles.getStyle(
                                                AppTextStyle.overline,
                                                modifier: (base) =>
                                                    base.copyWith(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      letterSpacing: 0.3.sp,
                                                      color: AppColors.white,
                                                    ),
                                              ),
                                            ),
                                            side: BorderSide.none,
                                            shape: RoundedRectangleBorder(
                                              side: BorderSide.none,
                                              borderRadius: BorderRadius.circular(
                                                8.r,
                                              ), // Adjust this value as needed
                                            ),
                                            backgroundColor:
                                                AppColors.primary.shade300,
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
                                  title: 'Add/Remove $title',
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
                if (field.hasError)
                  Padding(
                    padding: const EdgeInsets.only(top: 4),
                    child: Text(
                      field.errorText!,
                      style: AppTextStyles.getStyle(
                        AppTextStyle.overline,
                        modifier: (base) => base.copyWith(
                          // fontWeight: FontWeight.bold,
                          letterSpacing: 0.3.sp,
                          color: AppColors.red,
                        ),
                      ),
                    ),
                  ),
              ],
            );
          },
        ),
      ],
    );
  }

  void onSubjectApply(List<LessonModel>? list) {
    /* setState(() {
      subjectSelected = List.from(list ?? []);
    }); */
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
    return Form(
      key: widget.formKey,
      child: Column(
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
            'Select the subject that you want to teach',
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
            title: 'Subjects',
            options: widget.lessons,
            selected: widget.selected,
            onChanged: widget.onChanged,
            selectedColor: AppColors.diamondBlue,
            specializedTags: widget.specializedTags,
          ),
          /* SizedBox(height: 24.h),
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
          ), */
        ],
      ),
    );
  }
}

class _SecondStepWidget extends StatefulWidget {
  const _SecondStepWidget({
    required this.hoursController,
    required this.minutesController,
    required this.formKey,
    super.key,
  });

  final GlobalKey<FormState> formKey;
  final TextEditingController hoursController;
  final TextEditingController minutesController;

  @override
  State<_SecondStepWidget> createState() => _SecondStepWidgetState();
}

class _SecondStepWidgetState extends State<_SecondStepWidget> {
  // DateTime _dateTime = DateTime.now().copyWith(hour: 0, minute: 0);
  // final TimeOfDay _time = const TimeOfDay(hour: 0, minute: 0);
  final v = it<ValidatorService>();

  void _showHourDialog() {
    showDialog(
      context: context,
      builder: (context) => AppTimePickerDialog(
        onPicked: (p0) {
          widget.hoursController.text = p0.toString();
        },
        totalCount: 12,
      ),
    );
  }

  void _showMinuteDialog() {
    showDialog(
      context: context,
      builder: (context) => AppTimePickerDialog(
        onPicked: (p0) => widget.minutesController.text = p0.toString(),
        totalCount: 180,
        interval: 15,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.formKey,
      child: Column(
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /* 
              SizedBox(
                width: 40.w,
                child: AppTextFormField(
                  controller: widget.hoursController,
                  fieldTitle: 'Hours'.toUpperCase(),
                  fieldType: AppTextFormFieldType.filled,
                  isFieldTitleSeparated: true,
                  readOnly: true,
                  onTap: _showHourDialog,
                ),
              ),
              SizedBox(width: 8.w), */
              SizedBox(
                width: 40.w,
                child: AppTextFormField(
                  controller: widget.minutesController,
                  fieldTitle: 'Minutes'.toUpperCase(),
                  fieldType: AppTextFormFieldType.filled,
                  isFieldTitleSeparated: true,
                  readOnly: true,
                  onTap: _showMinuteDialog,
                  validator: v.compose([
                    v.required(fieldName: 'Minutes'),
                    v.numberRange(min: 1, fieldName: 'Minutes'),
                  ]),
                ),
              ),
              const Spacer(),
            ],
          ),
        ],
      ),
    );
  }
}

class _ThirdStepWidget extends StatefulWidget {
  const _ThirdStepWidget({
    required this.lessons,
    required this.selected,
    required this.onChanged,
    required this.formKey,
    required this.blocInstance,
    super.key,
  });

  final GlobalKey<FormState> formKey;
  final List<LessonModel> lessons;
  final List<String> selected;
  final void Function(List<String>) onChanged;
  final RoomCreateBloc blocInstance;

  @override
  State<_ThirdStepWidget> createState() => _ThirdStepWidgetState();
}

class _ThirdStepWidgetState extends State<_ThirdStepWidget> {
  Widget openTagsDialog({
    required String title,
    required List<String> options,
    required List<String> selected,
    required void Function(List<String>) onChanged,
    bool isSingleSelection = true,
    Color selectedColor = AppColors.primary,
  }) {
    final v = it<ValidatorService>();

    final int? duration = widget.blocInstance.state.maybeWhen(
      orElse: () => null,
      done: (data, lessons) => data.data.duration,
    );

    final List<String> specializedTags = context
        .read<FirebaseAuthBloc>()
        .state
        .maybeWhen(
          orElse: () => <String>[],
          authenticated: (user, userModel, signInType) =>
              userModel?.specializedTags ?? [],
        );

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
        FormField(
          validator: (value) {
            return null;
          },
          builder: (field) {
            return Column(
              children: [
                SizedBox(
                  height: 200.h,
                  width: 120.w,
                  child: PromptedChoice<String>.multiple(
                    // title: 'Category',
                    clearable: true,
                    confirmation: true,
                    searchable: false,
                    value: selected,
                    onChanged: onChanged,
                    itemCount: options.length,
                    /* // ✅ ENABLE GROUPING (this is the missing piece)
                    itemGroup: (i) {
                      final tags = options[i].tags; // List<String>

                      final isSpecialized = tags.any(
                        (tag) => specializedTags.contains(tag),
                      );

                      return isSpecialized ? 'Recommended' : 'Others';
                    }, */

                    // ✅ header for each group (A, B, C…)
                    groupHeaderBuilder: (state, group) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(16.r, 12.r, 16.r, 2.r),
                            child: Text(
                              state.toUpperCase(),
                              style: AppTextStyles.getStyle(
                                AppTextStyle.subtitle2,
                                modifier: (b) => b.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.primary,
                                  letterSpacing: 0.25.sp,
                                ),
                              ),
                            ),
                          ),
                          if (state.toUpperCase() == 'RECOMMENDED') ...[
                            Padding(
                              padding: EdgeInsets.fromLTRB(
                                16.r,
                                4.r,
                                16.r,
                                2.r,
                              ),
                              child: Text(
                                '(Based on your tag preferences)',
                                style: AppTextStyles.getStyle(
                                  AppTextStyle.overline,
                                  modifier: (b) => b.copyWith(
                                    color: AppColors.gray,
                                    letterSpacing: 0.25.sp,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ],
                      );
                    },
                    groupItemBuilder: (header, body) {
                      return Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 16.r,
                          vertical: 8.r,
                        ),
                        child: Container(
                          padding: EdgeInsets.all(12.r),
                          decoration: BoxDecoration(
                            color: Colors.white70,
                            borderRadius: BorderRadius.circular(16.r),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.05),
                                blurRadius: 6,
                                offset: const Offset(0, 3),
                              ),
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ...[
                                DefaultTextStyle.merge(
                                  style: AppTextStyles.getStyle(
                                    AppTextStyle.overline,
                                    modifier: (base) => base.copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: AppColors.primary,
                                      letterSpacing: 0.3.sp,
                                    ),
                                  ),
                                  child: header,
                                ),
                                SizedBox(height: 8.h),
                              ],
                              body, // ✅ already built list
                            ],
                          ),
                        ),
                      );
                    },
                    itemBuilder: (state, i) {
                      return ChoiceChip(
                        selected: state.selected(options[i]),
                        onSelected: state.onSelected(options[i]),
                        selectedColor: AppColors.primary.shade300,
                        elevation: 2,
                        checkmarkColor: state.selected(options[i])
                            ? AppColors.white
                            : AppColors.black,
                        padding: EdgeInsets.symmetric(
                          horizontal: 1.w,
                          vertical: 12.h,
                        ),
                        label: ChoiceText(
                          options[i],
                          highlight: state.search?.value,
                          style: AppTextStyles.getStyle(
                            AppTextStyle.bodySmall,
                            modifier: (base) => base.copyWith(
                              fontWeight: FontWeight.bold,
                              letterSpacing: 0.3.sp,
                              color: state.selected(options[i])
                                  ? AppColors.white
                                  : AppColors.black,
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
                      elevation: 2,
                      backgroundColor: AppColors.primary.shade50,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                      automaticallyImplyLeading: false,
                      title: Text(
                        'Select $title/s',
                        style: AppTextStyles.getStyle(
                          AppTextStyle.subtitle2,
                          modifier: (base) => base.copyWith(
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0.3.sp,
                            color: AppColors.primary,
                          ),
                        ),
                      ),
                      actionsBuilder: [
                        ChoiceModal.createConfirmButton(
                          color: AppColors.primary,
                        ),
                        ChoiceModal.createSpacer(width: 10),
                      ],
                    ),
                    promptDelegate: ChoicePrompt.delegatePopupDialog(
                      constraints: const BoxConstraints(maxWidth: 600),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.r),
                      ),
                      clipBehavior: Clip.antiAlias,
                    ),
                    // anchorBuilder: ChoiceAnchor.create(),
                    anchorBuilder: (state, openModal) {
                      final choicesSelected = state.value;

                      return IntrinsicHeight(
                        child: Container(
                          padding: EdgeInsets.all(16.r),
                          decoration: BoxDecoration(
                            color: AppColors.gray.shade50,
                            borderRadius: BorderRadius.all(
                              Radius.circular(16.r),
                            ),
                          ),
                          child: Column(
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsets.symmetric(vertical: 8.h),
                                  child: SingleChildScrollView(
                                    child: Wrap(
                                      alignment: WrapAlignment.start,
                                      crossAxisAlignment:
                                          WrapCrossAlignment.start,
                                      runAlignment: WrapAlignment.start,
                                      runSpacing: 4.sp,
                                      spacing: 4.sp,
                                      children: [
                                        for (final String i
                                            in choicesSelected) ...[
                                          Chip(
                                            padding: EdgeInsets.symmetric(
                                              horizontal: 2.w,
                                              vertical: 16.h,
                                            ),
                                            label: Text(
                                              i,
                                              style: AppTextStyles.getStyle(
                                                AppTextStyle.overline,
                                                modifier: (base) =>
                                                    base.copyWith(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      letterSpacing: 0.3.sp,
                                                      color: AppColors.white,
                                                    ),
                                              ),
                                            ),
                                            side: BorderSide.none,
                                            shape: RoundedRectangleBorder(
                                              side: BorderSide.none,
                                              borderRadius: BorderRadius.circular(
                                                8.r,
                                              ), // Adjust this value as needed
                                            ),
                                            backgroundColor:
                                                AppColors.primary.shade300,
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
                                  title: 'Add/Remove $title',
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
                if (field.hasError)
                  Padding(
                    padding: const EdgeInsets.only(top: 4),
                    child: Text(
                      field.errorText!,
                      style: AppTextStyles.getStyle(
                        AppTextStyle.overline,
                        modifier: (base) => base.copyWith(
                          // fontWeight: FontWeight.bold,
                          letterSpacing: 0.3.sp,
                          color: AppColors.red,
                        ),
                      ),
                    ),
                  ),
              ],
            );
          },
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.formKey,
      child: Column(
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
            'Select the lesson tag(s) that you want to focus on',
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
          openTagsDialog(
            title: 'Tags',
            options: widget.lessons.getUniqueTags(),
            selected: widget.selected,
            onChanged: widget.onChanged,
            selectedColor: AppColors.diamondBlue,
          ),
        ],
      ),
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
